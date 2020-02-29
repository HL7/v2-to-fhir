package org.hl7.v2tofhir.tools;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Collection;
import java.util.Collections;

import org.apache.commons.io.FileUtils;
import org.hl7.fhir.convertors.NullVersionConverterAdvisor40;
import org.hl7.fhir.convertors.VersionConvertor_10_30;
import org.hl7.fhir.convertors.VersionConvertor_10_40;
import org.hl7.fhir.convertors.VersionConvertor_30_40;
import org.hl7.fhir.instance.model.api.IBaseResource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ca.uhn.fhir.context.FhirContext;
import ca.uhn.fhir.context.FhirVersionEnum;
import ca.uhn.fhir.parser.DataFormatException;
import ca.uhn.fhir.parser.IParser;
import ca.uhn.fhir.parser.IParserErrorHandler;
import ca.uhn.fhir.parser.StrictErrorHandler;

/**
 * This class uses the HAPI FHIR Converter utilities to convert Resources from
 * one version of FHIR to another. To use it, give it the source folder or file
 * name to convert, and the destination file or folder to convert to, and the
 * target FHIR release (2, 3 or 4).
 * 
 * e.g., java Converter.class source destination 3
 * 
 * It will look for files of the form *.json and *.xml and convert them to files
 * of the same form (either json or xml) using the destination version. It
 * automatically detects the FHIR version of the input content.
 * 
 * a folder containing one or more FHIR resources
 * 
 * @author Keith W. Boone
 *
 */
public class Converter {
    private final static Logger LOGGER = LoggerFactory.getLogger(Testdata.class);
    private final static FhirContext DSTU2_CONTEXT = FhirContext.forDstu2Hl7Org();
    private final static FhirContext STU3_CONTEXT = FhirContext.forDstu3();
    private final static FhirContext R4_CONTEXT = FhirContext.forR4();
    private final static FhirContext[] CONTEXTS = { DSTU2_CONTEXT, STU3_CONTEXT, R4_CONTEXT };
    private final static IParserErrorHandler STRICT = new StrictErrorHandler();
    private static Object CONVERTER = null;

    public static void main(String[] args) throws IOException {
        if (args.length != 3) {
            System.err.printf("Usage: " + "\t java %1$s sourceFile.{json|xml} targetFile.{json|xml} {2|3|4}%n"
                    + "\t java %1$s sourceFolder targetFolder {2|3|4}%n"
                    + " where the number indicates the FHIR version to use%n"
                    + " NOTE: Destination data will be overwritten%n", Converter.class.getName());
            System.exit(-1);
        }

        // Source must exist
        File source = new File(args[0]);
        if (!source.exists()) {
            System.err.printf("%s does not exist%n", args[0]);
        }

        // Destination must either not exist, or be same type as the source.
        File destination = new File(args[1]);
        if (destination.exists() && source.isDirectory() != destination.isDirectory()) {
            if (destination.isDirectory()) {
                System.err.printf("%s is a directory%n", args[1]);
            } else {
                System.err.printf("%s is a file%n", args[1]);
            }
            System.exit(-2);
        }

        FhirContext destContext = null;
        FhirContext sourceContext = null;
        switch (args[2]) {
        case "2":
            destContext = DSTU2_CONTEXT;
            break;
        case "3":
            destContext = STU3_CONTEXT;
            break;
        case "4":
            destContext = R4_CONTEXT;
            break;
        default:
            System.err.printf("The target format must be 2, 3, or 4");
            System.exit(-3);
        }

        Collection<File> inputs = source.isFile() ? Collections.singletonList(source)
                : FileUtils.listFiles(source, new String[] { "xml", "json" }, true);

        String root = source.getCanonicalPath();

        for (File f : inputs) {
            File dest = null;
            if (source.isFile()) {
                dest = destination;
            } else {
                String target = f.getCanonicalPath().substring(root.length());
                dest = new File(destination.getPath() + target);
            }

            IBaseResource read = null;
            if (sourceContext == null) {
                read = readFile(f);
                switch (read.getStructureFhirVersionEnum()) {
                case DSTU2_HL7ORG:
                    sourceContext = DSTU2_CONTEXT;
                    break;
                case DSTU3:
                    sourceContext = STU3_CONTEXT;
                    break;
                case R4:
                    sourceContext = R4_CONTEXT;
                    break;
                default:
                    /// This can never happen.
                    break;
                }

            } else {
                read = readFile(f, sourceContext);
            }
            IParser p = null;
            if (dest.getName().endsWith(".xml")) {
                p = destContext.newXmlParser().setPrettyPrint(true);
            } else {
                p = destContext.newXmlParser().setPrettyPrint(true);
            }

            if (CONVERTER == null) {
                CONVERTER = getConverter(sourceContext, destContext);
            }
            read = convert(read);
            String result = p.encodeResourceToString(read);
            FileUtils.writeStringToFile(dest, result, StandardCharsets.UTF_8);
        }
    }

    private static IBaseResource convert(IBaseResource read) {
        if (CONVERTER instanceof VersionConvertor_10_30) {
            if (read instanceof org.hl7.fhir.instance.model.Resource) {
                return ((VersionConvertor_10_30) CONVERTER)
                        .convertResource((org.hl7.fhir.instance.model.Resource) read);
            }
            return ((VersionConvertor_10_30) CONVERTER).convertResource((org.hl7.fhir.dstu3.model.Resource) read);
        }

        if (CONVERTER instanceof VersionConvertor_10_40) {
            if (read instanceof org.hl7.fhir.instance.model.Resource) {
                return ((VersionConvertor_10_40) CONVERTER)
                        .convertResource((org.hl7.fhir.instance.model.Resource) read);
            }
            return ((VersionConvertor_10_40) CONVERTER).convertResource((org.hl7.fhir.r4.model.Resource) read);
        }

        if (CONVERTER instanceof VersionConvertor_30_40) {
            if (read instanceof org.hl7.fhir.dstu3.model.Resource) {
                return VersionConvertor_30_40.convertResource((org.hl7.fhir.dstu3.model.Resource) read, false);
            }
            return VersionConvertor_30_40.convertResource((org.hl7.fhir.r4.model.Resource) read, false);
        }
        throw new IllegalStateException("Converter is not initialized.");
    }

    static IBaseResource readFile(File f, FhirContext c) throws IOException {
        boolean isXml = f.getName().endsWith(".xml");
        IParser p = isXml ? c.newXmlParser() : c.newJsonParser();

        String data = null;
        try {
            data = FileUtils.readFileToString(f, StandardCharsets.UTF_8);
        } catch (IOException e) {
            LOGGER.warn("Error reading {}", f, e);
            throw e;
        }

        p.setParserErrorHandler(STRICT);
        return p.parseResource(data);
    }

    static IBaseResource readFile(File f) throws IOException {
        // Assume anything not XML is JSON.
        boolean isXml = f.getName().endsWith(".xml");

        String data = null;
        try {
            data = FileUtils.readFileToString(f, StandardCharsets.UTF_8);
        } catch (IOException e) {
            LOGGER.warn("Error reading {}", f, e);
            throw e;
        }
        for (FhirContext c : CONTEXTS) {
            IParser p = isXml ? c.newXmlParser() : c.newJsonParser();
            // Use the strict error handler so that a failed resource read will try
            // with a different parser the next time through the loop
            p.setParserErrorHandler(STRICT);
            try {
                return p.parseResource(data);
            } catch (DataFormatException sfex) {
                LOGGER.warn("{} is not {}: {}", f, c.getVersion().getVersion(), sfex.getMessage());
            }
        }

        throw new DataFormatException(f + " is not a recongized FHIR Release");
    }

    public static Object getConverter(FhirContext from, FhirContext to) {
        FhirVersionEnum lower = from.getVersion().getVersion(), higher = to.getVersion().getVersion();
        if (lower.isNewerThan(higher)) {
            FhirVersionEnum temp = higher;
            higher = lower;
            lower = temp;
        }

        if (lower == FhirVersionEnum.DSTU2_HL7ORG) {
            switch (higher) {
            case DSTU3:
                return new MyVersionConverter_10_30();
            case R4:
                return new MyVersionConverter_10_40();
            default:
                break;
            }
        } else if (lower == FhirVersionEnum.DSTU3 && higher == FhirVersionEnum.R4) {
            return new VersionConvertor_30_40();
        }
        throw new IllegalArgumentException("Unsupported Conversion Pair (" + from.getVersion().getVersion() + ", "
                + to.getVersion().getVersion() + ")");
    }

}
