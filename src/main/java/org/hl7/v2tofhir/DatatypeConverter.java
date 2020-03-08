package org.hl7.v2tofhir;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

public class DatatypeConverter extends ConverterImpl<DatatypeInput> implements Converter {

    public DatatypeConverter(File f) throws IOException {
        super(DatatypeInput.class);
        load(f);
    }

    @Override
    protected void writeIntro(List<DatatypeInput> beans, PrintWriter w) {
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
                "The FHIR attribute’s data type in the target FHIR version.",
                "The FHIR min cardinality expressed numerically.",
                "The FHIR max cardinality expressed numerically.",
                "The URL to the Data Type Map that is to be used for the attribute in this segment."
        };
        int i = 0;
        for (String head : heads) {
            if (head.equals("Cardinality - Max") || head.equals("Narrative")) {
                w.printf("<th title='%s' style='border-right: 2px'>%s</th>", titles[i++], head);
            } else {
                w.printf("<th title='%s'>%s</th>", titles[i++], head);
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

    public void setNames() {
        DatatypeInput bean = super.getFirstMappedBean();
        if (bean == null) return;

        source = StringUtils.substringBefore(bean.v2Code, ".");
        sourceName = source;
        target = StringUtils.substringBefore(bean.fhirCode, ".");
        targetName = target;
    }
}
