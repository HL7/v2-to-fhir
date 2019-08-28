package org.hl7.v2tofhir.pages;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import javax.xml.xpath.XPathExpressionException;
import org.hl7.fhir.r4.model.CodeSystem;
import org.hl7.fhir.r4.model.CodeSystem.CodeSystemContentMode;
import org.hl7.fhir.r4.model.CodeSystem.ConceptDefinitionComponent;
import org.hl7.fhir.r4.model.CodeSystem.ConceptPropertyComponent;
import org.hl7.fhir.r4.model.CodeSystem.PropertyComponent;
import org.hl7.fhir.r4.model.CodeSystem.PropertyType;
import org.hl7.fhir.r4.model.CodeType;
import org.hl7.fhir.r4.model.ContactPoint.ContactPointSystem;
import org.hl7.fhir.r4.model.ContactPoint.ContactPointUse;
import org.hl7.fhir.r4.model.Enumerations.PublicationStatus;
import org.hl7.fhir.r4.model.IntegerType;
import org.hl7.v2tofhir.TableReader;
import org.hl7.v2tofhir.TableReader.Table;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/** 
 * The content retriever class is used to obtain content from the Confluence
 * pages used to maintain the V2 to FHIR Mappings.
 * 
 * @author Keith W. Boone
 *
 */
@Component
public class V2ContentRetriever implements ContentRetriever {
    private final static Logger LOGGER = LoggerFactory.getLogger(V2ContentRetriever.class);
    private @Value(value="${page.datatypes}") int dataTypes; 
    private @Value(value="${page.segments}") int segments; 
    private @Value(value="${page.messages}") int messages; 
    private ContentRetriever delegate;
    
    public V2ContentRetriever(ContentRetriever delegate) {
        this.delegate = delegate;
    }
    
    /**
     * Get the pages containing segment conversions
     * @return the pages containing segment conversions
     * @throws ContentRetrieverException If a parse error occurred.
     */
    public List<? extends Page> getSegments() throws ContentRetrieverException {
        return getPage(Integer.toString(segments)).getChildren();
    }
    /**
     * Get the pages containing message conversions
     * @return the pages containing message conversions
     * @throws ContentRetrieverException If a parse error occurred.
     */
    public List<? extends Page> getMessages() throws ContentRetrieverException {
        return getPage(Integer.toString(messages)).getChildren();
    }
    /**
     * Get the pages containing datatype conversions
     * @return the pages containing datatype conversions
     * @throws ContentRetrieverException If a parse error occurred.
     */
    public List<? extends Page> getDataTypes() throws ContentRetrieverException {
        return getPage(Integer.toString(dataTypes)).getChildren();
    }
    
    public static CodeSystem getV2CodeSystem(ConfluencePage page) throws ContentRetrieverException {
        CodeSystem codeSystem = new CodeSystem();
        
        codeSystem.setName("HL7 Version 2 Model Elements");
        codeSystem.setTitle(codeSystem.getName());
        codeSystem.setDescription("This code system defines HL7 Version 2 Model Elements used for Version 2 to FHIR Translation\n"
                + "This subset addresses model elements used for conversion of " + page.getTitle() + "\n"
                + "Source data can be found at "+page.getPageUrl());
        codeSystem.setCaseSensitive(false);
        codeSystem.setCompositional(false);
        codeSystem.addContact().setName("Keith W. Boone")
            .addTelecom().setSystem(ContactPointSystem.EMAIL).setValue("kboone@ainq.com").setUse(ContactPointUse.WORK);
        codeSystem.setCopyright("Copyright (c) Health Level 7 International, Inc.");
        codeSystem.setDate(new Date());
        codeSystem.setExperimental(true);
        codeSystem.setStatus(PublicationStatus.DRAFT);
        codeSystem.setPublisher("Health Level 7 International, Inc.");
        codeSystem.setContent(CodeSystemContentMode.FRAGMENT);
        /*
         * Get the page content, read as XML
         *          
         * Read the rows from the spreadsheet.
         * <tr>
         * <td>Name</td>
         * <td>Definition</td>
         * <td>DataType</td>
         * <td>Cardinality</td>
         * <td>Mapping Rules</td>
         * <td>Name</td>
         * <td>Definition</td>
         * <td>Data Type</td>
         * <td>Cardinality</td>
         * <td>Mapping Rules</td>
         * </tr>
         * 
         * The content looks like this for a field:
         * 
         *  <td>MSH-01.00.00 - Field Separator</td>
         *  <td>This field contains the separator between the segment ID and the first real field, MSH-2 Encoding Characters. </td>
         *  <td>ST</td>
         *  <td>1..1</td>
         */
        
        PropertyComponent propDef = codeSystem.addProperty();
        propDef.setCode("Low");
        propDef.setDescription("Low value for cardinality");
        propDef.setType(PropertyType.INTEGER);
        propDef = codeSystem.addProperty();
        propDef.setCode("High");
        propDef.setDescription("High value for cardinality, set to " + Integer.MAX_VALUE + " if unbounded");
        propDef.setType(PropertyType.INTEGER);
        propDef = codeSystem.addProperty();
        propDef.setCode("DataType");
        propDef.setDescription("The V2 Datatype assigned to this model element");
        propDef.setType(PropertyType.CODE);
        
        Document doc = page.getContextAsXml();
        
        HashSet<Element> processed = new HashSet<Element>();
        try {
            // Read the first table of the content.
            Table table = TableReader.readXmlTable(doc, 1);
            
            for (int r = 2; r < table.getNumRows(); r++) {
                // Get the first cell of the row.
                Element cell = table.getCell(r,  0);
                if (processed.contains(cell)) {
                    // Handle extra data for this row.
                    
                    continue;
                }
                
                processed.add(cell);
                
                ConceptDefinitionComponent lastConcept = null;
            
                Element nameElement = table.getCell(r, 0),
                        defnElement = table.getCell(r, 1),
                        typeElement = table.getCell(r, 2),
                        cardElement = table.getCell(r, 3);
                
                // If the name part is missing, this row is not useful.
                if (nameElement == null) continue;
                String name = nameElement.getTextContent();
                
                String definition = defnElement == null ? "" : defnElement.getTextContent();
                String dataType = typeElement == null ? "" : typeElement.getTextContent();
                String cardinality = cardElement == null ? "" : cardElement.getTextContent();;

                // Skip rows without a V2 name
                if (name.trim().length() == 0) continue;
                
                if (name.length() < 4) {
                    LOGGER.warn("Invalid name {} at row {} in {} ({})", name, r,  page.getTitle(), page.getPageUrl());
                    continue;
                }
            
                String nameParts[] = name.split("\\.|\\s+-", 4);
                // remove leading zero values from segment code
                String segment = nameParts[0].replaceAll("-0+", "-");
                if (nameParts.length < 4) {
                    LOGGER.warn("Name format error on {} in {} ({})", name, page.getTitle(), page.getPageUrl());
                }
            
                int comp = nameParts.length > 1 ? parseInt(nameParts[1]) : 0;
                int sub = nameParts.length > 2 ? parseInt(nameParts[2]) : 0;
                String desc = nameParts.length > 3 ? nameParts[3].trim() : "";
                
                String cardParts[] = cardinality.trim().split("\\.\\.");
                int low = parseInt(cardParts[0]);
                int high = cardParts.length > 1 ? parseInt(cardParts[1]) : -1;
                
                ConceptDefinitionComponent cdc = codeSystem.addConcept();
                // Keep track of last concept defined so we can add text where needed.
                
                lastConcept = cdc;
                String code = segment;
                if (comp > 0) {
                    code += "-" + comp;
                    if (sub > 0) {
                        code += "-" + sub;
                    }
                }
                cdc.setCode(code);
                cdc.setDisplay(desc);
                cdc.setDefinition(definition.trim());
                
                ConceptPropertyComponent prop = cdc.addProperty();
                prop.setCode("Low");
                prop.setValue(new IntegerType(low < 0 ? 0 : low));
                prop = cdc.addProperty();
                prop.setCode("High");
                prop.setValue(new IntegerType(high < 0 ? 1 : high));
    
                prop = cdc.addProperty();
                prop.setCode("DataType");
                CodeType dt = new CodeType(dataType.trim());
                prop.setValue(dt);
                
            }
        } catch (XPathExpressionException e) {
            LOGGER.error("XPath exception processing table {} ({})", page.getTitle(), page.getPageUrl(), e);
            throw new ContentRetrieverException("XPath exception processing table", e);
        }        
        return codeSystem;
    }
    
    private static int parseInt(String value) {
        try {
            return Integer.parseInt(value.trim());
        } catch (NumberFormatException nfex) {
            LOGGER.trace("Invalid number {}", value);
            return -1;
        }
    }

    @Override
    public String getBase() {
        return delegate.getBase();
    }

    @Override
    public Page getPage(String id) {
        return delegate.getPage(id);
    }
}
