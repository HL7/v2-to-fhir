package org.hl7.v2tofhir;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.WordUtils;


public class ConceptMapConverter extends ConverterImpl<ConceptMapInput> implements Converter {

    public ConceptMapConverter(File f) throws IOException {
        super(ConceptMapInput.class);
        load(f);
    }

    @Override
    protected void writeIntro(List<ConceptMapInput> beans, PrintWriter w) {
        w.println("<table class='grid'><thead>");
        w.print("<tr><th colspan='3' style='border-right: 2px solid black;'>HL7 v2</th>");
        w.print("<th colspan='3' style='border-right: 2px solid black;'>Condition (IF True, args)</th>");
        w.println("<th colspan='4'>HL7 FHIR</th><th>Comments</th></tr>");

        w.print("<tr><th>Code</th><th>Text</th><th>Code System</th><th>Computable ANTLR</th><th>Computable FHIRPath</th><th>Narrative</th>");
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

    public void setNames() {
        ConceptMapInput bean = super.getFirstMappedBean();
        if (bean == null) {
            target = "Unknown";
            targetName = "Unknown";
            return;
        }

        source = bean.v2CodeSystem;
        sourceName = source;
        target = bean.fhirCodeSystem;
        if (StringUtils.isBlank(target)) {
            target = "Unknown";
        }
        targetName = toFhirName(target);
    }

    private String toFhirName(String target) {
        if (target.contains("/")) {
            target = StringUtils.substringAfterLast(target, "/");
        }
        return WordUtils.capitalize(target.replace("-", " "));
    }

}
