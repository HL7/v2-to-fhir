package org.hl7.v2tofhir;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

public class MessageConverter extends ConverterImpl<MessageInput> implements Converter {

    public MessageConverter(File f) throws IOException {
        super(MessageInput.class);
        load(f);
    }

    public void setNames() {
        MessageInput bean = super.getFirstMappedBean();
        if (bean == null) return;

        source = StringUtils.substringBefore(bean.v2Code.replace("[", "."), ".");
        sourceName = source;
        target = "Bundle";
        targetName = target;
    }

    @Override
    protected void writeIntro(List<MessageInput> beans, PrintWriter w) {
        w.println("<table class='grid'><thead>");
        w.print("<tr><th colspan='6'>HL7 v2</th><th colspan='3'>Condition (IF True, args)</th>");
        w.println("<th colspan='3'>HL7 FHIR</th><th rowspan='2' title='Comments about the mapping'>Comments</th></tr>");
        w.print("<tr>");
        String heads[] = {
            "Sort Order", "Identifier", "Syntax", "Name", "Cardinality - Min", "Cardinality - Max",
            "Computable ANTLR", "Computable FHIRPath", "Narrative",
            "Primary Target", "Segment Map", "References"
        };

        String titles[] = {
            "Rows are listed in sequence of how they appear in the v2 standard. "
            + "The first column, Sort Order, provides a sort order that can re-create "
            + "the original v2 standard sequence in case one opts to re-sort/filter the rows.",
            "Contains an xml/json like path using the HL7 v2 XML approach of "
            + "[MessageStructure].[GroupName or CHOICE].[SegmentName] where there may be multiple Group Names in play.",
            "Contains the first column of the Message Structure Table in the base standard.",
            "The formal name of the segment or group.",
            "The min cardinality expressed numerically.",
            "The max cardinality expressed numerically.",
            "Condition in an easy to read syntax (Computable ANTLR)",
            "Condition in FHIRPath Notation",
            "Condition expressed in narrative form",
            "The FHIR resource that is the main resource that the v2 segment will map to.",
            "The URL to the Segment Map that is to be used for the segment in this message structure in this location.",
            "Defines for the Primary Target resource which resource.id it needs to reference."
        };
        int i = 0;
        for (String head : heads) {
            if (head.equals("Cardinality - Max") || head.equals("Narrative")) {
                w.printf("<td style='border-right: 2px' title='%s'>%s</td>", titles[i++], head);
            } else {
                w.printf("<th title='%s'>%s</th>", titles[i++], head);
            }
        }
        w.println("</thead>");
        w.println("<tbody>");

        int count = 0;
        for (MessageInput bean: beans) {
            if (count++ < 2) {
                continue;
            }
            String cols[] = {
                bean.v2Sort, bean.v2Code, escapeHtmlString(bean.v2Message), escapeHtmlString(bean.v2Name), bean.v2Min, bean.v2Max,
                escapeHtmlString(bean.conditionANTLR), escapeHtmlString(bean.conditionfhirPath), escapeHtmlString(bean.conditionNarrative),
                makeFhirLink(bean.fhirCode), makeSegmentLink(bean.segmentMap, bean.fhirCode),
                escapeHtmlString(bean.reference), escapeHtmlString(bean.comments)
            };
            w.print("<tr>");
            for (String col: cols) {
                if (col == bean.v2Max || col == bean.conditionNarrative) {
                    w.printf("<td style='border-right: 2px'>%s</td>", col);
                } else {
                    w.printf("<td>%s</td>", col);
                }
            }
            w.println("</tr>");
        }
        w.println("</tbody>\n</table>");
    }

}
