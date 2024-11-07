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
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.TreeMap;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOCase;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.filefilter.WildcardFileFilter;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.tuple.Triple;

import com.opencsv.CSVReader;

public class Convert {

    private static String MAP_OUTPUT_DIR = "input/pagecontent/";
    private static final String FHIR_PREFIX = "http://hl7.org/fhir/R4";
    private static final String FILE_TO_URLMAP = "filetourl.properties";
    private static int fileCount = 0;
    public static Map<String, Set<Converter>> generated = new HashMap<>();
    public static Map<String, String> outputFileMap = new HashMap<>();

    public static void main(String ... args) {
        String output = ".";
        String download = null;
        boolean success = true;
        for (String arg: args) {
            if (arg.startsWith("-e")) {
                break; // We're done
            }
            if (arg.startsWith("-o")) {
                output = arg.substring(2);
                File dir = new File(output);
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                // MAP_OUTPUT_DIR = new File(dir, PAGE_CONTENT_DIR).getPath() + "/";
                continue;
            } else if (arg.startsWith("-d")) {
                download = arg.substring(2);
                outputFileMap.clear();
                outputFileMap.put(".", new File(output).getPath());
                downloadAll(download, output, true);
                writeFileToUrlMap(output);
                continue;
            } else if (arg.startsWith("-r")) {
                download = arg.substring(2);
                outputFileMap.clear();
                outputFileMap.put(".", new File(output).getPath());
                downloadAll(download, output, false);
                writeFileToUrlMap(output);
                continue;
            }
            File f = new File(arg);
            if (!f.exists()) {
                ConverterImpl.report(true, arg, 0, "'%s' does not exist.\n", arg);
            } else if (f.isDirectory()) {
                for (File l : FileUtils.listFiles(f, new String[] { "csv" }, false)) {
                    addToConversions(l, output);
                }
            } else {
            	addToConversions(f, output);
            }
        }
        convertAll();
        // For each converted piece of content, generate the mapping outputs.
        try {
            generateMapOutputs();
        } catch (Exception e) {
            ConverterImpl.report(true, "N/A", 0, "Unexpected error generating map tables.");
            e.printStackTrace();
            success = false;
        }

        success = success && ConverterImpl.printLinkData(output);

        System.out.printf("%d files processed, %d errors, %d warnings%n", fileCount, ConverterImpl.getErrorCount(), ConverterImpl.getWarnCount());
        System.err.printf("%d files processed, %d errors, %d warnings%n", fileCount, ConverterImpl.getErrorCount(), ConverterImpl.getWarnCount());
        System.exit(success ? 0 : 1);
    }

    private static Map<File, String> conversions = new TreeMap<>(Convert::compareByFileType);
    
    private static void addToConversions(File f, String output) {
    	conversions.put(f, output);
	}
    // Put Concept Map conversions first in the list.
    private static int compareByFileType(File f1, File f2) {
    	if (f1 == f2 || f1.equals(f2)) {
    		return 0;
    	}
    	int result = getType(f1.getName()).compareTo(getType(f2.getName()));
    	return result == 0 ? f1.getName().compareTo(f2.getName()) : result;
    }
    private static boolean convertAll() {
    	boolean success = true;
    	for (Map.Entry<File, String> e: conversions.entrySet()) {
            try {
            	convert(e.getKey(), e.getValue());
            } catch (Exception ex) {
                ConverterImpl.report(true, "N/A", 0, "Unexpected error generating map tables.");
                ex.printStackTrace();
                success = false;
            }
    	}
    	return success;
    }

	/**
     * Write a map of files to URLs for mapping during
     * generation stage.
     * @param output    The folder in which to put the map.
     */
    private static void writeFileToUrlMap(String output) {
        File f = new File(output, FILE_TO_URLMAP);
        try (FileWriter w = new FileWriter(f)) {
            Properties p = new Properties();
            p.putAll(outputFileMap);
            p.store(w, null);
        } catch (Exception ex) {
            ConverterImpl.report(true, f.getPath(), 0, "Cannot store file map: %s%n", f.getPath(), ex);
        }
    }

    private static void generateMapOutputs() {
        String[] files = { MAP_OUTPUT_DIR + "message_maps.md", MAP_OUTPUT_DIR + "segment_maps.md", MAP_OUTPUT_DIR + "datatype_maps.md", MAP_OUTPUT_DIR + "coding_system_maps.md" };
        String[] types = { "Message", "Segment", "Datatype", "Table" };

        Map<String, Map<String, Triple<String, String, String>>> m = ConverterMap.getMap();

        for (int i = 0; i < files.length; i++) {
            System.out.println(types[i]);
            generateMapTables(generated.get(types[i]), files[i], m);
        }
    }

    /**
     * This class tracks the content in each "Chapter"
     */
    private static class Chapter {
        /** The name of the chapter */
        private Triple<String, String, String> stuff;
        /** The mappings produced */
        private Map<String, Chapter> subparts = new TreeMap<String, Chapter>();

        private void setData(Triple<String, String, String> data) {
            stuff = data;
        }

        private Triple<String, String, String> getData() {
            return stuff;
        }

        private Chapter get(String key) {
            Chapter chap = subparts.get(key);
            if (chap == null) {
                subparts.put(key, chap = new Chapter());
            }
            return chap;
        }

        private Collection<Chapter> parts() {
            return subparts.values();
        }
    }

    private static void generateMapTables(Set<Converter> set, String chapterDataFile, Map<String, Map<String, Triple<String, String, String>>> m) {
        if (set == null || set.isEmpty()) {
            return;
        }

        Chapter chapters = new Chapter();
        set.forEach(c -> {
            String type = c.getType();
            switch (type) {
            case "Datatype":
                createDatatypeIndex(m, chapters, c);
                break;
            case "Message":
                createMessageIndex(m, chapters, c);
                break;
            case "Table":
                createConceptMapIndex(m, chapters, c);
                break;
            case "Segment":
                createSegmentIndex(m, chapters, c);
                break;
            }
        });
        String type = set.iterator().next().getType();

        // Read in the chapter data
        File cDataFile = new File(chapterDataFile);
        String chapterData = "";
        try {
            chapterData = FileUtils.readFileToString(cDataFile, StandardCharsets.UTF_8);
            int position = chapterData.indexOf("[//End]:");
            if (position < 0) {
                position = chapterData.length();
            }
            chapterData = chapterData.substring(0, position);
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }

        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        pw.write(chapterData);
        pw.write("[//End]: # Content after this marker will be updated during generation\n");

        for (Chapter chap: chapters.parts()) {
            pw.printf("%n### %s %s%n%n", chap.getData().getLeft(), chap.getData().getMiddle());
            for (Chapter subchap: chap.parts()) {
                String link = subchap.getData().getLeft();
                if (link.equals("Unknown")) {
                    System.err.printf("* [%s](%s) - %s%n", link, subchap.getData().getRight(), subchap.getData().getMiddle().replaceAll("/V2/", "/v2/"));
                } else {
                    pw.printf("* [%s](%s) - %s%n", link, subchap.getData().getRight(), subchap.getData().getMiddle().replaceAll("/V2/", "/v2/"));
                }
            }
        }

        pw.printf("<h2 style='--heading-prefix: \"\"' id='mapping'>Mapping</h2>%n"
            + "{%% include %s_mapping.md %%}%n", type.replace(" ", "").toLowerCase());

        pw.close();

        try {
            FileUtils.write(cDataFile, sw.toString(), StandardCharsets.UTF_8);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void createConceptMapIndex(Map<String, Map<String, Triple<String, String, String>>> m,
        Chapter chapters, Converter c) {

        Map<String, Triple<String, String, String>> struct = m.get("Table");
        Map<String, Triple<String, String, String>> title = m.get("Chapter");

        Triple<String, String, String>
            dtData = struct.get(c.getSourceName()),
            chapData = title.get("2C");

        if (dtData == null) {
            // Deal with distinctions between HL7 defined and User defined tables
            dtData = struct.get(c.getSourceName().replace("HL7", "User"));
        }

        addTitlesToIndex(m, chapters, c, dtData, chapData);
    }

    private static void createDatatypeIndex(Map<String, Map<String, Triple<String, String, String>>> m,
        Chapter chapters, Converter c) {

        Map<String, Triple<String, String, String>> struct = m.get("Data Type");
        Map<String, Triple<String, String, String>> title = m.get("Chapter");

        Triple<String, String, String>
            dtData = struct.get(c.getSourceName()),
            chapData = title.get("2A");

        addTitlesToIndex(m, chapters, c, dtData, chapData);
    }

    private static void addTitlesToIndex(Map<String, Map<String, Triple<String, String, String>>> m, Chapter chapters,
        Converter c, Triple<String, String, String> dtData, Triple<String, String, String> chapData) {
    	/** The problem with hyphenated terms is somewhere in here */
        Chapter chap;
        Chapter subchap;
        chap = chapters.get(chapData.getLeft());
        chap.setData(chapData);
        subchap = chap.get(c.getSourceName() + c.getQualifier() + c.getTargetName());
        if (dtData == null) {
            subchap.setData(Triple.of("Unknown",
                c.getSourceFileName() + " to FHIR " + c.getTargetName(), c.getHtmlFileName()));
        } else {
            subchap.setData(Triple.of(dtData.getRight() + c.getQualifier(),
                dtData.getMiddle()  + " to FHIR [" + c.getTargetName() + "](" + getFhirLocation(m, c.getTargetName()) + ")",
                c.getHtmlFileName()));
        }
    }

    private static void createSegmentIndex(Map<String, Map<String, Triple<String, String, String>>> m, Chapter chapters,
        Converter c) {

        Map<String, Triple<String, String, String>> struct = m.get("Segment");
        Map<String, Triple<String, String, String>> title = m.get("Chapter");
        Triple<String, String, String> segData = struct.get(c.getSourceName());
        if (segData == null) {
            ConverterImpl.report(true, c.getSourceFileName(), 1, "Missing data for %s", c.getSourceName());
            return;
        }
        Triple<String, String, String> chapData = title.get(segData.getLeft());

        addTitlesToIndex(m, chapters, c, segData, chapData);
    }

    private static String getFhirLocation(Map<String, Map<String, Triple<String, String, String>>> m, String targetName) {
        String ucName = targetName;
        targetName = targetName.toLowerCase();
        if (targetName.contains(".")) {
            String rootName = StringUtils.substringBefore(targetName, ".");
            if (m.get("FHIR Resource").get(rootName) != null) {
                return FHIR_PREFIX + "/" + rootName + "-definitions.html#" + targetName;
            }
            if (m.get("FHIR Data Type").get(rootName) != null) {
                return  FHIR_PREFIX + "/datatypes-definitions.html#" + targetName;
            }
        }
        if (m.get("FHIR Resource").get(targetName) != null) {
            return FHIR_PREFIX + "/" + targetName + ".html";
        }
        if (m.get("FHIR Data Type").get(targetName) != null) {
            return FHIR_PREFIX + "/datatypes.html#" + targetName;
        }
        if (targetName.contains("v2")) {
            return FHIR_PREFIX + "/" + targetName.replace(" ", "/") + "/index.html";
        }
        if (targetName.contains("v3")) {
            return FHIR_PREFIX + ucName.replace("V3", "/v3/").replace(" ", "") + "/cs.html";
        }
        return FHIR_PREFIX + "/codesystem-" + targetName.replace(" ", "-") + ".html";
    }

    private static void createMessageIndex(Map<String, Map<String, Triple<String, String, String>>> m, Chapter chapters,
        Converter c) {
        Chapter chap;
        Chapter subchap;
        Map<String, Triple<String, String, String>> struct = m.get("Structure");
        Map<String, Triple<String, String, String>> msgtype = m.get("Message Type");
        Map<String, Triple<String, String, String>> title = m.get("Chapter");

        Triple<String, String, String> structData = struct.get(c.getSourceName());
        if (structData == null) {
           ConverterImpl.report(true, "Structure %s not recognized.", 1, "N/A", c.getSourceName());
           return;
        }
        Triple<String, String, String>
            mtData = msgtype.get(StringUtils.substringBefore(structData.getLeft(),"/"));
        if (mtData == null) {
            ConverterImpl.report(true, "Message Type %s not recognized.", 1, "N/A", structData.getLeft());
            return;
        }
        Triple<String, String, String>
            titleData = title.get(mtData.getLeft());
        if (titleData == null) {
            ConverterImpl.report(true, "Title %s not recognized.", 1, "N/A", mtData.getLeft());
            return;
        }
        chap = chapters.get(titleData.getLeft());
        if (chap == null) {
            ConverterImpl.report(true, "Chapter %s not recognized.", 1, "N/A", titleData.getLeft());
            return;
        }
        chap.setData(titleData);
        subchap = chap.get(c.getSourceName());
        if (subchap == null) {
            ConverterImpl.report(true, "Chapter Section %s not recognized.", 1, "N/A", c.getSourceName());
            return;
        }

        subchap.setData(Triple.of(
            structData.getRight() +c.getQualifier(),
            structData.getMiddle(), c.getHtmlFileName()));
    }

    private static void downloadAll(String download, String output, boolean getAll) {
        if (download.contains("*") || download.contains("?")) {
            for (File f: FileUtils.listFiles(new File("."), new WildcardFileFilter(download, IOCase.SYSTEM), null)) {
                downloadAll(f.getPath(), output, getAll);
            }
            return;
        }
        try (CSVReader reader = new CSVReader(new FileReader(download));) {
            String nextLine[], theUrl = null;
            int count = 0;
            while ((nextLine = reader.readNext()) != null) {
                if (++count == 1) {
                    continue;
                }
                // Skip those items not ready if !getAll
                if (!getAll &&
                    !nextLine[1].toLowerCase().contains("ready") &&
                    !nextLine[2].toLowerCase().contains("ready")) {
                    continue;
                }

                try {
                    //Relationship,HL70063,,,,https://docs.google.com/spreadsheets/d/1BDbtJ9kKKpDXIG8GAaRyqpb_iUKBaaU4b0bcxHo0KoI/edit#gid=0
                    // 1 = FHIR, 2 = V2, 3-5, 6 = URL

                    theUrl = null;
                    for (int i = 3; i < 6 && i < nextLine.length; i++) {
                        if (nextLine[i].startsWith("https")) {
                            theUrl = nextLine[i];
                            break;
                        }
                    }
                    if (theUrl == null) {
                        continue;
                    }
                    URLConnection con = getConnection(theUrl);
                    try (InputStream s = con.getInputStream()) {
                        String fn = con.getHeaderField("Content-Disposition");
                        // Set a default value for the output file name.
                        String outputFn = getOutputFilename(nextLine, fn);
                        System.out.printf("Downloading: from %s to %s%n", StringUtils.substringBeforeLast(theUrl,"/"), outputFn);
                        String content = IOUtils.toString(s, StandardCharsets.UTF_8);
                        if (content.contains("DOCTYPE") || content.contains("<html")) {
                            ConverterImpl.report(true, outputFn, 1, "Cannot access content for '%s'.%n", outputFn);
                        } else {
                            File outputFile = new File(output, outputFn);
                            FileUtils.writeStringToFile(outputFile, content, StandardCharsets.UTF_8);
                            outputFileMap.put(outputFile.getName(), theUrl);
                        }
                    }
                    fileCount++;
                } catch (IOException ioex) {
                    System.err.printf("Failure downloading %s to %s.csv%n", theUrl, nextLine[0]);
                    ioex.printStackTrace();
                }
            }
        } catch (IOException ioex) {
            System.err.printf("Failure reading from %s%n", download);
            ioex.printStackTrace();
        }
    }

    private static URLConnection getConnection(String theUrl) throws IOException, MalformedURLException {
        URLConnection con = new URL(StringUtils.substringBeforeLast(theUrl,"/") + "/export?format=csv").openConnection();
        con.setRequestProperty("Accept", "text/csv");
        con.connect();
        return con;
    }

    private static String getOutputFilename(String[] nextLine, String fn) {
        String outputFn = "HL7 Concept Map_ " + toFilename(nextLine[0]) + " - Sheet1.csv";
        if (fn != null) {
            String fnParts[] = fn.split("[;]\\s*");
            for (String fnPart: fnParts) {
                if (fnPart.startsWith("filename*=UTF-8''")) {
                    outputFn = fnPart.substring(17);
                }
            }

        }
        return StringUtils.replaceChars(
            URLDecoder.decode(outputFn, StandardCharsets.UTF_8),
            "<>:\"|?*/\\", "_______");
    }

    private static String toFilename(String string) {
        return string.replace(":","_").replace("/", "");
    }

    private static String getType(String name) {
    	name = name.toLowerCase().replace(" ", "");
        if (name.contains("inventory")) {
            return "Inventory";
        } 
        if (name.contains("datatype")) {
            return "Data Type";
        } 
        if (name.contains("segment")) {
        	return "Segment";
        }
        if (name.contains("conceptmap")) {
        	return "Concept Map";
        } 
        if (name.contains("message")) {
            return "Message";
        } 
        return "Unknown";
    }
    private static void convert(File f, String outputLocation) {
        String name = f.getName();
        ensureFileMapLoaded(f);
        String sourceUrl = outputFileMap.get(name);
        fileCount++;
        Converter c;
        try {
        	switch (getType(name)) {
    		case "Inventory":
    			return;
    		case "Data Type":
                c = new DatatypeConverter(f, sourceUrl);
                break;
    		case "Message":
                c = new MessageConverter(f, sourceUrl);
                break;
    		case "Concept Map":
                c = new ConceptMapConverter(f, sourceUrl);
    			break;
    		case "Segment":
                c = new SegmentConverter(f, sourceUrl);
                break;
    		case "Unknown":
            default:
                System.err.printf("Don't know know how to convert '%s'.\n", f);
                return;
    		}
        	
            String output = c.getFishFileName();
            if (output.contains("to Unknown.fsh")) {
                ConverterImpl.report(false, c.getSourceFileName(), 1, "%s does not have any FHIR Mapping Content%n", c.getSourceFileName());
                return;
            }
            File out = new File(outputLocation, output);
            System.out.printf("Converting '%s' to '%s'%n", f, out);
            c.store(out);
            Set<Converter> s = generated.get(c.getType());
            if (s == null) {
                s = new HashSet<Converter>();
                generated.put(c.getType(), s);
            }
            s.add(c);

        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    /**
     * For a given file, ensure that the FILE_TO_URLMAP associated with it is
     * loaded.
     * @param f The file.
     */
    private static void ensureFileMapLoaded(File f) {
        File folder = f.getParentFile();
        String filename = StringUtils.defaultString(outputFileMap.get("."));
        if (filename.length() == 0 || !folder.getPath().endsWith(filename)) {
            File mapFile = new File(folder, FILE_TO_URLMAP);
            try (FileReader r = new FileReader(mapFile)) {
                Properties p = new Properties();
                p.load(r);
                outputFileMap.clear();
                p.forEach((k, v) -> outputFileMap.put((String)k, (String)v));
            } catch (Exception ex) {

            }
        }
    }
}
