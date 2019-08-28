package org.hl7.v2tofhir.pages;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * The content retriever class is used to obtain content from the Confluence
 * pages used to maintain the V2 to FHIR Mappings.
 * 
 * @author Keith W. Boone
 *
 */

public class GoogleContentRetriever implements ContentRetriever {
    private final static Logger LOGGER = LoggerFactory.getLogger(GoogleContentRetriever.class);
    private String base;

    public GoogleContentRetriever(String base) {
        this.base = base;
    }
    
    @Override
    public String getBase() {
        return base;
    }
    
    @Override
    public GooglePage getPage(String id) {
        return new GooglePage(this, id);
    }
}
