package org.hl7.v2tofhir;

import java.io.File;
import java.io.FileReader;
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
import java.util.Set;
import java.util.TreeMap;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOCase;
import org.apache.commons.io.filefilter.WildcardFileFilter;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.tuple.Triple;

import com.opencsv.CSVReader;

public class Convert {

    private static final String MAP_OUTPUT_DIR = "tank/ig-data/input/pagecontent/";
    private static final String FHIR_PREFIX = "http://hl7.org/fhir/R4";
    private static int fileCount = 0;
    public static Map<String, Set<Converter>> generated = new HashMap<>();
    public static void main(String args[]) {
        String output = ".";
        String download = null;
        boolean success = true;
        for (String arg: args) {
            try {
                if (arg.startsWith("-e")) {
                    break; // We're done
                }
                if (arg.startsWith("-o")) {
                    output = arg.substring(2);
                    File dir = new File(output);
                    if (!dir.exists()) {
                        dir.mkdirs();
                    }
                    continue;
                } else if (arg.startsWith("-d")) {
                    download = arg.substring(2);
                    downloadAll(download, output, true);
                    continue;
                } else if (arg.startsWith("-r")) {
                    download = arg.substring(2);
                    downloadAll(download, output, false);
                    continue;
                }
                File f = new File(arg);
                if (!f.exists()) {
                    ConverterImpl.report(true, arg, "'%s' does not exist.\n", arg);
                } else if (f.isDirectory()) {
                    for (File l : FileUtils.listFiles(f, new String[] { "csv" }, false)) {
                        convert(l, output);
                    }
                } else {
                    convert(f, output);
                }
            } catch (Exception e) {
                ConverterImpl.report(true, arg, "Unexpected error during conversion of '%s'.%n", arg);
                e.printStackTrace();
                success = false;
            }
        }

        // For each converted piece of content, generate the mapping outputs.
        try {
            generateMapOutputs();
        } catch (Exception e) {
            ConverterImpl.report(true, "N/A", "Unexpected error generating map tables.");
            e.printStackTrace();
            success = false;
        }

        success = success && ConverterImpl.printLinkData();

        System.out.printf("%d files processed, %d errors, %d warnings%n", fileCount, ConverterImpl.getErrorCount(), ConverterImpl.getWarnCount());
        System.err.printf("%d files processed, %d errors, %d warnings%n", fileCount, ConverterImpl.getErrorCount(), ConverterImpl.getWarnCount());
        System.exit(success ? 0 : 1);
    }

    private static void generateMapOutputs() {
        String files[] = { MAP_OUTPUT_DIR + "7_message_maps.md", MAP_OUTPUT_DIR + "8_segment_maps.md", MAP_OUTPUT_DIR + "9_datatype_maps.md", MAP_OUTPUT_DIR + "10_coding_system_maps.md" };
        String types[] = { "Message", "Segment", "Datatype", "Table" };

        Map<String, Map<String, Triple<String, String, String>>> m = ConverterMap.getMap();

        for (int i = 0; i < files.length; i++) {
            System.out.println(types[i]);
            generateMapTables(files[i], generated.get(types[i]), files[i], m);
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

    private static void generateMapTables(String sourceFileToModify, Set<Converter> set, String chapterDataFile, Map<String, Map<String, Triple<String, String, String>>> m) {
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
                    System.err.printf("* [%s](%s) - %s%n", link, subchap.getData().getRight(), subchap.getData().getMiddle());
                } else {
                    pw.printf("* [%s](%s) - %s%n", link, subchap.getData().getRight(), subchap.getData().getMiddle());
                }
            }
        }

        pw.printf("<h2 style='--heading-prefix: \"\"' id='mapping'>Mapping</h2>%n"
            + "{%% include %s_mapping.md %%}%n", type.replace(" ", "").toLowerCase());

        pw.printf("%n<div id=\"disqus_thread\"></div>%n" +
            "<script>%n" +
            "var disqus_config = function () {%n" +
            "this.page.url = \"http://build.fhir.org.hl7/v2-to-fhir/branches/master/%s.html\"; // Replace PAGE_URL with your page's canonical URL variable%n" +
            "this.page.identifier = this.page.url.substring(this.page.url.lastIndexOf(\"/\")+1, this.page.url.lastIndexOf(\".\")); // Replace PAGE_IDENTIFIER with your page's unique identifier variable%n" +
            "};%n" +
            "(function() { // DON'T EDIT BELOW THIS LINE%n" +
            "var d = document, s = d.createElement('script');%n" +
            "s.src = 'https://v2-to-fhir.disqus.com/embed.js';%n" +
            "s.setAttribute('data-timestamp', +new Date());%n" +
            "(d.head || d.body).appendChild(s);%n" +
            "})();%n" +
            "</script>%n" +
            "<noscript>%n" +
            "    Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a>%n" +
            "</noscript>%n" +
            "%n" +
            "", StringUtils.substringBeforeLast(StringUtils.substringAfter(cDataFile.getName(),"_"),"."));
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
        Triple<String, String, String>
            segData = struct.get(c.getSourceName()),
            chapData = title.get(segData.getLeft());

        addTitlesToIndex(m, chapters, c, segData, chapData);
    }

    private static String getFhirLocation(Map<String, Map<String, Triple<String, String, String>>> m, String targetName) {
        if (m.get("FHIR Resource").get(targetName) != null) {
            return FHIR_PREFIX + "/" + targetName + ".html";
        }
        if (m.get("FHIR Data Type").get(targetName) != null) {
            return FHIR_PREFIX + "/datatypes.html#" + targetName;
        }
        if (targetName.contains("V2")) {
            return FHIR_PREFIX + "/" + targetName.replace(" ", "/") + "/index.html";
        }
        if (targetName.contains("V3")) {
            return FHIR_PREFIX + targetName.replace("V3", "/v3/").replace(" ", "") + "/cs.html";
        }
        return FHIR_PREFIX + "/codesystem-" + targetName.replace(" ", "-").toLowerCase() + ".html";
    }

    private static void createMessageIndex(Map<String, Map<String, Triple<String, String, String>>> m, Chapter chapters,
        Converter c) {
        Chapter chap;
        Chapter subchap;
        Map<String, Triple<String, String, String>> struct = m.get("Structure");
        Map<String, Triple<String, String, String>> msgtype = m.get("Message Type");
        Map<String, Triple<String, String, String>> title = m.get("Chapter");

        Triple<String, String, String>
            structData = struct.get(c.getSourceName()),
            mtData = msgtype.get(StringUtils.substringBefore(structData.getLeft(),"/")),
            titleData = title.get(mtData.getLeft());

        chap = chapters.get(titleData.getLeft());
        chap.setData(titleData);
        subchap = chap.get(c.getSourceName());
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
            String [] nextLine;
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

                    String theUrl = null;
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
                        FileUtils.copyInputStreamToFile(s, new File(output, outputFn));
                    }

                } catch (IOException ioex) {
                    ioex.printStackTrace();
                }
            }
        } catch (IOException ioex) {
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

    private static void convert(File f, String outputLocation) {
        String name = f.getName();
        fileCount++;
        Converter c;
        try {
            if (name.contains("Inventory")) {
                // This is one of the inventory lists, skip it.
                return;
            } else if (name.contains("Data Type")) {
                c = new DatatypeConverter(f);
            } else if (name.contains("Message")) {
                c = new MessageConverter(f);
            } else if (name.contains("Segment") &&
                !name.contains("Segment Action Code")  // Hack to deal with Segment Action Code Vocabulary
            ) {
                c = new SegmentConverter(f);
            } else if (name.contains("Concept Map")) {
                c = new ConceptMapConverter(f);
            } else {
                System.err.printf("Don't know know how to convert '%s'.\n", f);
                return;
            }
            String output = c.getFishFileName();
            if (output.contains("to Unknown.fsh")) {
                System.err.printf("%s does not have any FHIR Mapping Content%n", c.getSourceFileName());
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
}
