/**
 * 
 */
package org.hl7.v2tofhir.testing;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.tika.parser.txt.CharsetDetector;
import org.apache.tika.parser.txt.CharsetMatch;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ca.uhn.hl7v2.DefaultHapiContext;
import ca.uhn.hl7v2.HL7Exception;
import ca.uhn.hl7v2.HapiContext;
import ca.uhn.hl7v2.model.Message;
import ca.uhn.hl7v2.parser.CanonicalModelClassFactory;
import ca.uhn.hl7v2.parser.Parser;
import ca.uhn.hl7v2.util.Terser;
import ca.uhn.hl7v2.validation.Rule;
import ca.uhn.hl7v2.validation.builder.ValidationRuleBuilder;
import ca.uhn.hl7v2.validation.impl.EncodingRuleBinding;
import ca.uhn.hl7v2.validation.impl.MessageRuleBinding;
import ca.uhn.hl7v2.validation.impl.PrimitiveTypeRuleBinding;
import ca.uhn.hl7v2.validation.impl.RuleBinding;
import ca.uhn.hl7v2.validation.impl.ValidationContextImpl;

/**
 * This class supports test data management for the package. To generate test
 * data from a collection of input files, place the files in the incoming
 * folder. This collection of files will be used to put the messages into
 * appropriate folders.
 * 
 * @author Keith W. Boone
 *
 */
public class Testdata {
    private final static Logger LOGGER = LoggerFactory.getLogger(Testdata.class);
    private final static String MESSAGE_LOCATION = "src/test/resources/v2/";
    /**
     * Configuration variables to control trimming options.
     */
    private static String trimV2_ST = "false";
    private static String trimV2_FT = "true";
    private static String trimV2_TX = "true";

    public final static class VersionInfo {
        private String version;
        private boolean isXml;
        public VersionInfo(String version, boolean isXml) {
            this.version = version;
            this.isXml = isXml;
        }
        public VersionInfo(String version) {
            this(version, false);
        }
        public VersionInfo() {
            this(null, false);
        }
        public String getVersion() {
            return version;
        }
        public void setVersion(String version) {
            this.version = version;
        }
        public boolean isXml() {
            return isXml;
        }
        public void setXml(boolean isXml) {
            this.isXml = isXml;
        }
    }
    /**
     * YES is a collection of terms that mean do this.
     * 
     * Be friendly, allow yes, enable, true or 1 to mean enable, all others mean
     * disable.
     */
    public final static List<String> YES = Arrays.asList("yes", "enable", "true", "1");

    @SuppressWarnings("serial")
    static class MyNoValidationBuilder extends ValidationRuleBuilder {
        protected void configure() {
            if (YES.contains(trimV2_ST)) {
                forAllVersions().primitive("ST").leftTrim();
            }
            if (YES.contains(trimV2_FT)) {
                forAllVersions().primitive("FT").leftTrim();
            }
            if (YES.contains(trimV2_TX)) {
                forAllVersions().primitive("TX").rightTrim();
            }
        }
    };

    /**
     * Class to support specializations for validation.
     * 
     * @author Keith W. Boone
     */
    @SuppressWarnings("serial")
    static class MyNoValidation extends ValidationContextImpl {
        MyNoValidationBuilder builder = new MyNoValidationBuilder();

        public MyNoValidation() {
            super();
            for (RuleBinding<? extends Rule<?>> ruleBinding : builder.initialize()) {
                if (ruleBinding instanceof MessageRuleBinding)
                    getMessageRuleBindings().add((MessageRuleBinding) ruleBinding);
                else if (ruleBinding instanceof EncodingRuleBinding)
                    getEncodingRuleBindings().add((EncodingRuleBinding) ruleBinding);
                else if (ruleBinding instanceof PrimitiveTypeRuleBinding)
                    getPrimitiveRuleBindings().add((PrimitiveTypeRuleBinding) ruleBinding);
            }
        }
    };

    /**
     * @param args
     * @throws IOException
     * @throws HL7Exception
     */
    public static void main(String[] args) throws IOException, HL7Exception {
        System.out.println(new File(".").getCanonicalPath());
        transferIncoming();
    }

    /**
     * Transfer data from the test/resources/v2/incoming folder to appropriate
     * locations in test/resources/v2
     * 
     * @throws HL7Exception
     * @throws IOException
     */
    public static void transferIncoming() throws HL7Exception, IOException {
        // Get a list of text files.
        Collection<File> list = FileUtils.listFiles(new File(MESSAGE_LOCATION + "incoming"), new String[] { "txt", "er7", "xml", "hl7" },
                false);
        List<File> errors = new ArrayList<File>();
        CanonicalModelClassFactory MCF281 = new CanonicalModelClassFactory("2.8.1");
        processFiles(MCF281, list, errors);
        
        if (!errors.isEmpty()) {
            CanonicalModelClassFactory MCF231 = new CanonicalModelClassFactory("2.3.1");
            list = errors;
            errors = new ArrayList<File>();
            processFiles(MCF231, list, errors);
        }
    }

    private static void processFiles(CanonicalModelClassFactory mcf, Collection<File> list, List<File> errors) throws HL7Exception {
        List<String> files = new ArrayList<String>(); 
        Set<String> folders = new HashSet<String>();
        for (File f : list) {
            try {
                files.add(processFile(f, errors));
            } catch (IOException ioex) {
                LOGGER.error("IO Error processing {}", f, ioex);
            }
        }
        // report on files created.
        for (String n: files) {
            LOGGER.info("Created {}", n);
            String folder = StringUtils.substringBeforeLast(n, "/");
            folders.add(folder);
        }
        
        for (String folder : folders) {
            // For each folder, find the README.md file
            try {
                String readme = FileUtils.readFileToString(new File(folder, "README.md"), StandardCharsets.UTF_8);
                String lines[] = readme.split("\n");
                int index = 0;
                int start = 0, end = 0;
                for (String line: lines) {
                    if (line.matches("^-+\\|-+\\s+$")) {
                        start = index - 1;
                        break;
                    }
                }
                if (start != 0) {
                    for (end = start + 2; end < lines.length; end++) {
                        if (lines[end].matches("^\\s+$")) {
                            break;
                        }
                    }
                }
                
            } catch (IOException e) {
                LOGGER.error("README.md does not exist in {}", folder);
            }
            
            try {
                // We have no table, so create it
                StringBuilder b = new StringBuilder();
                b.append("File|Description\n");
                b.append("----|-----------\n");
                Collection<File> list2 = FileUtils.listFiles(new File(folder), new String[] { "txt", "xml" }, false);
                for (File f: list2) {
                    b.append(f.getName()).append("|\n");
                }
    
                FileUtils.writeStringToFile(new File(folder, "README.md"), b.toString(), StandardCharsets.UTF_8, true);
            } catch (IOException e) {
                LOGGER.error("Error updating README.md in {}", folder, e);
            }
        }
    }
    
    static VersionInfo getVersion(String msg) {
        
        if (!msg.trim().startsWith("MSH")) {
            // This is not V2 compliant, check for XML
            if (msg.matches("^.*<\\s+MSH\\s+>.*$")) {
                // This message contains an <MSH> element, so it likely
                // contains <MSH.12.1>versionId</MSH.12.1>
                msg = StringUtils.substringAfter(msg, "MSH.12.1");
                msg = StringUtils.substringBefore(msg, "MSH.12.1");
                // replace characters we don't want " > versionId </
                msg = msg.replaceAll("[</> ]+", "");
                if (msg.matches("2\\.[1-8]|2\\.[3578]\\.1|2\\.8\\\\.2")) {
                    return new VersionInfo(msg, true);
                }
                LOGGER.error("Unrecognized HL7 Version {}", msg);
                throw new IllegalArgumentException("Unrecognized HL7 Version");
            }
            LOGGER.error("Unrecognized Content {}{}", 
                    msg.substring(0, Math.max(20, msg.length())), msg.length() > 20 ? "..." : "");
            throw new IllegalArgumentException("Unrecognized Content");
        }
        
        char[] sepChar = { msg.charAt(3) };
        String sep = new String(sepChar);
        if (sepChar[0] != '|') {
            LOGGER.warn("Unusual field seperator: {}", sep);
        }

        // Truncate the string after first CR or LF character
        msg = msg.split("[\r\n]", 2)[0];
        
        String parts[] = msg.split("\\" + sep, 13);
        if (parts.length < 12) {
            LOGGER.error("No version found in header: {} ", msg);
            throw new IllegalArgumentException("Missing Version in Header");
        }
        LOGGER.debug("Detected Version {}", parts[11]);
        return new VersionInfo(parts[11], false);
        
    }
    
    static String processFile(File f, List<File> errors) throws HL7Exception, IOException {
        LOGGER.debug("Processing {}", f);

        // Read the file in binary
        byte[] data = FileUtils.readFileToByteArray(f);
        CharsetDetector csDet = new CharsetDetector();
        csDet.setDeclaredEncoding("UTF-8");
        csDet.setText(data);
        CharsetMatch m = csDet.detect();
        String encoding = m.getName();
        String msg = new String(data, encoding);
        VersionInfo versionInfo = getVersion(msg);
        CanonicalModelClassFactory mcf = new CanonicalModelClassFactory(versionInfo.getVersion());

        try (HapiContext context = new DefaultHapiContext(mcf)) {
            // Set up the parser
            
            context.setValidationContext(new MyNoValidation());
            Parser p = null;
            if (versionInfo.isXml()) {
                p = context.getXMLParser();
            } else {
                p = context.getPipeParser();
                msg = msg.replaceAll("[\r\n]+", "\r");
            }
        
            Message hapiMsg = null;
            try {
                hapiMsg = p.parse(msg);
            } catch (HL7Exception hex) {
                LOGGER.error("Error parsing {}", f, hex);
                errors.add(f);
                throw hex;
            }

            String messageType = hapiMsg.getClass().getSimpleName();
            String parts[] = messageType.split("_");
            if (parts.length == 1) {
                Terser t = new Terser(hapiMsg);
                parts = new String[] { t.get("MSH-9-1"), t.get("MSH-9-2") };
            }
            LOGGER.debug("Found {} {}_{}", versionInfo.getVersion(), parts[0], parts.length > 1 ? parts[1] : "unk"); 
            
            // OK, now we have the message, we need to go figure out how to name it.
            // The existing filename may begin with the message type, we don't care about that.
            String name = StringUtils.substringBeforeLast(f.getName(), ".");
            if (name.toLowerCase().startsWith(parts[0].toLowerCase())) {
                name = name.substring(parts[0].length());
            }
            if (name.charAt(0) == '-' || name.charAt(0) == '_') {
                name = name.substring(1);
            }
            
            if (parts.length > 1) {
                // The existing file name may begin with the message structure, again we don't care.
                if (name.toLowerCase().startsWith(parts[1].toLowerCase())) {
                    name = name.substring(parts[1].length());
                }
                if (name.charAt(0) == '-' || name.charAt(0) == '_') {
                    name = name.substring(1);
                }
            }

            // Replace all repeated sequences of delimiters with - and remove any leading/trailing delims
            name = name.replaceAll("[-._]+", " ").trim().replaceAll(" ", "-");

            String folder = String.format("%s%s", MESSAGE_LOCATION, parts[0]);
            name = String.format("%s-%s-v%s", parts[1], name, versionInfo.getVersion());
            
            LOGGER.trace("{} will be stored as {}/{}", f, folder, name);
            
            name = folder + "/" + name;
            
            // Convert to XML if need be
            try {
                if (versionInfo.isXml()) {
                    FileUtils.writeByteArrayToFile(new File(name + ".xml"), data);
                } else {
                    p = context.getXMLParser();
                    FileUtils.writeStringToFile(new File(name + ".xml"), p.encode(hapiMsg), encoding);
                }
            } catch (HL7Exception ex) {
                LOGGER.error("HL7 Exception trying to write to {}.xml", name, ex);
            }
            // Convert to TXT if need be
            try {
                if (versionInfo.isXml()) {
                    p = context.getPipeParser();
                    FileUtils.writeStringToFile(new File(name + ".txt"), p.encode(hapiMsg), encoding);
                } else {
                    FileUtils.writeByteArrayToFile(new File(name + ".txt"), data);
                }
            } catch (HL7Exception ex) {
                LOGGER.error("HL7 Exception trying to write to {}.txt", name, ex);
            }

            return name;
        }
    }
}
