package org.hl7.v2tofhir;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

import org.apache.commons.io.FileUtils;

import com.opencsv.CSVReader;

public class Convert {

    public static void main(String args[]) {
        String output = ".";
        String download = null;
        for (String arg: args) {
            if (arg.startsWith("-e")) {
                return; // We're done
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
                downloadAll(download, output);
                continue;
            }
            File f = new File(arg);
            if (!f.exists()) {
                System.err.printf("'%s' does not exist.\n", arg);
            } else if (f.isDirectory()) {
                for (File l : FileUtils.listFiles(f, new String[] { "csv" }, false)) {
                    convert(l, output);
                }
            } else {
                convert(f, output);
            }
        }
    }

    private static void downloadAll(String download, String output) {
        try (CSVReader reader = new CSVReader(new FileReader(download));) {

            String [] nextLine;
            int count = 0;
            while ((nextLine = reader.readNext()) != null) {
                if (++count == 1) {
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
                    URL url = new URL(theUrl);
                    InputStream s = url.openStream();
                    File f = new File(output);
                    f = new File(output, "HL7 Concept Map_ " + toFilename(nextLine[0]) + " - Sheet1.csv");
                    FileUtils.copyInputStreamToFile(s, f);
                } catch (IOException ioex) {
                    ioex.printStackTrace();
                }
            }
        } catch (IOException ioex) {
            ioex.printStackTrace();
        }
    }

    private static String toFilename(String string) {
        return string.replace(":","_").replace("/", "").replace("[", "!").replace("]", "");
    }

    private static void convert(File f, String outputLocation) {
        String name = f.getName();
        String parts[] = name.split("\\s*[\\._\\-]\\s*");
        Converter c;
        try {
            if (parts[2].contains("Inventory")) {
                // This is one of the inventory lists, skip it.
                return;
            } else if (parts[0].contains("Concept Map")) {
                c = new ConceptMapConverter(f);
            } else if (parts[0].contains("Message")) {
                c = new MessageConverter(f);
            } else if (parts[0].contains("Segment")) {
                c = new SegmentConverter(f);
            } else {
                System.err.printf("Don't know know how to convert '%s'.\n", f);
                return;
            }
            String output = String.format("%s %s to %s.fsh", c.getType(), c.getSourceName(), c.getTargetName());
            File out = new File(outputLocation, output);
            System.out.printf("Converting '%s' to '%s'%n", f, out);
            c.store(out);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
}
