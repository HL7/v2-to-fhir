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
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.ArrayList;

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
        String v2CodeSystem;
        String fhirCodeSystem;
    }

    private static Map<String,Triple<String,Integer,String>> fhirLinks = new TreeMap<>();
    private static Map<String,Triple<String,Integer,String>> segmentLinks = new TreeMap<>();
    private static Map<String,Triple<String,Integer,String>> tableLinks = new TreeMap<>();
    private static Map<String,Triple<String,Integer,String>> dataTypeLinks = new TreeMap<>();
    private static final String[] KNOWN_CODESYSTEM_URLS = { Converter.SNOMEDCT_URL };
	private static final String ANTLR_PROPERTY = "Computable-ANTLR";
	private static final String FHIRPATH_PROPERTY = "Computable-FHIRPath";
	private static final String NARRATIVE_PROPERTY = "Narrative-Condition";

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
        if (!qualifier.isEmpty()) {
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
        
        if (target == null) {
            target = Convert.UNKNOWN;
        }
        
        if (targetName == null) {
            targetName = Convert.UNKNOWN;
        }
        
        if (first == null) {
            source = makeId(sourceName);
            target = Convert.UNKNOWN;
            targetName = Convert.UNKNOWN;
            return;
        } else if (first instanceof ConceptMapInput) {
            ConceptMapInput bean = (ConceptMapInput)first;
            source = bean.v2CodeSystem;
            target = bean.fhirCodeSystem;
            if (StringUtils.isBlank(target)) {
                target = Convert.UNKNOWN;
            }
        }

        String v2TermPrefix = "http://terminology.hl7.org/CodeSystem/v2-";
        if (source.startsWith(v2TermPrefix)) {
            sourceName = "HL7" + source.substring(v2TermPrefix.length());
        } else {
            sourceName = source;
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
            if (targetName.equals("Urn:iso:std:iso:3166")) {
                targetnm = "ISO 3166-1";
            } else {
                targetnm = targetName.replace(HTML_SUFFIX, "");
            }
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

        // before writing the header, first separate the rows into groups by the target system
        int count = 0;
        int groupIndexNext = 0;
        int groupIndex;
        HashMap<String, Integer> groups = new HashMap<>();
        ArrayList<ArrayList<Row>> rowGroups = new ArrayList<>();
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
                // Don't worry about lines with sort order of "0".
                if (bean instanceof DatatypeInput && !"0".equals(((DatatypeInput)bean).getSort())) {
                    warn("Missing source for mapping", count);
                }
                continue;
            }

            // check if this is a new group, and if so add the system uri to the HashMap
            if (!groups.containsKey(row.fhirCodeSystem)) {
                groups.put(row.fhirCodeSystem, groupIndexNext);
                groupIndex = groupIndexNext;
                // initialize the inner ArrayList for rows for the new group
                rowGroups.add(new ArrayList<>());
                groupIndexNext++; // increment the index for the next group (if any)
            } else {
                // get the index value for this group (based on the target code system)
                groupIndex = groups.get(row.fhirCodeSystem);
            }
            // add the new row in the correct group in the ArrayList
            rowGroups.get(groupIndex).add(row);
        }

        String targetHeader = target;
        if (rowGroups.size() > 1) {
            // in the case of multiple code systems in the map (multiple groups), set the value set uri in targetHeader to the 
            // empty string value before calling writeHeader, so that no value for 'targetUri' will be included in the ConceptMap
            targetHeader = "";
        }
        
        try (PrintWriter pw = new PrintWriter(new FileWriter(f));
            PrintWriter introWriter = new PrintWriter(new FileWriter(intro));
            PrintWriter notesWriter = new PrintWriter(new FileWriter(notes));
        ) {
            writeHeader(loc.getName(), pw, filename, type, sourceName, targetName, getFHIRDescription(), source, targetHeader, qualifier);
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

            // now generate the FSH output for the rows, arranged by group
            int mappedGroups = 0;
            int mappedRows;
            String targetSystem;
            for (ArrayList<Row> group : rowGroups) {
                if (type == TABLE_TYPE) {
                    // output the group.source code system uri value
                    if (source != null && toValueSetUri(type, source) != null) {
                        if (source.equals("HL70399")) {
                            // handle the special case of the value set for V2 Table 0399 (country codes)
                            pw.printf("* group[%d].source = \"%s\"%n", mappedGroups, "urn:iso:std:iso:3166");
                        } else if (source.equals("HL70136")) {
                            // handle the special case of the value set for V2 Table 0136 (yes-no-Indicator)
                            // the Table 0136 value set codes are now drawn from the Table 0532 (expandedYes-NoIndicator)
                            pw.printf("* group[%d].source = \"%s\"%n", mappedGroups, "http://terminology.hl7.org/CodeSystem/v2-0532");
                        } else if (source.equals("HL70078")) {
                            // handle the special case of the value set for V2 Table 0078 (hl7VS-interpretationCode)
                            // the Table 0078 value set codes are now drawn from the V3 ObservationInterpretation code system
                            pw.printf("* group[%d].source = \"%s\"%n", mappedGroups, "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation");
                        } else {
                            pw.printf("* group[%d].source = \"%s\"%n", mappedGroups, toValueSetUri(type, source).replace("ValueSet", "CodeSystem"));
                        }
                    }
                    // output the group.target code system uri value
                    targetSystem = ((Row)group.get(0)).fhirCodeSystem;
                    if (targetSystem != null && !targetSystem.equals("")) {
                        pw.printf("* group[%d].target = \"%s\"%n", mappedGroups, targetSystem);
                    }
                }
                mappedRows = 0;
                for (Row row : group) {
                    pw.printf("* group[%d].element[%d].code = #%s%n", mappedGroups, mappedRows, row.sourceCode.trim());
                    addConstraints(pw, "* group[%d].element[%d]", mappedGroups, mappedRows, row.sourceType, row.sourceMin, row.sourceMax, null, null);

                    if (!StringUtils.isEmpty(row.sourceDisplay)) {
                        pw.printf("* group[%d].element[%d].display = \"%s\"%n", mappedGroups, mappedRows, escapeFshString(row.sourceDisplay));
                    }

                    pw.printf("* group[%d].element[%d].target.equivalence = #%s%n", mappedGroups, mappedRows,
                        StringUtils.isEmpty(row.targetCode) ? "unmatched" : "equivalent");

                    if (!StringUtils.isBlank(row.targetCode)) {
                        String targetCode = row.targetCode.contains("=")
                            ? escapeFshString(StringUtils.substringBefore(row.targetCode, "="))
                            : row.targetCode;
                        String targetDisplay = row.targetCode.contains("=")
                            ? "= " + StringUtils.substringAfter(row.targetCode, "=")
                            : row.targetDisplay;

                        String comments = StringUtils.defaultString(row.comments);
                        if (targetCode.contains(",") || (targetCode.contains(" ") && (!targetCode.startsWith("\"") || !targetCode.endsWith("\""))) ) {
                            String[] parts = targetCode.split("[, ]");
                            comments = targetCode.substring(parts[0].length()) + ".  " + comments;
                            targetCode = parts[0];
                        }

                        pw.printf("* group[%d].element[%d].target.code = #%s%n", mappedGroups, mappedRows, targetCode.trim());

                        addConstraints(pw, "* group[%d].element[%d].target", mappedGroups, mappedRows, row.targetType, row.targetMin, row.targetMax, row.targetValue, row.vocab);

                        if (!StringUtils.isEmpty(escapeFshString(targetDisplay))) {
                            pw.printf("* group[%d].element[%d].target.display = \"%s\"%n", mappedGroups, mappedRows,
                                escapeFshString(targetDisplay));
                        }
                        if (!StringUtils.isEmpty(escapeFshString(comments))) {
                            pw.printf("* group[%d].element[%d].target.comment = \"%s\"%n", mappedGroups, mappedRows,
                                escapeFshString(comments));
                        }
                        
                        // Add ANTLR, FHIRPath and Narrative Conditions
                        Integer index = 0;
                        if (!StringUtils.isEmpty(row.conditionANTLR)) {
                            pw.printf("* group[%d].element[%d].target.dependsOn[0].property = \"%s\"%n", mappedGroups, mappedRows, ANTLR_PROPERTY);
                            pw.printf("* group[%d].element[%d].target.dependsOn[0].value = \"%s\"%n", mappedGroups, mappedRows, escapeFshString(row.conditionANTLR));
                            index = index + 1;
                        }
                        if (!StringUtils.isEmpty(row.conditionFHIRPath)) {
                            pw.printf("* group[%d].element[%d].target.dependsOn[%s].property = \"%s\"%n", mappedGroups, mappedRows, index, FHIRPATH_PROPERTY);
                            pw.printf("* group[%d].element[%d].target.dependsOn[%s].value = \"%s\"%n", mappedGroups, mappedRows, index, escapeFshString(row.conditionFHIRPath));
                            index = index + 1;
                        }
                        if (!StringUtils.isEmpty(row.conditionNarrative)) {
                            pw.printf("* group[%d].element[%d].target.dependsOn[%s].property = \"%s\"%n", mappedGroups, mappedRows, index, NARRATIVE_PROPERTY);
                            pw.printf("* group[%d].element[%d].target.dependsOn[%s].value = \"%s\"%n", mappedGroups, mappedRows, index, escapeFshString(row.conditionNarrative));
                        }
                    }
                    mappedRows++;
                }
                mappedGroups++;
            }

            if (introWriter != null) {
                introWriter.printf(
                    "%nThis ConceptMap represents the mapping from the HL7 V2 %s to the FHIR %s. "
                        + "See also the <a href='https://github.com/HL7/v2-to-fhir/blob/master/input/fsh/%s'>FHIR Shorthand</a> or "
                        + "the <a href='https://github.com/HL7/v2-to-fhir/blob/master/mappings/%s'>CSV Source</a>.%n",
                        getV2Description(),
                        getFHIRDescription(),
                        output.replace("[", "%5B").replace("]", "%5D"), StringUtils.substringAfterLast(theSource.getPath().replace("\\","/"), "mappings/").replace("[", "%5B").replace("]", "%5D"));

                writeIntro(beans, introWriter);
            }
        } catch (IOException ioex) {
            ioex.printStackTrace();
        }
    }

    private static void writeHeader(String fn, PrintWriter pw,
        String sourceFilename, String type, String sourceName, String targetName, String fhirType,
        String source, String target, String qualifier) {
        String filename = fn;
        String titleStr;
        String targetNm;
        if (targetName.equals("Urn:iso:std:iso:3166")) {
            targetNm = "ISO 3166-1";
        } else {
            targetNm = targetName;
        }
        if (!qualifier.equals("")) {
            titleStr = type + " " + sourceName + " " + qualifier + " to " + targetNm + " Map";
        } else {
            titleStr = type + " " + sourceName + " to " + targetNm + " Map";
        }
        if (source == null) {
            titleStr = titleStr + " - Unsupported";
            filename = "Unsupported " + filename;
        }
        pw.printf("// %s%n", sourceFilename);
        pw.printf("Instance: %s%n", makeName(filename));
        pw.println("InstanceOf: ConceptMap");
        pw.println("Title: \"" + titleStr + "\"");
        pw.println("Usage: #definition");
        pw.println("* title = \"" + titleStr + "\"");
        pw.printf("* description = \"This ConceptMap represents a mapping from the HL7 V2 %s %s to the FHIR %s.%s\"%n",
            type, sourceName, fhirType, source == null ? " It is not yet supported." : "");
        pw.printf("* id = \"%s\"%n", makeId(filename));
        pw.printf("* url = \"%s/ConceptMap/%s\"%n", IG_URL, makeId(filename));
        pw.printf("* name = \"%s\"%n", makeName(filename));
        String vs;
        if (source.equals("HL70399")) {
            // handle the special case of the value set for V2 Table 0399 (country codes)
            vs = toValueSetUri(type, "HL7notAllCodes-0399");
        } else if (source.equals("HL70078")) {
            // handle the special case of the value set for V2 Table 0078 (hl7VS-interpretationCode)
            // the V2 value set and code system have been deprecating, and the codes are not being supported on tx.fhir.org
            // so using the V3 value set instead
            vs = "http://terminology.hl7.org/ValueSet/v3-ObservationInterpretation";
        } else {
            vs = toValueSetUri(type, source);
        }
        if (vs != null) {
            pw.printf("* sourceUri = \"%s\"%n", vs);
        } else {
        	System.err.printf("Source: %s %s %s%n", sourceName, type, source);
        }
        if (target.equals("urn:iso:std:iso:3166")){
            // handle the special case of the value set for ISO 3166 Part 1 3-letter country Codes
            vs = "http://hl7.org/fhir/ValueSet/iso3166-1-3";
        } else if (target.equals("http://terminology.hl7.org/CodeSystem/practitioner-role")) {
            // handle the special case of the FHIR value set for practitioner-role (this code system has a THO url)
            vs = "http://hl7.org/fhir/ValueSet/practitioner-role";
        } else {
            vs = toValueSetUri(type, target);
        }
        if (vs != null) {
            if (!vs.equals("")) {
                // only specify the target value set if there is a single code system group in the map
                // if there are multiple code systems present in the map, the vs variable will be set to the empty string
                pw.printf("* targetUri = \"%s\"%n", vs);
            }
        } else {
        	System.err.printf("Target: %s %s%n", targetName, target);
        }
        pw.println("* insert PublicationData");
    }

    /**
     * Convert code system URIs and other special things to
     * appropriate value set URIs.
     * 
     * @param uri	The input URI
     * @return	The correct valueset URI for the code system or other thing (e.g., message, segment, data type, et cetera).
     */
	private static String toValueSetUri(String type, String uri) {
		if (uri == null) {
			return null;
		}
		if (uri.equals("")) {
			// pass the empty string value through (for checking in writeHeader)
            return uri;
		}
		if (uri.contains("/R4/")) {
			uri = uri.replace("/R4/", "/");
		}
		if (StringUtils.startsWithIgnoreCase(uri, "HL7")) {
			return "http://terminology.hl7.org/ValueSet/v2-" + uri.substring(3);
		}
		if (StringUtils.startsWithIgnoreCase(uri, "http://hl7.org/fhir/") && 
			!StringUtils.startsWithIgnoreCase(uri, "http://hl7.org/fhir/ValueSet/")) {
			return "http://hl7.org/fhir/ValueSet/" + StringUtils.substringAfter(uri, "/fhir/");
		}
		if (StringUtils.startsWithIgnoreCase(uri, "http://terminology.hl7.org/CodeSystem/")) {
			return "http://terminology.hl7.org/ValueSet/" + StringUtils.substringAfter(uri, "/CodeSystem/");
		}
		if (StringUtils.startsWithIgnoreCase(uri, "http://hl7.org/fhir/ValueSet/")
            || StringUtils.startsWithIgnoreCase(uri, "urn:")) {
			return uri;
		}
		
		return null;
	}
	
	private void addConstraints(PrintWriter pw, String string, int group, int row, String dataType, String min, String max, String value, String vocab) {
        if (!StringUtils.isAllBlank(dataType, min, max, value, vocab)) {
            pw.printf(string + ".extension[0].url = \"%s/StructureDefinition/TypeInfo\"%n", group, row, IG_URL);

            int parts = 0;
            if (!StringUtils.isBlank(dataType)) {
                pw.printf(string + ".extension[0].extension[%d].url = \"%s\"%n", group, row, parts, "type");
                pw.printf(string + ".extension[0].extension[%d].valueCode = #\"%s\"%n", group, row, parts++, dataType);
            }
            if (!StringUtils.isBlank(min)) {
                pw.printf(string + ".extension[0].extension[%d].url = \"%s\"%n", group, row, parts, "cardinalityMin");
                pw.printf(string + ".extension[0].extension[%d].valueInteger = %s%n", group, row, parts++, min);
            }
            if (!StringUtils.isBlank(max)) {
                pw.printf(string + ".extension[0].extension[%d].url = \"%s\"%n", group, row, parts, "cardinalityMax");
                pw.printf(string + ".extension[0].extension[%d].valueInteger = %s%n", group, row, parts++, max);
            }
            if (!StringUtils.isBlank(value)) {
                pw.printf(string + ".extension[0].extension[%d].url = \"%s\"%n", group, row, parts, "assignment");
                pw.printf(string + ".extension[0].extension[%d].valueString = \"%s\"%n", group, row, parts++, escapeFshString(value));
            }
            if (!StringUtils.isBlank(vocab)) {
            	String link = ConceptMapConverter.getLinkFromName(vocab);
                if (link != null) {
                	vocab = link.replace(HTML_SUFFIX, "").replace(CONCEPT_MAP_FILENAME, "ConceptMap/");
                }
                pw.printf(string + ".extension[0].extension[%d].url = \"%s\"%n", group, row, parts, "mappedVia");
                pw.printf(string + ".extension[0].extension[%d].valueUrl = \"%s\"%n", group, row, parts++, vocab);
            }
        }
    }

    private String getFHIRDescription() {
        String target = getTargetName().replace(",html", "");
        if (target.equals("Urn:iso:std:iso:3166")) {
            target = "ISO 3166-1";
        }
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
    public String getTarget() {
    	return target;
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
            String mapped = mappedLinks.get(fhirLink);
            String link = null;
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
                if (StringUtils.startsWith(fhirLink,  FHIR_TERM + "CodeSystem/v2-0360")) {
                    // but first handle the special case of V2 Table 0360, which doesn't have a single code system in FHIR R4 (it has two - one for V2 2.3.1-2.6, and another one for 2.7+)
                    // so in this case we will keep the THO url
                    links.append(makeLink(fhirLink, fhirLink));
                } else {
                    links.append(makeLink(fhirLink,
                        fhirLink.replace(FHIR_TERM + "CodeSystem/v2-", FHIR_BASE + "v2/") + "/index.html")
                    );
                }
            } else if (StringUtils.startsWith(fhirLink,  FHIR_TERM + "CodeSystem/")) {
                links.append(makeLink(fhirLink, fhirLink));
            } else if (Arrays.asList(KNOWN_CODESYSTEM_URLS).contains(fhirLink)) {
                links.append(makeLink(fhirLink, fhirLink));
            } else if (StringUtils.equals(fhirLink, "urn:iso:std:iso:3166")) {
                links.append(makeLink(fhirLink, "https://hl7.org/fhir/R4/iso3166.html"));
            } else if (isMetaField(fhirLink)) {
                links.append(makeLink(fhirLink, FHIR_BASE + "resource.html#Meta"));
            } else if ((link = isFhirDataType(fhirLink, count)) != null) {
                // If a FHIR Data Type, link to  http://hl7.org/fhir/R4/datatypes.html#{datatype}
                links.append(makeLink(link, FHIR_BASE + "datatypes.html#" + link));
            } else if (((link = isFhirDataTypeField(fhirPart + "." + fhirLink, count)) != null)) {
                links.append(makeLink(link, FHIR_BASE + "datatypes-definitions.html#" + fhirPart + "." + link));
            } else if ((link = isResourceField(fhirPart + "." + fhirLink, count)) != null) {
                name = StringUtils.substringBefore(link, ".");
                // Fix for FHIR Attribute links
                links.append(makeLink(link, FHIR_BASE + name + "-definitions.html#" + link));
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
            	link = ConceptMapConverter.getLinkFromName(fhirVocab);
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
                if (page.equals(ConceptMapConverter.UNSPECIFIED_MAPPING)) {
                	continue;
                }
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
                writeHeader(fshFilename, pw, sourceFileName, typeFound, v2Type, fhirType, fhirType, null, null, null);
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

    /**
     * Generate this file and include it in resources so that resources that change
     * nothing other than publication date don't show up as changed files.
     * 
     * @param output	The location to put the publication data.
     */
	public static void generatePublicationData(String output) {
		File f = new File(StringUtils.defaultIfEmpty(output, "."), "PublicationData.fsh");
		try (PrintWriter pw = new PrintWriter(new FileWriter(f, StandardCharsets.UTF_8))) {
			pw.println("RuleSet: PublicationData");
	        pw.println("* version = \"1.0\"");
	        pw.println("* status = #active");
	        pw.println("* experimental = true");
	        pw.println("* publisher = \"HL7 International, Inc\"");
	        pw.println("* contact.telecom.system = #email");
	        pw.println("* contact.telecom.value = \"v2-to-fhir@lists.hl7.org\"");
	        Calendar cal = Calendar.getInstance();
	        pw.printf("* date = \"%tF\"%n", cal);
	        pw.printf("* copyright = \"Copyright (c) %d, HL7 International, Inc., All Rights Reserved.\"%n", cal.get(Calendar.YEAR));
		} catch (IOException e) {
			log.println("Cannot write to " + f + ": " + e.getMessage());
		}
	}
}
