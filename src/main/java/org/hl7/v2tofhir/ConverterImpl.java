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
    private String parts[] = null;
    private String type;
    private List<T> beans;
    private Class<T> classType;

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
    public String getName() {
        return parts[1];
    }

    @Override
    public String getType() {
        return type;
    }

    @Override
    public void load(File f) throws IOException {
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
    }

    @Override
    public void store(File f) throws IOException {
        // TODO Auto-generated method stub
        if (f.isDirectory()) {
            String output = String.format("%s %s.fsh", type, parts[1]);
            f = new File(f, output);
        }

        try (FileWriter w = new FileWriter(f);
             PrintWriter pw = new PrintWriter(w);
            ) {
            pw.printf("Instance: %s%s%n", type, parts[1].replaceAll(" ", ""));
            pw.println("InstanceOf: ConceptMap");
            pw.printf("Title: %s %s Map%n", type, parts[1]);
            pw.printf("* url = \"%s\"%n", "http://hl7.org/fhir/v2-tofhir");
            pw.println("* version = 1.0");
            pw.printf("* name = \"%s_%s_Map\"%n", type, parts[1]);
            pw.println("* status = #active");
            pw.println("* experimental = true");
            pw.printf("* date = \"%tF\"%n", new Date());
            pw.println("* publisher = \"HL7 International, Inc\"");
            pw.println("* contact.telecom.system = #email");
            pw.println("* contact.telecom.value = \"v2-to-fhir@lists.hl7.org\"");
            pw.println("* copyright = \"Copyright (c) 2020, HL7 International, Inc., All Rights Reserved.\"");
            int count = 0;
            int mappedRows = 0;
            int unmappedRows = 0;
            boolean source = false;
            for (T bean: beans) {
                // skip the first two lines
                if (count++ < 2) {
                    continue;
                }
                // Convert the line
                Row row = convert(bean);

                // If there is no conversion, go to the next line
                if (row == null) {
                    continue;
                } else if (StringUtils.isEmpty(row.targetCode)) {
                    pw.printf("* group.unmapped[%d].code = \"fixed\"%n", unmappedRows);
                    pw.printf("* group.unmapped[%d].code = \"%s\"%n", unmappedRows, row.sourceCode);
                    pw.printf("* group.unmapped[%d].display = \"%s\"%n", unmappedRows, row.sourceDisplay);
                    ++unmappedRows;
                }

                if (!source) {
                    pw.printf("* sourceUri = \"%s\"%n", getSource(bean));
                    pw.printf("* targetUri = \"%s\"%n", getTarget(bean));
                    pw.printf("* id = \"conceptmap-%s-to-%s\"%n", getDestination(bean), parts[1].toLowerCase());

                    source = true;
                }
                pw.printf("* group.element[%d].code = \"%s\"%n", mappedRows, row.sourceCode);
                if (!StringUtils.isEmpty(row.sourceDisplay)) {
                    pw.printf("* group.element[%d].display = \"%s\"%n", mappedRows, row.sourceDisplay);
                }


                pw.printf("* group.element[%d].target.code = \"%s\"%n", mappedRows, row.targetCode);

                if (!StringUtils.isEmpty(row.comments)) {
                    pw.printf("* group.element[%d].target.comment = \"%s\"%n", mappedRows, row.comments);
                }

                pw.printf("* group.element[%d].equivalence = \"%s\"%n", mappedRows, "equivalent");

                if (!StringUtils.isEmpty(row.targetCode)) {
                    pw.printf("* group.element[%d].target.display = \"%s\"%n", mappedRows, row.targetDisplay);
                }

                int dependencies = 0;
                if (!StringUtils.isEmpty(row.mapping)) {
                    pw.printf("* group.element[%d].target.dependsOn[%d].property = \"%s\"%n", mappedRows, dependencies, "ConceptMap");
                    pw.printf("* group.element[%d].target.dependsOn[%d].value = \"%s\"%n", mappedRows, dependencies, row.mapping);
                    dependencies++;
                }
                ++mappedRows;
            }
        } catch (IOException ioex) {

        }
    }

    protected abstract String getDestination(T bean);
    protected abstract String getSource(T bean);
    protected abstract String getTarget(T bean);

    @Override
    public void store() throws IOException {
        store(new File("."));
    }

    protected abstract Row convert(T input);

}
