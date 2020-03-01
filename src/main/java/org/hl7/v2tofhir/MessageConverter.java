package org.hl7.v2tofhir;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class MessageConverter extends ConverterImpl<MessageInput> implements Converter {

    public MessageConverter(File f) throws IOException {
        super(MessageInput.class);
        load(f);
    }

    @Override
    protected Row convert(MessageInput input) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    protected String getSource(MessageInput row) {
        return "https://www.hl7.org/v2";

    }

    @Override
    protected String getSourceName(MessageInput bean) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    protected String getTarget(MessageInput row) {
        return "https://www.hl7.org/fhir";
    }

    @Override
    protected String getTargetName(MessageInput bean) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    protected void writeIntro(List<MessageInput> beans, PrintWriter w) {
        w.println("<table class='grid'><thead>");
        w.print("<tr><th colspan='3'>HL7 v2</th><th colspan='3'>Condition (IF True, args)</th>");
        w.println("<th colspan='4'>HL7 FHIR</th><th>Comments</th></tr>");

        w.print("<tr><th>Code</th><th>Text</th><th>Computable ANTLR</th><th>Computable FHIRPath</th>");
        w.println("<th>Code</th><th>&#xA0;</th><th>Display</th><th>Code System</th><th>&#xA0;</th></tr></thead>");

        w.println("<tbody>");

        int count = 0;
        for (MessageInput bean: beans) {
            if (count++ < 2) {
                continue;
            }
            String cols[] = {
                bean.v2Code, bean.v2Text, bean.v2CodeSystem,
                bean.conditionANTLR, bean.conditionfhirPath, bean.conditionfhirPath,
                bean.fhirCode, bean.fhirExtension, bean.fhirDisplay, bean.fhirCodeSystem,
                bean.comments
            };
            w.print("<tr>");
            for (String col: cols) {
                w.printf("<td>%s</td>", escapeHtmlString(col));
            }
            w.println("</tr>");
        }
        w.println("</tbody></table>");
    }
}
