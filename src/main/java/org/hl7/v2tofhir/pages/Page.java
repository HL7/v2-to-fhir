package org.hl7.v2tofhir.pages;

import java.util.List;

import org.w3c.dom.Document;

public interface Page {
    /**
     * Get the page id
     * 
     * @return the page id
     */
    String getId();

    /**
     * Get the page title
     * 
     * @return the page title
     * @throws ContentRetrieverException If there is a problem parsing the results.
     */
    String getTitle() throws ContentRetrieverException;

    /**
     * Get the children. This method returns an empty list rather than null if the page 
     * exists but it has no children.
     * 
     * @return the children (may be an empty list if there are none)
     * @throws ContentRetrieverException If there is a problem parsing the results.
     */
    List<? extends Page> getChildren() throws ContentRetrieverException;

    /**
     * Get the content. 
     * 
     * @return The page content.
     * @throws ContentRetrieverException If there is a problem parsing the results.
     */
    String getContent() throws ContentRetrieverException;

    /**
     * Get the content as an XML Document
     * 
     * @return The page content parsed into an XML Document
     * 
     */
    Document getContextAsXml() throws ContentRetrieverException;

    /**
     * Set the content
     * @param content   The page content.
     */
    void setContent(String content);

    /**
     * Refresh the data for this page.
     */
    void refresh() throws ContentRetrieverException;

    /**
     * Return the page's normal URL for access via Confluence.
     * @return The page's normal URL for access via Confluence.
     */
    Object getPageUrl();

}