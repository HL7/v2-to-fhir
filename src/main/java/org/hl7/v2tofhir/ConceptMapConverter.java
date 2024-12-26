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
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;


public class ConceptMapConverter extends ConverterImpl<ConceptMapInput> implements Converter {
	public static Map<String, String> vocabToLinkMap = new LinkedHashMap<>();
	public static final String UNSPECIFIED_MAPPING = "unspecified_mapping.html";
	
    public ConceptMapConverter(File f, String sourceUrl) throws IOException {
        super(ConceptMapInput.class, sourceUrl);
        load(f);
        String name = f.getName().toLowerCase().replaceAll("[^a-z_ ]+","");
        String link = StringUtils.substringBetween(name, "map_ ", " ");
        if (link == null) {
            warn("link is null for: %s%n", 0, name);
            return;
        }
        if (StringUtils.containsIgnoreCase(getHtmlFileName(), "unknown")) {
        	// TODO: Skip these for now.
        	// warn("Linking to unknown (no FHIR Mapping Content) for %s%n", 0, getSourceFileName());
        	vocabToLinkMap.put(link, UNSPECIFIED_MAPPING);
        } else {
            vocabToLinkMap.put(link, getHtmlFileName());
        }
    }
    
    public static String getLinkFromName(String name) {
    	return vocabToLinkMap.get(name.toLowerCase().replaceAll("[^a-z]+",""));
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
                if (escapeHtmlString(bean.v2CodeSystem).equals(col) || escapeHtmlString(bean.conditionNarrative).equals(col)) {
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
