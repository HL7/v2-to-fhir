package org.hl7.v2tofhir;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.WordUtils;


public class ConceptMapConverter extends ConverterImpl<ConceptMapInput> implements Converter {

    public ConceptMapConverter(File f, String sourceUrl) throws IOException {
        super(ConceptMapInput.class, sourceUrl);
        load(f);
    }

    @Override
    protected void writeIntro(List<ConceptMapInput> beans, PrintWriter w) {
        w.println("<table class='grid'><thead>");
        w.print("<tr><th colspan='3' style='border-right: 2px solid black;'>HL7 v2</th>");
        w.print("<th colspan='3' style='border-right: 2px solid black;'>Condition (IF True, args)</th>");
        w.println("<th colspan='4'>HL7 FHIR</th><th rowspan='2'>Comments</th></tr>");

        w.print("<tr><th>Code</th><th>Text</th><th>Code System</th><th>Computable ANTLR</th><th>Computable FHIRPath</th><th>Narrative</th>");
        w.println("<th>Code</th><th>Proposed Extension</th><th>Display</th><th>Code System</th></tr></thead>");

        w.println("<tbody>");

        int count = 0;
        for (ConceptMapInput bean: beans) {
            if (count++ < 2) {
                continue;
            }
            String cols[] = {
                escapeHtmlString(bean.v2Code), escapeHtmlString(bean.v2Text), escapeHtmlString(bean.v2CodeSystem),
                escapeHtmlString(bean.conditionANTLR), escapeHtmlString(bean.conditionfhirPath), escapeHtmlString(bean.conditionNarrative),
                escapeHtmlString(bean.fhirCode), escapeHtmlString(bean.fhirExtension), escapeHtmlString(bean.fhirDisplay),
                makeFhirLink(bean.fhirCodeSystem, count),
                escapeHtmlString(bean.comments)
            };
            w.print("<tr>");
            for (String col: cols) {
                if (col == bean.v2CodeSystem || col == bean.conditionNarrative) {
                    w.printf("<td style='border-right: 2px'>%s</td>", col);
                } else {
                    w.printf("<td>%s</td>", col);
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
        String v2TermPrefix = "http://terminology.hl7.org/CodeSystem/v2-";
        if (source.startsWith(v2TermPrefix)) {
            sourceName = "HL7" + source.substring(v2TermPrefix.length());
        } else {
            sourceName = source;
        }
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
