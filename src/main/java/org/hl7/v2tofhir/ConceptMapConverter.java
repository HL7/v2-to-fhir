package org.hl7.v2tofhir;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

public class ConceptMapConverter extends ConverterImpl<ConceptMapInput> implements Converter {

    public ConceptMapConverter(File f) throws IOException {
        super(ConceptMapInput.class);
        load(f);
    }

    @Override
    protected Row convert(ConceptMapInput input) {
        Row r = new Row();
        if (StringUtils.isBlank(input.v2CodeSystem)) {
            return null;
        }
        r.condition = String.format("%s // %s%n",
            StringUtils.defaultString(input.conditionANTLR),
            StringUtils.defaultString(input.conditionfhirPath));
        r.conditionDisplay = StringUtils.defaultString(input.conditionNarrative);
        r.dataType = null;
        r.targetCode = input.fhirCode;
        r.targetDisplay = input.fhirDisplay;
        r.sourceCode = input.v2Code;
        r.sourceDisplay = input.v2Text;
        r.comments = input.comments;
        return r;
    }

    @Override
    protected String getSource(ConceptMapInput row) {
        if (row.v2CodeSystem.contains("://")) {
            return row.v2CodeSystem;
        }
        return "http://terminology.hl7.org/CodeSystem/v2-" + row.v2CodeSystem.substring(3);
    }

    protected String getSourceName(ConceptMapInput row) {
        return StringUtils.substringAfterLast(getSource(row), "/");
    }

    @Override
    protected String getTarget(ConceptMapInput row) {
        return row.fhirCodeSystem;
    }

    @Override
    protected String getTargetName(ConceptMapInput bean) {
        return parts[1];
    }

    @Override
    protected void writeIntro(List<ConceptMapInput> beans, PrintWriter w) {
        w.println("<table class='grid'><thead>");
        w.print("<tr><th colspan='3' style='border-right: 2px solid black;'>HL7 v2</th>");
        w.print("<th colspan='3' style='border-right: 2px solid black;'>Condition (IF True, args)</th>");
        w.println("<th colspan='4'>HL7 FHIR</th><th>Comments</th></tr>");

        w.print("<tr><th>Code</th><th>Text</th><th>Computable ANTLR</th><th>Computable FHIRPath</th>");
        w.println("<th>Code</th><th>&#xA0;</th><th>Display</th><th>Code System</th><th>&#xA0;</th></tr></thead>");

        w.println("<tbody>");

        int count = 0;
        for (ConceptMapInput bean: beans) {
            if (count++ < 2) {
                continue;
            }
            String cols[] = {
                bean.v2Code, bean.v2Text, bean.v2CodeSystem,
                bean.conditionANTLR, bean.conditionfhirPath, bean.conditionNarrative,
                bean.fhirCode, bean.fhirExtension, bean.fhirDisplay, bean.fhirCodeSystem,
                bean.comments
            };
            w.print("<tr>");
            for (String col: cols) {
                if (col == bean.v2CodeSystem || col == bean.conditionNarrative) {
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
