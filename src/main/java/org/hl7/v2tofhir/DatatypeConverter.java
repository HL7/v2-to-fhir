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

public class DatatypeConverter extends ConverterImpl<DatatypeInput> implements Converter {

    public DatatypeConverter(File f, String sourceUrl) throws IOException {
        super(DatatypeInput.class, sourceUrl);
        load(f);
    }

    @Override
    protected void writeIntro(List<DatatypeInput> beans, PrintWriter w) {
        w.println("<table class='grid'><thead>");
        w.print("<tr><th colspan='6'>HL7 v2</th><th colspan='3'>Condition (IF True, args)</th>");
        w.println("<th colspan='7'>HL7 FHIR</th><th rowspan='2'>Comments</th></tr>");
        w.print("<tr>");
        String heads[] = {
            "Sort Order", "Identifier", "Name", "Data Type", "Cardinality - Min", "Cardinality - Max",
            "Computable ANTLR", "Computable FHIRPath", "Narrative",
            "FHIR Attribute", "Proposed Extension", "Data Type", "Cardinality - Min", "Cardinality - Max",
            "Data Type Mapping", "Assignment", "Vocabulary"
        };
        String titles[] = {
            "Rows are listed in sequence of how they appear in the v2 standard. "
                + "The first column, Sort Order, provides a sort order that can re-create "
                + "the original v2 standard sequence in case one opts to re-sort/filter the rows.",
                "Contains the formal Data Type Name and Component Sequence according to the base standard using \".\" as the delimiter.",
                "The formal name of the field in the most current published version.",
                "The data type of the field in the most current published version if not deprecated, otherwise "
                + "the data type at the time it was deprecated and removed.",
                "The V2 min cardinality expressed numerically.",
                "The V2 max cardinality expressed numerically.",
                "Condition in an easy to read syntax (Computable ANTLR)",
                "Condition in FHIRPath Notation",
                "Condition expressed in narrative form",
                "An existing FHIR attribute in the target FHIR version.",
                "The FHIR attribute's data type in the target FHIR version.",
                "The proposed FHIR Extension.",
                "The FHIR min cardinality expressed numerically.",
                "The FHIR max cardinality expressed numerically.",
                "The URL to the Data Type Map that is to be used for the attribute in this segment.",
                "The fixed or computed value to assign.",
                "Mapping for terminology tables."
        };
        int i = 0;
        for (String head : heads) {
            if (head.equals("Cardinality - Max") || head.equals("Narrative")) {
                w.printf("<th title='%s' style='border-right: 2px'>%s</th>", escapeHtmlAttr(titles[i++]), head);
            } else {
                w.printf("<th title='%s'>%s</th>", escapeHtmlAttr(titles[i++]), head);
            }
        }
        w.println("</tr></thead>");
        w.println("<tbody>");

        int count = 0;
        for (DatatypeInput bean: beans) {
            if (count++ < 2) {
                continue;
            }
            String cols[] = {
                bean.v2Sort, escapeHtmlString(bean.v2Code), escapeHtmlString(bean.v2Name), escapeHtmlString(bean.v2Datatype),
                bean.v2Min, bean.v2Max,
                escapeHtmlString(bean.conditionANTLR),
                escapeHtmlString(bean.conditionfhirPath),
                escapeHtmlString(bean.conditionNarrative),
                makeFhirLink(bean.fhirCode, count), escapeHtmlString(bean.fhirExtension),
                makeFhirLink(bean.fhirDatatype, count), bean.fhirMin, bean.fhirMax,
                makeDataTypeLink(bean.v2DataTypeMap, bean.fhirDatatype, count),
                makeTableLink(bean.fhirVocab, count),
                escapeHtmlString(bean.fhirValue),
                escapeHtmlString(bean.comments)
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
        w.println("</tbody></table>");
    }
}
