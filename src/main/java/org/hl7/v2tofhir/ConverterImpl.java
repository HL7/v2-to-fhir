package org.hl7.v2tofhir;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.opencsv.bean.CsvToBeanBuilder;

public abstract class ConverterImpl<T> implements Converter {
    private String filename = null;
    File theSource;
    protected String parts[] = null;
    private String type;
    private List<T> beans;
    private Class<T> classType;
    private String source, sourceName, target, targetName;

    public static class Row {
        String sourceCode;
        String sourceDisplay;
        String targetCode;
        String targetDisplay;
        String condition;
        String conditionDisplay;
        String dataType;
        String mapping;
        String comments;
    }

    public ConverterImpl(Class<T> classType) {
        this.classType = classType;
    }

    @Override
    public String getType() {
        return type;
    }

    @Override
    public void load(File f) throws IOException {
        theSource = f;
        filename = f.getName();
        parts = filename.split("\\s*[\\._\\-]\\s*");
        if (parts[0].contains("Concept Map")) {
            type = "ConceptMap";
        } else if (parts[0].contains("Message")) {
            type = "Message";
        } else if (parts[0].contains("Segment")) {
            type = "Segment";
        } else {
        }

        try (FileReader r = new FileReader(f)) {
            beans = new CsvToBeanBuilder<T>(r).withType(classType).build().parse();
        }

        T first = getFirstMappedBean();

        if (first == null) {
            source = cleanId(filename);
            sourceName = filename;
            target = "Unknown";
            targetName = "Unknown";
        } else {
            source = getSource(first);
            sourceName = getSourceName(first);
            target = getTarget(first);
            targetName = getTargetName(first);
        }
    }

    private T getFirstMappedBean() {
        int count = 0;
        for (T bean : beans) {
            // skip the first two lines
            if (count++ < 2) {
                continue;
            }
            Row row = convert(bean);
            // If there is no conversion, go to the next line
            if (row == null) {
                continue;
            }
            return bean;
        }
        return null;
    }

    @Override
    public void store(File loc) throws IOException {
        File f;
        File intro;
        String id = cleanId(String.format("%s-%s-to-%s", type.toLowerCase(), sourceName, targetName));
        String output = String.format("%s %s to %s.fsh", type, sourceName, targetName);
        if (loc.isDirectory()) {
            f = new File(loc, output);
        } else {
            f = loc;
        }
        intro = new File("input/includes/ConceptMap-" + id + "-intro.md");
        if (!intro.getParentFile().exists()) {
            intro.getParentFile().mkdirs();
        }

        try (PrintWriter pw = new PrintWriter(new FileWriter(f));
            PrintWriter introWriter = new PrintWriter(new FileWriter(intro));) {
            pw.printf("Instance: %s%sto%s%n", type, sourceName.replaceAll(" ", ""), targetName.replaceAll(" ", ""));
            pw.println("InstanceOf: ConceptMap");
            pw.printf("Title: \"%s %s to %s Map\"%n", type, sourceName, targetName);
            pw.printf("* description = \"This ConceptMap represents the mapping from the HL7 V2 %s to the FHIR %s.\"%n",
                getV2Description(), getFHIRDescription());
            pw.printf("* id = \"%s\"%n", id);
            pw.printf("* url = \"%s\"%n", "http://hl7.org/fhir/v2-tofhir");
            pw.println("* version = \"1.0\"");
            pw.printf("* name = \"%s_%s_Map\"%n", type, sourceName);
            pw.println("* status = #active");
            pw.println("* experimental = true");
            pw.printf("* date = \"%tF\"%n", new Date());
            pw.println("* publisher = \"HL7 International, Inc\"");
            pw.println("* contact.telecom.system = #email");
            pw.println("* contact.telecom.value = \"v2-to-fhir@lists.hl7.org\"");
            pw.println("* copyright = \"Copyright (c) 2020, HL7 International, Inc., All Rights Reserved.\"");
            pw.printf("* sourceUri = \"%s\"%n", source);
            pw.printf("* targetUri = \"%s\"%n", target);

            int count = 0;
            int mappedRows = 0;

            for (T bean : beans) {
                // skip the first two lines
                if (count++ < 2) {
                    continue;
                }
                // Convert the line
                Row row = convert(bean);

                // If there is no conversion, go to the next line
                if (row == null) {
                    continue;
                }

                pw.printf("* group.element[%d].code = #%s%n", mappedRows, row.sourceCode);
                if (!StringUtils.isEmpty(row.sourceDisplay)) {
                    pw.printf("* group.element[%d].display = \"%s\"%n", mappedRows, row.sourceDisplay);
                }

                if (!StringUtils.isEmpty(row.comments)) {
                    pw.printf("* group.element[%d].target.comment = \"%s\"%n", mappedRows,
                        escapeFshString(row.comments));
                }

                pw.printf("* group.element[%d].target.equivalence = #%s%n", mappedRows,
                    StringUtils.isEmpty(row.targetCode) ? "unmatched" : "equivalent");

                if (!StringUtils.isEmpty(row.targetCode)) {
                    String targetCode = row.targetCode.contains("=")
                        ? escapeFshString(StringUtils.substringBefore(row.targetCode, "="))
                        : row.targetCode;
                    String targetDisplay = row.targetCode.contains("=")
                        ? "= " + StringUtils.substringAfter(row.targetCode, "=")
                        : row.targetDisplay;

                    String comments = StringUtils.defaultString(row.comments);
                    if (targetCode.contains(",") || targetCode.contains(" ")) {
                        String parts[] = targetCode.split("[, ]");
                        comments = targetCode.substring(parts[0].length()) + ".  " + comments;
                        targetCode = parts[0];
                    }

                    pw.printf("* group.element[%d].target.code = #%s%n", mappedRows, targetCode);
                    if (!StringUtils.isEmpty(targetDisplay)) {
                        pw.printf("* group.element[%d].target.display = \"%s\"%n", mappedRows,
                            escapeFshString(targetDisplay));
                    }
                    if (!StringUtils.isEmpty(comments)) {
                        pw.printf("* group.element[%d].target.comment = \"%s\"%n", mappedRows,
                            escapeFshString(comments));
                    }

                    int dependencies = 0;
                    if (!StringUtils.isEmpty(row.mapping)) {
                        pw.printf("* group.element[%d].target.dependsOn[%d].property = \"%s\"%n", mappedRows,
                            dependencies, "ConceptMap");
                        pw.printf("* group.element[%d].target.dependsOn[%d].value = \"%s\"%n", mappedRows, dependencies,
                            row.mapping);
                        dependencies++;
                    }
                }
                ++mappedRows;
            }
            if (introWriter != null) {
                introWriter.printf(
                    "%nThis ConceptMap represents the mapping from the HL7 V2 %s to the FHIR %s. "
                        + "See also the <a href='https://github.com/HL7/v2-to-fhir/blob/master/tank/%s'>FHIR Shorthand</a> or "
                        + "the <a href='https://github.com/HL7/v2-to-fhir/blob/master/mappings/%s'>CSV Source</a>.\"%n",
                        getV2Description(),
                        getFHIRDescription(),
                        output, StringUtils.substringAfterLast(theSource.getPath(), "mappings/"));

                writeIntro(beans, introWriter);
            }
        } catch (IOException ioex) {
            ioex.printStackTrace();
        }
    }

    private Object getFHIRDescription() {
        switch (type) {
        case "ConceptMap":
            return String.format("%s Value Set", getTargetName());
        case "Message":
            return String.format("Message Bundle representing that message", getTargetName());
        case "Segment":
            return String.format("%s Resource representing that segment", getTargetName());
        }
        return null;
    }

    private Object getV2Description() {
        switch (type) {
        case "ConceptMap":
            return String.format("Table %s", getSourceName());
        case "Message":
            return String.format("%s Message", getSourceName());
        case "Segment":
            return String.format("%s Segment", getSourceName());
        }
        return null;
    }

    protected String escapeFshString(String comments) {
        return comments.replace("\"", "\\\"");
    }

    protected String escapeHtmlString(String html) {
        if (html == null) {
            return "";
        }
        return html.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;");
    }

    protected String escapeHtmlAttr(String attr) {
        return escapeHtmlString(attr).replace("'", "&apos;").replace("\"", "&quot;");
    }

    protected abstract void writeIntro(List<T> bean, PrintWriter introWriter);

    private String cleanId(String name) {
        name = name.contains("/") ? StringUtils.substringAfterLast(name, "/") : name;
        return StringUtils.truncate(StringUtils.replaceChars(name.toLowerCase(), "! _[]", "---").replaceAll("--+", "-"),
            64);
    }

    protected abstract String getSource(T bean);

    protected abstract String getSourceName(T bean);

    protected abstract String getTarget(T bean);

    protected abstract String getTargetName(T bean);

    @Override
    public String getSourceName() {
        return sourceName;
    }

    @Override
    public String getTargetName() {
        return targetName;
    }

    @Override
    public void store() throws IOException {
        store(new File("."));
    }

    protected abstract Row convert(T input);

}
