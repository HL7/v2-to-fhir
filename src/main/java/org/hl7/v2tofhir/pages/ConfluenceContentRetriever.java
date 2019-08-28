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

public class ConfluenceContentRetriever implements ContentRetriever {
    private final static Logger LOGGER = LoggerFactory.getLogger(ConfluenceContentRetriever.class);
    private String base;

    public ConfluenceContentRetriever(String base) {
        this.base = base;
    }
    
    @Override
    public String getBase() {
        return base;
    }
    
    @Override
    public ConfluencePage getPage(String id) {
        return new ConfluencePage(this, id);
    }
}
