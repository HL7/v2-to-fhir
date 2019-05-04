package org.hl7.v2tofhir;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hl7.fhir.r4.model.CodeSystem;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

/** 
 * The content retriever class is used to obtain content from the Confluence
 * pages used to maintain the V2 to FHIR Mappings.
 * 
 * @author Keith W. Boone
 *
 */
@Component
public class V2ContentRetriever extends ContentRetriever {

    @Value(value="${page.datatypes}") int dataTypes; 
    @Value(value="${page.segments}") int segments; 
    @Value(value="${page.messages}") int messages; 
    
    public V2ContentRetriever(@Value(value="${base}") String base) {
        super(base);
    }
    
    /**
     * Get the pages containing segment conversions
     * @return the pages containing segment conversions
     * @throws IOException If a parse error occurred.
     */
    public List<Page> getSegments() throws IOException {
        return new Page(Integer.toString(segments)).getChildren();
    }
    /**
     * Get the pages containing message conversions
     * @return the pages containing message conversions
     * @throws IOException If a parse error occurred.
     */
    public List<Page> getMessages() throws IOException {
        return new Page(Integer.toString(messages)).getChildren();
    }
    /**
     * Get the pages containing datatype conversions
     * @return the pages containing datatype conversions
     * @throws IOException If a parse error occurred.
     */
    public List<Page> getDataTypes() throws IOException {
        return new Page(Integer.toString(dataTypes)).getChildren();
    }
    
    public CodeSystem convertPage(Page page) {
        CodeSystem codeSystem = new CodeSystem();
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
         */
        return codeSystem;
    }
}
