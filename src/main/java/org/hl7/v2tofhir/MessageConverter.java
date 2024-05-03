package org.hl7.v2tofhir;
/*
 * Copyright 2020 Audiacious Inquiry, Inc.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy
 * of the License at http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

public class MessageConverter extends ConverterImpl<MessageInput> implements Converter {

    public MessageConverter(File f, String sourceUrl) throws IOException {
        super(MessageInput.class, sourceUrl);
        load(f);
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
                w.printf("<td style='border-right: 2px' title='%s'>%s</td>", escapeHtmlAttr(titles[i++]), head);
            } else {
                w.printf("<th title='%s'>%s</th>", escapeHtmlAttr(titles[i++]), head);
            }
        }
        w.println("</tr></thead>");
        w.println("<tbody>");

        int count = 0;
        for (MessageInput bean: beans) {
            if (count++ < 2) {
                continue;
            }
            String cols[] = {
                bean.v2Sort, bean.v2Code, escapeHtmlString(bean.v2Message), escapeHtmlString(bean.v2Name), bean.v2Min, bean.v2Max,
                escapeHtmlString(bean.conditionANTLR), escapeHtmlString(bean.conditionfhirPath), escapeHtmlString(bean.conditionNarrative),
                makeFhirLink(bean.fhirCode, count), makeSegmentLink(bean.segmentMap, bean.fhirCode, count),
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
