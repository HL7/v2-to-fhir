package org.hl7.v2tofhir;
/*
 * Copyright 2020 Audacious Inquiry, Inc.
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
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.tuple.Triple;
import org.apache.commons.text.WordUtils;

import com.opencsv.bean.CsvToBeanBuilder;

public abstract class ConverterImpl<T extends Convertible> implements Converter {

    private static final String DATA_TYPE = "Data Type";
	private static final String HTML_SUFFIX = ".html";
	private static final String MESSAGE_TYPE = "Message";
	private static final String DATATYPE_TYPE = "Datatype";
	private static final String SEGMENT_TYPE = "Segment";
	private static final String TABLE_TYPE = "Table";
	private static final String CONCEPT_MAP_FILENAME = "ConceptMap-";
	private static final String UNKNOWN = "Unknown";
	private static final String FHIR_BASE = "https://hl7.org/fhir/R4/";
	private static final String FHIR_TERM = "http://terminology.hl7.org/";
    private static final String IG_URL = "http://hl7.org/fhir/uv/v2mappings";
    private static boolean reportErrorsOnly = false;
    private static int errCount = 0;
    private static int warnCount = 0;
    private static File errorOutput = new File(".", "ConvertErrors.log");
    private static PrintWriter log = null;
    private final String sourceUrl;
    private String fhirPart;
    public static class Row {
        String sourceCode;
        String sourceDisplay;
        String sourceType;
        String sourceMin;
        String sourceMax;
        String targetCode;
        String targetType;
        String targetDisplay;
        String targetMin;
        String targetMax;
        String conditionFHIRPath;
        String conditionANTLR;
        String conditionNarrative;
        String dataType;
        String mapping;
        String comments;
        String targetValue;
        String vocab;
        String segmentMap;
        String references;
    }

    private static Map<String,Triple<String,Integer,String>> fhirLinks = new TreeMap<>();
    private static Map<String,Triple<String,Integer,String>> segmentLinks = new TreeMap<>();
    private static Map<String,Triple<String,Integer,String>> tableLinks = new TreeMap<>();
    private static Map<String,Triple<String,Integer,String>> dataTypeLinks = new TreeMap<>();

    private static final String[] KNOWN_CODESYSTEM_URLS = {
        "http://snomed.info/sct"
    };

    private static Map<String, String> mappedLinks  = new HashMap<>();
    static {
        mappedLinks.put("Reference", FHIR_BASE + "references.html");
        mappedLinks.put("Meta", FHIR_BASE + "resource.html#Meta");
        mappedLinks.put("xhtml", FHIR_BASE + "narrative.html#xhtml");
        mappedLinks.put("Narrative", FHIR_BASE + "narrative.html#Narrative");
        mappedLinks.put("Extension", FHIR_BASE + "extensibility.html#Extension");
        mappedLinks.put("Dosage", FHIR_BASE + "dosage.html#Dosage");
        mappedLinks.put("ContactDetail", FHIR_BASE + "metadatatypes.html#ContactDetail");
        mappedLinks.put("Contributor", FHIR_BASE + "metadatatypes.html#Contributor");
        mappedLinks.put("DataRequirement", FHIR_BASE + "metadatatypes.html#DataRequirement");
        mappedLinks.put("RelatedArtifact", FHIR_BASE + "metadatatypes.html#RelatedArtifact");
        mappedLinks.put("UsageContext", FHIR_BASE + "metadatatypes.html#UsageContext");
        mappedLinks.put("ParameterDefinition", FHIR_BASE + "metadatatypes.html#ParameterDefinition");
        mappedLinks.put("Expression", FHIR_BASE + "metadatatypes.html#Expression");
        mappedLinks.put("TriggerDefinition", FHIR_BASE + "metadatatypes.html#TriggerDefinition");
    }

    private String source;
    private String sourceName;
    private String qualifier;
    private String target;
    private String targetName;
    private String filename = null;
    private File theSource;
    private String type;
    private List<T> beans;
    private Class<T> classType;

    protected ConverterImpl(Class<T> classType, String sourceUrl) {
        this.classType = classType;
        this.sourceUrl = sourceUrl;
    }

    @Override
    public String getType() {
        return type;
    }

    @Override
    public void load(File f) throws IOException {
        String[] parts = null;
        theSource = f;
        filename = f.getName();
        fhirPart = StringUtils.substringBefore(
            StringUtils.substringBefore(StringUtils.substringAfter(filename, "["), "]"), "-").trim();

        qualifier = StringUtils.substringBefore(StringUtils.substringAfter(filename,"["),"]");
        target = null;
        if (qualifier.length() > 0) {
            qualifier = qualifier.replace(" ", "");
            if (qualifier.contains("-")) {
                target = StringUtils.substringBefore(qualifier, "-");
                qualifier = "[" + StringUtils.substringAfter(qualifier, "-") + "]";
            } else {
                target = qualifier;
                qualifier = "";
            }
        }
        filename = filename.replace("ConceptMap", "Concept Map");
        parts = filename.split("\\s*[\\._\\-]\\s*");
        sourceName = source = StringUtils.substringBefore(parts[2], "[");
        targetName = target;
        if (target != null) {
            targetName = target.replace(HTML_SUFFIX, "");
        }

        try (FileReader r = new FileReader(f)) {
            beans = new CsvToBeanBuilder<T>(r).withType(classType).build().parse();
        }

        if (filename.contains("HL7 Concept")) {
            type = TABLE_TYPE;
            sourceName = parts[1];
            setTableNames();
        } else if (filename.contains("HL7 Segment")) {
            type = SEGMENT_TYPE;
        } else if (filename.contains("HL7 Data Type")) {
            type = DATATYPE_TYPE;
        } else if (filename.contains("HL7 Message")) {
            type = MESSAGE_TYPE;
            target = targetName = "Bundle";
            sourceName = source = parts[2] + "_" + parts[3];
        }
    }

    public void setTableNames() {
        T first = getFirstMappedBean();

        if (first == null) {
            source = makeId(sourceName);
            if (target == null) {
                target = UNKNOWN;
            }
            if (targetName == null) {
                targetName = UNKNOWN;
            }
        }

        ConceptMapInput bean = (ConceptMapInput)first;
        if (bean == null) {
            target = UNKNOWN;
            targetName = UNKNOWN;
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
            target = UNKNOWN;
        }
        targetName = toFhirName(target);
    }

    private String toFhirName(String target) {
        if (target.contains("/")) {
            target = StringUtils.substringAfterLast(target, "/");
        }
        return WordUtils.capitalize(target.replace("-", " ").replace(HTML_SUFFIX, ""));
    }

    protected final T getFirstMappedBean() {
        int count = 0;
        for (T bean : beans) {
            // skip the first two lines
            if (count++ < 2) {
                continue;
            }
            Row row = bean.convert();
            // If there is no conversion, go to the next line
            if (row == null) {
                continue;
            }
            return bean;
        }
        return null;
    }

    public String getSourceFileName() {
        return theSource.getPath();
    }

    public String getFishFileName() {
        String targetnm = null;
        if (targetName != null) {
            targetnm = targetName.replace(HTML_SUFFIX, "");
        }
        return String.format("%s %s%s to %s.fsh", type, sourceName, StringUtils.defaultString(qualifier), targetnm);
    }

    public String getId() {
        return makeId(getFishFileName());
    }

    private static String makeName(String fishFileName) {
        return WordUtils.capitalize(fishFileName.replace(".fsh","").replace(" to ", " To ").replace("[", " ").replace("]", " ").replace(".", " ")).replace(" ","").replace("-","");
    }

    public String getMdFileName(String prefix, String suffix) {
        return prefix + CONCEPT_MAP_FILENAME + getId() + suffix + ".md";
    }

    public String getHtmlFileName() {
        return CONCEPT_MAP_FILENAME + getId() + HTML_SUFFIX;
    }

    @Override
    public void store(File loc) throws IOException {
        File f;
        File intro;
        File notes;
        String output = getFishFileName();
        if (loc.isDirectory()) {
            f = new File(loc, output);
        } else {
            f = loc;
        }
        intro = new File(getMdFileName("input/includes/", "-intro"));
        if (!intro.getParentFile().exists()) {
            intro.getParentFile().mkdirs();
        }
        notes = new File(getMdFileName("input/includes/", "-notes"));
        if (!notes.getParentFile().exists()) {
            notes.getParentFile().mkdirs();
        }

        try (PrintWriter pw = new PrintWriter(new FileWriter(f));
            PrintWriter introWriter = new PrintWriter(new FileWriter(intro));
            PrintWriter notesWriter = new PrintWriter(new FileWriter(notes));
        ) {
            writeHeader(loc.getName(), pw, filename, type, sourceName, targetName, getFHIRDescription(), source, target);
            if (sourceUrl != null) {
                pw.printf("* extension[0].url = \"%s/StructureDefinition/RelatedArtifact\"%n", IG_URL);
                pw.printf("* extension[0].extension[0].url = \"type\"%n");
                pw.printf("* extension[0].extension[0].valueCode = #derived-from%n");
                String name = StringUtils.substringBeforeLast(f.getName(), " - ").replace("_",":");
                pw.printf("* extension[0].extension[1].url = \"label\"%n");
                pw.printf("* extension[0].extension[1].valueString = \"%s\"%n", name);
                pw.printf("* extension[0].extension[2].url = \"url\"%n");
                pw.printf("* extension[0].extension[2].valueUri = \"%s\"%n", sourceUrl);
            }
            int count = 0;
            int mappedRows = 0;

            for (T bean : beans) {
                // skip the first two lines
                if (count++ < 2) {
                    continue;
                }
                // Convert the line
                Row row = bean.convert();

                // If there is no conversion, go to the next line
                if (row == null) {
                    continue;
                }

                if (StringUtils.isBlank(row.sourceCode)) {
                    warn("Missing source for mapping", count);
                    continue;
                }

                pw.printf("* group.element[%d].code = #%s%n", mappedRows, row.sourceCode.trim());
                addConstraints(pw, "* group.element[%d]", mappedRows, row.sourceType, row.sourceMin, row.sourceMax);

                if (!StringUtils.isEmpty(row.sourceDisplay)) {
                    pw.printf("* group.element[%d].display = \"%s\"%n", mappedRows, escapeFshString(row.sourceDisplay));
                }

                pw.printf("* group.element[%d].target.equivalence = #%s%n", mappedRows,
                    StringUtils.isEmpty(row.targetCode) ? "unmatched" : "equivalent");

                if (!StringUtils.isBlank(row.targetCode)) {
                    String targetCode = row.targetCode.contains("=")
                        ? escapeFshString(StringUtils.substringBefore(row.targetCode, "="))
                        : row.targetCode;
                    String targetDisplay = row.targetCode.contains("=")
                        ? "= " + StringUtils.substringAfter(row.targetCode, "=")
                        : row.targetDisplay;

                    String comments = StringUtils.defaultString(row.comments);
                    if (targetCode.contains(",") || targetCode.contains(" ")) {
                        String[] parts = targetCode.split("[, ]");
                        comments = targetCode.substring(parts[0].length()) + ".  " + comments;
                        targetCode = parts[0];
                    }

                    pw.printf("* group.element[%d].target.code = #%s%n", mappedRows, targetCode.trim());

                    addConstraints(pw, "* group.element[%d].target", mappedRows, row.targetType, row.targetMin, row.targetMax);


                    if (!StringUtils.isEmpty(escapeFshString(targetDisplay))) {
                        pw.printf("* group.element[%d].target.display = \"%s\"%n", mappedRows,
                            escapeFshString(targetDisplay));
                    }
                    if (!StringUtils.isEmpty(escapeFshString(comments))) {
                        pw.printf("* group.element[%d].target.comment = \"%s\"%n", mappedRows,
                            escapeFshString(comments));
                    }
                }
                ++mappedRows;
            }

            if (introWriter != null) {
                introWriter.printf(
                    "%nThis ConceptMap represents the mapping from the HL7 V2 %s to the FHIR %s. "
                        + "See also the <a href='https://github.com/HL7/v2-to-fhir/blob/master/tank/%s'>FHIR Shorthand</a> or "
                        + "the <a href='https://github.com/HL7/v2-to-fhir/blob/master/mappings/%s'>CSV Source</a>.%n",
                        getV2Description(),
                        getFHIRDescription(),
                        output, StringUtils.substringAfterLast(theSource.getPath().replace("\\","/"), "mappings/"));

                writeIntro(beans, introWriter);
            }
        } catch (IOException ioex) {
            ioex.printStackTrace();
        }
    }

    private static void writeHeader(String fn, PrintWriter pw,
        String sourceFilename, String type, String sourceName, String targetName, String fhirType,
        String source, String target
    ) {
        String filename = fn;
        String titleStr = type + " " + sourceName + StringUtils.defaultString(staticQualifier) + " to " + targetName + " Map";
        if (source == null) {
            titleStr = titleStr + " - Unsupported";
            filename = "Unsupported " + filename;
        }
        pw.printf("// %s%n", sourceFilename);
        pw.printf("Instance: %s%n", makeName(filename));
        pw.println("InstanceOf: ConceptMap");
        pw.println("Title: \"" + titleStr + "\"");
        pw.println("* title = \"" + titleStr + "\"");
        pw.printf("* description = \"This ConceptMap represents a mapping from the HL7 V2 %s %s to the FHIR %s.%s\"%n",
            type, sourceName, fhirType, source == null ? " It is not yet supported." : "");
        pw.printf("* id = \"%s\"%n", makeId(filename));
        pw.printf("* url = \"%s/%s\"%n", IG_URL, makeId(filename));
        pw.println("* version = \"1.0\"");
        pw.printf("* name = \"%s\"%n", makeName(filename));
        pw.println("* status = #active");
        pw.println("* experimental = true");
        pw.printf("* date = \"%tF\"%n", new Date());
        pw.println("* publisher = \"HL7 International, Inc\"");
        pw.println("* contact.telecom.system = #email");
        pw.println("* contact.telecom.value = \"v2-to-fhir@lists.hl7.org\"");
        pw.println("* copyright = \"Copyright (c) 2020, HL7 International, Inc., All Rights Reserved.\"");
        if (source != null) {
            pw.printf("* sourceUri = \"%s\"%n", source);
        }
        if (target != null) {
            pw.printf("* targetUri = \"%s\"%n", target);
        }
    }

    private void addConstraints(PrintWriter pw, String string, int row, String dataType, String min, String max) {
        if (!StringUtils.isAllBlank(dataType, min, max)) {
            pw.printf(string + ".extension[0].url = \"%s/StructureDefinition/TypeInfo\"%n", row, IG_URL);

            int parts = 0;
            if (!StringUtils.isBlank(dataType)) {
                pw.printf(string + ".extension[0].extension[%d].url = \"%s\"%n", row, parts, "type");
                pw.printf(string + ".extension[0].extension[%d].valueCode = #\"%s\"%n", row, parts++, dataType);
            }
            if (!StringUtils.isBlank(min)) {
                pw.printf(string + ".extension[0].extension[%d].url = \"%s\"%n", row, parts, "cardinalityMin");
                pw.printf(string + ".extension[0].extension[%d].valueInteger = %s%n", row, parts++, min);
            }
            if (!StringUtils.isBlank(max)) {
                pw.printf(string + ".extension[0].extension[%d].url = \"%s\"%n", row, parts, "cardinalityMax");
                pw.printf(string + ".extension[0].extension[%d].valueInteger = %s%n", row, parts++, max);
            }
        }
    }

    private String getFHIRDescription() {
        String target = getTargetName().replace(",html", "");
        switch (type) {
        case TABLE_TYPE:
            return String.format("%s Value Set", target);
        case MESSAGE_TYPE:
            return "Message Bundle";
        case SEGMENT_TYPE:
        case DATATYPE_TYPE:
            return String.format("%s %s", target, isResource(target, 0) != null ? "Resource" : DATA_TYPE);
        }
        return null;
    }

    private String getV2Description() {
        switch (type) {
        case TABLE_TYPE:
            return String.format("Table %s", getSourceName());
        case MESSAGE_TYPE:
            return String.format("%s Message", getSourceName());
        case SEGMENT_TYPE:
            return String.format("%s Segment", getSourceName());
        case DATATYPE_TYPE:
            return String.format("%s Data Type", getSourceName());
        }
        return null;
    }

    protected String escapeFshString(String comments) {
        if (comments == null) {
            return comments;
        }
        String value = comments.replace("\r", "");
        // If there is a newline, use Sushi """ syntax
        if (value.contains("\n")) {
            value = "\"\"\n" + value.trim() + "\\\n\"\"";
        } else {
            // Only do quote escaping if not in a multiline string.
            value = value.replace("\"", "\\\"");
        }
        return value.trim();
    }

    private static final Pattern LINK_PATTERN = Pattern.compile("http:|https:|ftp:|mailto:");
	private static String staticQualifier;

    protected String escapeHtmlString(String html) {
        if (html == null) {
            return "";
        }
        Matcher m = LINK_PATTERN.matcher(html);
        if (!m.find()) {
            return simpleEscapeHtmlString(html);
        }
        // OK, so we have some links in text that should be made into real links.
        StringBuilder links = new StringBuilder();
        int start = 0;
        while (start < html.length()) {
            int end = m.start();
            String chunk;
            if (end != 0) {
                chunk = html.substring(start, end);
                links.append(simpleEscapeHtmlString(chunk));
            }
            start = end;
            for (end = start; end < html.length(); end++) {
                int c = html.charAt(end);
                if (!Character.isLetterOrDigit(c) && "-+&@#/%?=~_|$!:,.;".indexOf(c) < 0)
                    break;
            }
            // End is either after the last character, or the character that doesn't match a URL character
            // NOTE: While ( and ) are legal in URLs, we are assuming they won't appear in text.

            chunk = html.substring(start, end);
            String addr = chunk;    // Assume address is same as chunk

            // Fix addr for missing protocol
            if (!addr.matches("^(http:|https:|ftp:|mailto:).*$")) {
                addr = addSchema(addr);
            }
            links.append("<a href='" + escapeHtmlAttr(addr) + "'>")
                .append(simpleEscapeHtmlString(chunk))
                .append("</a>");
            start = end;
            if (!m.find()) {
                chunk = html.substring(start);
                links.append(simpleEscapeHtmlString(chunk));
                break;
            }
        }
        return links.toString();
    }

	private String addSchema(String addr) {
		if (addr.contains("@")) {
		    addr = "mailto:" + addr;
		} else if (addr.startsWith("www")) {
		    addr = "http://" + addr;
		} else if (addr.startsWith("ftp")) {
		    addr = "ftp://" + addr;
		} else {
		    addr = "http://" + addr;
		}
		return addr;
	}

    protected String escapeHtmlAttr(String attr) {
        return simpleEscapeHtmlString(attr).replace("'", "&apos;").replace("\"", "&quot;");
    }

    protected String simpleEscapeHtmlString(String html) {
        return html.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;");
    }

    protected abstract void writeIntro(List<T> bean, PrintWriter introWriter);

    private static String makeId(String name) {
        name = name.contains("/") ? StringUtils.substringAfterLast(name, "/") : name;
        if (name.endsWith(".fsh")) {
            name = name.substring(0, name.length()-4);
        }
        return StringUtils.truncate(StringUtils.replaceChars(name.toLowerCase(), "! _[].", "------").replaceAll("--+", "-"),
            64);
    }

    @Override
    public String getSourceName() {
        return sourceName;
    }

    @Override
    public String getTargetName() {
        return targetName;
    }

    @Override
    public void store() throws IOException {
        store(new File("."));
    }

    @Override
    public String getQualifier() {
        return qualifier;
    }

    protected String makeFhirLink(String fhirCode, int count) {

        if (StringUtils.isEmpty(fhirCode) || "N/A".equals(fhirCode.trim().toUpperCase())) {
            return fhirCode;
        }

        String fhirLinks[] = null;

        // Remove everything after the equals
        String myFhirCode = StringUtils.substringBefore(fhirCode, "=").trim();
        // Remove everything between [] inclusive
        myFhirCode = myFhirCode.replaceAll("\\[[^\\]]*\\]", "");
        // Split at ( and )
        fhirLinks = myFhirCode.split("[\\(\\{\\}\\)]");
        // Create a link for every part remaining.
        StringBuilder links = new StringBuilder();
        String name = null;
        int pos = 0;
        for (String fhirLink: fhirLinks) {
            if (fhirLink == null) {
                continue;
            }
            String mapped = mappedLinks.get(fhirLink), link = null;
            if (mapped != null) {
                links.append(makeLink(fhirLink, mapped));
            } else if (StringUtils.startsWith(fhirLink, "http://hl7.org/fhir") &&
                !StringUtils.startsWith(fhirLink, "http://hl7.org/fhir/R4")) {
                // if it starts with http://hl7.org/fhir and does not contain R4, insert R4
                // and convert to codesystem- style.
                links.append(makeLink(fhirLink,
                    fhirLink.replace("http://hl7.org/fhir/", FHIR_BASE + "codesystem-") + (fhirLink.endsWith(HTML_SUFFIX) ? "" : HTML_SUFFIX)));
            } else if (StringUtils.startsWith(fhirLink, FHIR_TERM + "CodeSystem/v3-")) {
                // if it starts with  http://terminology.hl7.org/CodeSystem/v2- replace with http://hl7.org/fhir/R4/v2/
                // and append /index.html
                links.append(makeLink(fhirLink,
                        fhirLink.replace(FHIR_TERM + "CodeSystem/v3-", FHIR_BASE + "v3/") +
                        "/cs.html")
                );
            } else if (StringUtils.startsWith(fhirLink,  FHIR_TERM + "CodeSystem/v2-")) {
                // if it starts with  http://terminology.hl7.org/CodeSystem/v2- replace with http://hl7.org/fhir/R4/v2/
                // and append /index.html
                links.append(makeLink(fhirLink,
                    fhirLink.replace(FHIR_TERM + "CodeSystem/v2-", FHIR_BASE + "v2/") + "/index.html")
                );
            } else if (StringUtils.startsWith(fhirLink,  FHIR_TERM + "CodeSystem/")) {
                links.append(makeLink(fhirLink, fhirLink + HTML_SUFFIX));
            } else if (Arrays.asList(KNOWN_CODESYSTEM_URLS).contains(fhirLink)) {
                links.append(makeLink(fhirLink, fhirLink));
            } else if (isMetaField(fhirLink)) {
                links.append(makeLink(fhirLink, FHIR_BASE + "resource.html#Meta"));
            } else if (((link = isFhirDataTypeField(fhirPart + "." + fhirLink, count)) != null)) {
                links.append(makeLink(link, FHIR_BASE + "datatypes-definitions.html#" + fhirPart + "." + link));
            } else if ((link = isResourceField(fhirPart + "." + fhirLink, count)) != null) {
                name = StringUtils.substringBefore(link, ".");
                links.append(makeLink(link, FHIR_BASE + fhirPart + "." + name + "-definitions.html#" + link));
            } else if ((link = isFhirDataType(fhirLink, count)) != null) {
                // If a FHIR Data Type, link to  http://hl7.org/fhir/R4/datatypes.html#{datatype}
                links.append(makeLink(link, FHIR_BASE + "datatypes.html#" + link));
            } else if ((link = isFhirDataTypeField(fhirLink, count)) != null) {
                // If a FHIR Data Type field, link to fhir/R4/datatypes-definitions.html#{field}
                links.append(makeLink(link, FHIR_BASE + "datatypes-definitions.html#" + link));
            } else if ((link = isResource(fhirLink, count)) != null) {
                // If a FHIR Resource, link to fhir/R4/{resource}.html
                links.append(makeLink(link, FHIR_BASE + link.toLowerCase() + HTML_SUFFIX));
            } else if ((link = isResourceField(fhirLink, count)) != null) {
                // If a FHIR Resource field, link to fhir/R4/{resource}-definitions.html#{field}
                name = StringUtils.substringBefore(link, ".");
                links.append(makeLink(link, FHIR_BASE + name.toLowerCase() + "-definitions.html#" + link));
            } else if (fhirLink.matches("^p?[0-9\\-]*$")) {
                links.append(fhirLink);
            } else {
                // Otherwise, force what is likely to be broken link, making someone go through a fix.
                links.append(makeLink(makeBrokenLink(fhirLink, count),"#broken"));
                error("Link to %s not found.%n", count+1, fhirLink);
            }

            // Append the delimiter character
            pos += fhirLink.length();
            if (pos < myFhirCode.length()) {
                links.append(myFhirCode.charAt(pos++));
            }
        }
        return links.toString();
    }

    private String isFhirDataTypeField(String fhirLink, int count) {
        String link = null;
        if (fhirLink.contains(".") && (link = isFhirDataType(StringUtils.substringBefore(fhirLink,"."), 0)) != null) {
            link += "." + StringUtils.substringAfter(fhirLink,".");
            if (!link.equals(fhirLink)) {
                warn("%s used where %s meant.%n", count, fhirLink, link);
            }
            return link;
        }
        return null;
    }

    private String isFhirDataType(String fhirLink, int count) {
        Map<String, Map<String, Triple<String, String, String>>> m = ConverterMap.getMap();
        Triple<String, String, String> t = null;
        if ((t = m.get("FHIR Data Type").get(fhirLink.toLowerCase())) != null) {
            if (!t.getRight().equals(fhirLink) && count != 0) {
                warn("%s used where %s meant.%n", count, fhirLink, t.getRight());
            }
            return t.getRight();
        }
        return null;
    }

    private String isResourceField(String fhirLink, int count) {
        String link = null;
        if (fhirLink.contains(".") && (link = isResource(StringUtils.substringBefore(fhirLink,"."), 0)) != null) {
            link += "." + StringUtils.substringAfter(fhirLink, ".");
            if (!link.equals(fhirLink) && count != 0) {
                warn("%s used where %s meant.%n", count, fhirLink, link);
            }
            return link;
        }
        return null;
    }

    private static boolean isMetaField(String fhirLink) {
        return fhirLink.contains("meta.");
    }

    private String isResource(String fhirLink, int count) {
        Map<String, Map<String, Triple<String, String, String>>> m = ConverterMap.getMap();
        Triple<String, String, String> t = null;
        if (fhirLink != null) {
            if ((t = m.get("FHIR Resource").get(fhirLink.toLowerCase())) != null) {
                if (!t.getRight().equals(fhirLink)) {
                    warn("%s used where %s meant.%n", count, fhirLink, t.getRight());
                }
                return t.getRight();
            }
        }
        return null;
    }

    protected String makeSegmentLink(String segmentMap, String fhirCode, int count) {
        // if segmentMap is empty, return the value w/o a link.
        if (StringUtils.isBlank(segmentMap)) {
            return segmentMap;
        }

        // if in the form DTNAME-name1 convert to ConceptMap-datatype-DTNAME-to-name1.html
        return makeLink(SEGMENT_TYPE, segmentMap, "ConceptMap-segment-" + parseMap(segmentMap, fhirCode) + HTML_SUFFIX, count);
    }

    protected String makeTableLink(String fhirVocab, int count) {
    	String link = null;
        if (!StringUtils.isBlank(fhirVocab)) {
        	link = ConceptMapConverter.getLinkFromName(fhirVocab);
        	if (link == null) {
        		this.warn("Missing vocabulary mapping for %s", count, fhirVocab);
        	} else {
        		tableLinks.put(link, Triple.of(fhirVocab, count, link));
        	}
        }
        return makeLink(TABLE_TYPE, fhirVocab, link, count); 
    }

    protected String makeDataTypeLink(String v2DataType, String fhirDatatype, int count) {

        // if v2DataTypeMap is empty, return the value w/o a link.
        if (StringUtils.isBlank(v2DataType)) {
            return v2DataType;
        }

        return makeLink(DATA_TYPE, v2DataType,
            "ConceptMap-datatype-" + parseMap(v2DataType, fhirDatatype) + HTML_SUFFIX, count);
    }


    private String parseMap(String map, String fhirCode) {
        // Replace all Reference(name) with name
        String myMap = map.replaceAll("Reference\\(([^\\)]*)\\)","$1");

        // if in the form DTNAME[FhirType-other], convert to ConceptMap-datatype-XX[other]-to-XX
        if (myMap.matches("[A-Z0-9]{2,3}\\[[^\\]]*\\]")) {
            String prefix = StringUtils.substringBefore(map, "[");
            String fhirPart = StringUtils.substringBefore(StringUtils.substringAfter(myMap, "["), "]");
            String other = StringUtils.substringAfter(fhirPart,"-");
            if (other.length() != 0) {
                myMap = prefix + "[" + other + "]";
            } else {
                myMap = prefix;
            }
            if (StringUtils.isBlank(fhirCode) || true) {
                fhirCode = StringUtils.substringBefore(fhirPart,"-");;
            }
        }

        // If fhirCode ends with [1], remove it.
        // if in the form XX- convert to ConceptMap-datatype-XX-to-XX.html
        String myFhirCode = fhirCode.replaceAll("Reference\\(([^\\)]*)\\)","$1")
                                    .replaceAll("[\\[\\(][^\\]\\)]*[\\]\\)]","");


        return makeId(String.format("%s-to-%s", myMap, myFhirCode));
    }

    private static String makeBrokenLink(String fhirLink, int count) {
        return "<span style='font-weight: bold; color: red'>" + fhirLink + "</span>";
    }

    private String makeLink(String type, String text, String link, int count) {
        Map<String, Triple<String, Integer, String>> t;
        switch (type) {
        case SEGMENT_TYPE:
            t = segmentLinks;
            break;
        case DATA_TYPE:
            t = dataTypeLinks;
            break;
        case TABLE_TYPE:
            t = tableLinks;
            break;
        default:
        	t = null;
        	break;
        }
        if (t != null && link != null) {
            t.put(link, Triple.of(text, count, getSourceFileName()));
            return makeLink(text, link);
        }
        return text;
    }

    private String makeLink(String text, String link) {
        return String.format("<a href='%s'>%s</a>", link, text);
    }

    static boolean printLinkData(String output) {
        String names[] = { "FHIR", "Segments", "Tables", "Data Types" };

        Set<String> htmlFiles = new HashSet<>();
        Collection<File> files = FileUtils.listFiles(new File(output), new String[] { "fsh" }, false);
        for (File file: files) {
            htmlFiles.add(CONCEPT_MAP_FILENAME + makeId(file.getName()) + HTML_SUFFIX);
        }
        List<Map<String,Triple<String, Integer, String>>> maps = Arrays.asList(fhirLinks, segmentLinks, tableLinks, dataTypeLinks);
        boolean allValid = true;
        for (int i = 0; i < names.length; i++) {
            System.out.println(names[i]);
            for (Map.Entry<String, Triple<String, Integer, String>> link: maps.get(i).entrySet()) {
                // Verify the link target, and report if not valid
                String page = link.getKey();
                if (page.contains(HTML_SUFFIX) && !htmlFiles.contains(page)) {
                    report(true, link.getValue().getRight(), link.getValue().getMiddle(), "%s%n",
                        explainProblem(link.getValue(), output));
                    allValid = false;
                }
            }
        }

        return allValid;
    }

    /**
     * Diagnose the problem in a link.
     * @param triple  The link string.
     * @param output
     * @return  A string describing the problem with it.
     */
    protected static String explainProblem(Triple<String, Integer, String> triple, String output) {
        String link = triple.getLeft();
        String type = StringUtils.substringBefore(link, "[");
        String qual = StringUtils.substringBetween(link, "[", "]");
        String[] qualParts = qual == null ? new String[0] : qual.split("[^A-Za-z0-9.]", 2);
        String typeFound = null;
        if (StringUtils.isAllEmpty(type)) {
            return String.format("%s is missing the V2 artifact.", link);
        }

        if (type.contains(".#ext-")) {
            return String.format("Extensions not supported yet for %s", type);
        }

        boolean found = false;
        for (Map.Entry<String, Map<String, Triple<String, String, String>>> e: ConverterMap.getMap().entrySet()) {
            if (Arrays.asList(DATA_TYPE, "Message Type", TABLE_TYPE, SEGMENT_TYPE).contains(e.getKey()) && (e.getValue().get(type) != null)) {
                found = true;
                switch (e.getKey()) {
                case DATA_TYPE:
                    typeFound = DATATYPE_TYPE;
                    break;
                case "Message Type":
                    typeFound = MESSAGE_TYPE;
                    break;
                case TABLE_TYPE:
                case SEGMENT_TYPE:
                    typeFound = e.getKey();
                    break;
                default:
                	typeFound = "";
                	break;
                }
                break;
            }
        }
        if (!found) {
            return String.format("%s is not a recognized V2 artifact", type);
        }

        if (qualParts.length < 1 || qualParts[0].length() < 1) {
            return String.format("%s has no FHIR Structure Specified", link);
        }

        found = false;
        for (Map.Entry<String, Map<String, Triple<String, String, String>>> e: ConverterMap.getMap().entrySet()) {
            if (Arrays.asList("FHIR Data Type", "FHIR Resource").contains(e.getKey())) {
                if (e.getValue().get(qualParts[0]) != null) {
                    found = true;
                    break;
                }
            }
        }
        if (!found) {
            return String.format("%s is not a recognized FHIR artifact", qualParts[0]);
        }

        String fshFilename = qualParts.length > 1 ?
            String.format("%s %s[%s] to %s.fsh", typeFound, type, qualParts[1], qualParts[0]) :
            String.format("%s %s to %s.fsh", typeFound, type, qualParts[0]);
        String filename = null;
        switch (typeFound) {
        case DATATYPE_TYPE:
            filename = qualParts.length > 1 ?
                String.format("HL7 Data Type - FHIR R4_ %s[%s-%s] - Sheet1.csv", type, qualParts[0], qualParts[1]) :
                String.format("HL7 Data Type - FHIR R4_ %s[%s] - Sheet1.csv", type, qualParts[0]);
            break;
        case MESSAGE_TYPE:
            filename = qualParts.length > 1 ?
                String.format("HL7 Message - FHIR R4_ %s[%s-%s] - Sheet1.csv", type, qualParts[0], qualParts[1]) :
                String.format("HL7 Message - FHIR R4_ %s[%s] - Sheet1.csv", type, qualParts[0]);
            break;
        case SEGMENT_TYPE:
            filename = qualParts.length > 1 ?
                String.format("HL7 Segment - FHIR R4_ %s[%s-%s] - Sheet1.csv", type, qualParts[0], qualParts[1]) :
                String.format("HL7 Segment - FHIR R4_ %s[%s] - Sheet1.csv", type, qualParts[0]);
            break;
        case TABLE_TYPE:
            filename = String.format("HL7 Concept Map - FHIR R4_ %s - Sheet1.csv", type);
            break;
        }

        staticQualifier = "";
        if (qualParts.length > 1) {
        	staticQualifier = "[" + qualParts[1] + "]";
        }
        createMissingFish(output, fshFilename, typeFound, triple.getRight() + ":" + triple.getMiddle(), type, qualParts[0]);
        return String.format("No mapping for %s. Missing file: %s", triple.getLeft(), filename);
    }

    protected static void createMissingFish(String output, String fshFilename, String typeFound,
        String sourceFileName, String v2Type, String fhirType) {

        File f = new File(output, "Unsupported " + fshFilename);
        if (!f.exists() || f.lastModified() - System.currentTimeMillis() > 20000) {
            try (FileWriter fw = new FileWriter(f);
                PrintWriter pw = new PrintWriter(fw);) {
                writeHeader(fshFilename, pw, sourceFileName, typeFound, v2Type, fhirType, fhirType, null, null);
            } catch (Exception e) {
                e.printStackTrace(log);
            }
        }
    }

    protected void error(String format, int line, Object ... args) {
        report(true, getSourceFileName(), line, format, args);
    }

    protected void warn(String format, int line, Object ... args) {
        report(false, getSourceFileName(), line, format, args);
    }

    protected void info(String format, int line, Object ... args) {
        System.out.printf(source + ": " + format, args);
    }

    protected static void report(boolean isError, String source, int line, String format, Object ...args) {
        if (isError) {
            errCount++;
        } else {
            warnCount++;
        }

        if (log == null) {
            try {
                log = new PrintWriter(new FileWriter(errorOutput));
            } catch (IOException e) {
            }
        }
        String subStrBeforeLast = StringUtils.substringBeforeLast(source, "\\");
        if (subStrBeforeLast != null) {
            subStrBeforeLast = subStrBeforeLast.replace("\\", ".");
        }
        String message = String.format((isError ? "E" + errCount : "W" + warnCount) + ") " + format + "\tat " + subStrBeforeLast + "(" + StringUtils.substringAfterLast(source, "\\") + ":" + line + ")\n", args);
        if (!reportErrorsOnly || isError) {
            System.err.print(message);
            log.print(message);
        }
        if (line > 0 && source != null && source.length() > 5) {
            message = getLine(source, line);
            if (message == null) { 
                message = "No corresponding line (" + line + ") in source file!";
            }
            System.err.printf("\tnear: %s%n", message);
            log.printf("\tnear: %s%n", message);
        }
    }

    private static String getLine(String source, int line) {
        String filestr;
        String[] sa;
        try {
            filestr = FileUtils.readFileToString(new File(source), StandardCharsets.UTF_8);
            sa = filestr.split("\r\n");
            if (line < sa.length) {
                return sa[line-1];
            } else {
                return null;
            }
        } catch (IOException e) {
            return e.getMessage();
        }
    }

    protected static int getErrorCount() {
        return errCount;
    }

    protected static int getWarnCount() {
        return warnCount;
    }
}
