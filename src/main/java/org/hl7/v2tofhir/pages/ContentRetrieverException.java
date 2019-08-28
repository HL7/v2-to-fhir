package org.hl7.v2tofhir.pages;

/**
 * Wraps various exceptions that occur during retrieval or parsing of content from Confluence
 * @author Keith W. Boone
 */
public class ContentRetrieverException extends Exception {

    /**
     * b/c it has to be serializable
     */
    private static final long serialVersionUID = 1L;

    /**
     * Construct a new exception with the specified cause.
     * @param message   The message
     * @param cause The root cause.
     */
    public ContentRetrieverException(String message, Throwable cause) {
        super(message, cause);
    }
    
    /**
     * Construct a new exception.
     * @param message   The message
     */
    public ContentRetrieverException(String message) {
        super(message);
    }
}
