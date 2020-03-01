package org.hl7.v2tofhir;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hl7.v2tofhir.ConverterImpl.Row;

public class SegmentConverter extends ConverterImpl<SegmentInput> implements Converter {

    public SegmentConverter(File f) throws IOException {
        super(SegmentInput.class);
        load(f);
    }

    @Override
    protected Row convert(SegmentInput input) {
        Row r = new Row();
        r.condition = String.format("%s // %s%n",
            StringUtils.defaultString(input.conditionANTLR),
            StringUtils.defaultString(input.conditionfhirPath));
        r.conditionDisplay = StringUtils.defaultString(input.conditionNarrative);
        r.dataType = null;
        r.targetCode = input.fhirCode;
        if (StringUtils.isBlank(input.fhirCode) || r.targetCode.toLowerCase().contains("n/a")) {
            // Discard non-applicable mappings
            return null;
        }
        r.targetDisplay = null;
        r.sourceCode = input.v2Code;
        r.sourceDisplay = input.v2Name;
        r.comments = input.comments;
        return r;
    }

    @Override
    protected String getSource(SegmentInput bean) {
        return "https://www.hl7.org/v2";
    }

    @Override
    protected String getTarget(SegmentInput bean) {
        return "https://www.hl7.org/fhir";
    }

    public String getSourceName(SegmentInput bean) {
        return parts[2].replace("[","!").replace("]", "");
    }

    @Override
    protected String getTargetName(SegmentInput bean) {
        return StringUtils.substringBefore(bean.fhirCode, ".");
    }

    @Override
    protected void writeIntro(List<SegmentInput> beans, PrintWriter w) {
        w.println("<table class='grid'><thead>");
        w.print("<tr><th colspan='6'>HL7 v2</th><th colspan='3'>Condition (IF True, args)</th>");
        w.println("<th colspan='7'>HL7 FHIR</th><th>&#xA0;</th><th>Comments</th></tr>");
        w.print("<tr>");
        String heads[] = {
            "Sort Order", "Identifier", "Name", "Data Type", "Cardinality - Min", "Cardinality - Max",
            "Computable ANTLR", "Computable FHIRPath", "Narrative",
            "FHIR Attribute", "Data Type", "Cardinality - Min", "Cardinality - Max",
            "Data Type Mapping"
        };
        for (String head : heads) {
            if (head.equals("Cardinality - Max") || head.equals("Narrative")) {
                w.printf("<td style='border-right: 2px'>%s</td>", head);
            } else {
                w.printf("<th>%s</th>", head);
            }
        }
        w.println("<th colspan='3'>Vocabulary Mapping (IS, ID, CE, CNE, CWE)</th></tr></thead>");
        w.println("<tbody>");

        int count = 0;
        for (SegmentInput bean: beans) {
            if (count++ < 2) {
                continue;
            }
            String cols[] = {
                bean.v2Sort, bean.v2Code, bean.v2Name, bean.v2Datatype, bean.v2Min, bean.v2Max,
                bean.conditionANTLR, bean.conditionfhirPath, bean.conditionNarrative,
                bean.fhirCode, bean.fhirExtension, bean.fhirDatatype, bean.fhirMin, bean.fhirMax,
                bean.v2DataTypeMap, bean.fhirVocab, bean.fhirEmpty, bean.comments
            };
            w.print("<tr>");
            for (String col: cols) {
                if (col == bean.v2Max || col == bean.conditionNarrative) {
                    w.printf("<td style='border-right: 2px'>%s</td>", escapeHtmlString(col));
                } else {
                    w.printf("<td>%s</td>", escapeHtmlString(col));
                }
            }
            w.println("</tr>");
        }
        w.println("</tbody></table>");
    }
}
