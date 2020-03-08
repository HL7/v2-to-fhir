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

public abstract class ConverterImpl<T extends Convertible> implements Converter {
    private String filename = null;
    File theSource;
    protected String parts[] = null;
    private String type;
    private List<T> beans;
    private Class<T> classType;
    protected String source, sourceName, target, targetName;

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
        if (filename.contains("Message")) {
            type = "Message";
            source = sourceName = parts[3];
            target = targetName = "Bundle";
        } else if (filename.contains("Segment") &&
                  !filename.contains("Segment Action Code")  // Hack to fix the one file using the word segment that is vocab
            ) {
            type = "Segment";
            sourceName = StringUtils.substringBefore(parts[2], "[");
            targetName = parts[2];
        } else if (filename.contains("Data Type")) {
            type = "Datatype";
            sourceName = StringUtils.substringBefore(parts[2], "[");
            targetName = parts[2];
        } else if (filename.contains("Concept Map")) {
            type = "Table";
            sourceName = parts[1];
        } else {
        }

        try (FileReader r = new FileReader(f)) {
            beans = new CsvToBeanBuilder<T>(r).withType(classType).build().parse();
        }

        setNames();
    }

    public void setNames() {
        T first = getFirstMappedBean();

        if (first == null) {
            source = cleanId(sourceName);
            target = "Unknown";
            if (targetName == null) {
                targetName = "Unknown";
            }
        } else {
            Row r = first.convert();
            source = r.sourceCode;
            sourceName = r.sourceDisplay;
            target = r.targetCode;
            targetName = r.targetDisplay;
        }
    }

    protected final T getFirstMappedBean() {
        int count = 0;
        for (T bean : beans) {
            // skip the first two lines
            if (count++ < 2) {
                continue;
            }
            Row row = bean.convert();
            // If there is no conversion, go to the next line
            if (row == null) {
                continue;
            }
            return bean;
        }
        return null;
    }

    public String getSourceFileName() {
        return theSource.getPath();
    }

    public String getFishFileName() {
        return String.format("%s %s to %s.fsh", type, sourceName, targetName);
    }

    public String getId() {
        return cleanId(String.format("%s-%s-to-%s", type.toLowerCase(), sourceName, targetName));
    }

    public String getMdFileName(String prefix, String suffix) {
        return prefix + "ConceptMap-" + getId() + suffix + ".md";
    }

    public String getHtmlFileName() {
        return "ConceptMap-" + getId() + ".html";
    }

    @Override
    public void store(File loc) throws IOException {
        File f;
        File intro;
        File notes;
        String id = getId();
        String output = getFishFileName();
        if (loc.isDirectory()) {
            f = new File(loc, output);
        } else {
            f = loc;
        }
        intro = new File(getMdFileName("input/includes/", "-intro"));
        if (!intro.getParentFile().exists()) {
            intro.getParentFile().mkdirs();
        }
        notes = new File(getMdFileName("input/includes/", "-notes"));
        if (!notes.getParentFile().exists()) {
            notes.getParentFile().mkdirs();
        }

        try (PrintWriter pw = new PrintWriter(new FileWriter(f));
            PrintWriter introWriter = new PrintWriter(new FileWriter(intro));
            PrintWriter notesWriter = new PrintWriter(new FileWriter(notes));) {
            pw.printf("Instance: %s%sto%s%n", type, sourceName.replaceAll(" ", ""), targetName.replaceAll(" ", ""));
            pw.println("InstanceOf: ConceptMap");
            pw.printf("Title: \"%s %s to %s Map\"%n", type, sourceName, targetName);
            pw.printf("* description = \"This ConceptMap represents the mapping from the HL7 V2 %s to the FHIR %s.\"%n",
                getV2Description(), getFHIRDescription());
            pw.printf("* id = \"%s\"%n", id);
            pw.printf("* url = \"http://hl7.org/fhir/v2-tofhir/%s\"%n", id);
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
                Row row = bean.convert();

                // If there is no conversion, go to the next line
                if (row == null) {
                    continue;
                }

                pw.printf("* group.element[%d].code = #%s%n", mappedRows, row.sourceCode.trim());
                if (!StringUtils.isEmpty(row.sourceDisplay)) {
                    pw.printf("* group.element[%d].display = \"%s\"%n", mappedRows, escapeFshString(row.sourceDisplay));
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

                    pw.printf("* group.element[%d].target.code = #%s%n", mappedRows, targetCode.trim());
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
                            escapeFshString(row.mapping));
                        dependencies++;
                    }

                    if (!StringUtils.isEmpty(row.condition) || !StringUtils.isEmpty(row.conditionDisplay)) {
                        pw.printf("* group.element[%d].target.dependsOn[%d].property = \"%s\"%n",
                            mappedRows, dependencies, "value");
                        if (!StringUtils.isBlank(row.condition)) {
                            pw.printf("* group.element[%d].target.dependsOn[%d].value = \"%s\"%n", mappedRows, dependencies,
                                escapeFshString(row.condition));
                        }
                        if (!StringUtils.isBlank(row.conditionDisplay)) {
                            pw.printf("* group.element[%d].target.dependsOn[%d].value = \"%s\"%n", mappedRows, dependencies,
                                escapeFshString(row.conditionDisplay));
                        }
                        dependencies++;
                    }
                }
                ++mappedRows;
            }

            if (introWriter != null) {
                introWriter.printf(
                    "%nThis ConceptMap represents the mapping from the HL7 V2 %s to the FHIR %s. "
                        + "See also the <a href='https://github.com/HL7/v2-to-fhir/blob/master/tank/%s'>FHIR Shorthand</a> or "
                        + "the <a href='https://github.com/HL7/v2-to-fhir/blob/master/mappings/%s'>CSV Source</a>.%n",
                        getV2Description(),
                        getFHIRDescription(),
                        output, StringUtils.substringAfterLast(theSource.getPath().replace("\\","/"), "mappings/"));

                writeIntro(beans, introWriter);
            }
            if (notesWriter != null) {
                // TBD: Address width and style hacks below
                notesWriter.printf("<div id=\"disqus_thread\" style=\"display: block; width: 640px\"></div>%n" +
                    "<script>%n" +
                    "var disqus_config = function () {%n" +
                    "this.page.url = \"http://build.fhir.org.hl7/v2-to-fhir/branches/master/%s\";  // Replace PAGE_URL with your page's canonical URL variable%n" +
                    "this.page.identifier = \"%s\"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable%n" +
                    "};%n" +
                    "(function() { // DON'T EDIT BELOW THIS LINE%n" +
                    "var d = document, s = d.createElement('script');%n" +
                    "s.src = 'https://v2-to-fhir.disqus.com/embed.js';%n" +
                    "s.setAttribute('data-timestamp', +new Date());%n" +
                    "(d.head || d.body).appendChild(s);%n" +
                    "})();%n" +
                    "</script>%n" +
                    "<noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>%n",
                    getHtmlFileName(), id
                    );
            }
        } catch (IOException ioex) {
            ioex.printStackTrace();
        }
    }

    private Object getFHIRDescription() {
        switch (type) {
        case "Table":
            return String.format("%s Value Set", getTargetName());
        case "Message":
            return String.format("Message Bundle", getTargetName());
        case "Segment":
            return String.format("%s Resource", getTargetName());
        case "Data Type":
            return String.format("%s", getTargetName());
        }
        return null;
    }

    private Object getV2Description() {
        switch (type) {
        case "Table":
            return String.format("Table %s", getSourceName());
        case "Message":
            return String.format("%s Message", getSourceName());
        case "Segment":
            return String.format("%s Segment", getSourceName());
        case "Data Type":
            return String.format("%s Data Type", getSourceName());
        }
        return null;
    }

    protected String escapeFshString(String comments) {
        String value = comments.replace("\r", "");
        // If there is a newline, use Sushi """ syntax
        if (value.contains("\n")) {
            value = "\"\"\n" + value.trim() + "\\\n\"\"";
        } else {
            // Only do quote escaping if not in a multiline string.
            value = value.replace("\"", "\\\"");
        }
        return value.trim();
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

}
