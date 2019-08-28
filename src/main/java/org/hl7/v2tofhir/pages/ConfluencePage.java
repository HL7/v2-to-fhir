package org.hl7.v2tofhir.pages;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * The page class is used to access content from a given page.
 * 
 * @author Keith W. Boone
 *
 */
public class ConfluencePage implements Page {
    private static final List<ConfluencePage> NO_CHILDREN = Collections.emptyList();
    private final static Logger LOGGER = LoggerFactory.getLogger(ConfluencePage.class);
    private static final String DIVSTART = 
    "<div "
    + "xmlns:ac='http://www.atlassian.com/schema/confluence/4/ac/' "
    + "xmlns:at='http://www.atlassian.com/schema/confluence/4/at/' "
    + "xmlns:ri='http://www.atlassian.com/schema/confluence/4/ri/'>";
    // Stupid Scanner trick https://community.oracle.com/blogs/pat/2004/10/23/stupid-scanner-tricks to read resource
    // in one line.
    private static final String XHTML_DTD = new Scanner( 
                new InputStreamReader(
                        ConfluenceContentRetriever.class.getResourceAsStream("/xhtml/xhtml.dtd"), StandardCharsets.UTF_8))
            .useDelimiter("\\A").next();

    private String id;
    private String title;
    private List<ConfluencePage> children = NO_CHILDREN;
    private String content;
    private ContentRetriever retriever;
    private static final DocumentBuilderFactory XMLFACTORY = DocumentBuilderFactory.newInstance();
    
    /**
     * Construct a new page resource with the given identifier
     * 
     * @param id The page identifier
     */
    public ConfluencePage(ContentRetriever retriever, String id) {
        if (id == null) {
            throw new NullPointerException("id cannot be null");
        }
        this.retriever = retriever;
        this.id = id;
    }

    /**
     * Construct a new page with the given identifier, title and children.
     * 
     * @param id       The page identifier
     * @param title    The title of the page (can be null)
     * @param children The children of the page (can be null)
     */
    public ConfluencePage(ContentRetriever retriever, String id, String title, List<ConfluencePage> children) {
        this(retriever, id);
        this.title = title;
        this.children = children == null ? NO_CHILDREN : children;
    }

    /**
     * Get the page id
     * 
     * @return the page id
     */
    @Override
    public String getId() {
        return this.id;
    }

    /**
     * Get the page title
     * 
     * @return the page title
     * @throws ContentRetrieverException If there is a problem parsing the results.
     */
    @Override
    public String getTitle() throws ContentRetrieverException {
        if (title == null) {
            // try to retrieve it.
            refresh();
        }
        return title;
    }

    /**
     * Get the children. This method returns an empty list rather than null if the page 
     * exists but it has no children.
     * 
     * @return the children (may be an empty list if there are none)
     * @throws ContentRetrieverException If there is a problem parsing the results.
     */
    @Override
    public List<ConfluencePage> getChildren() throws ContentRetrieverException {
        if (children == null || children.isEmpty()) {
            // try to retrieve the list
            refresh();
        }
        return children;
    }

    
    /**
     * Get the content. 
     * 
     * @return The page content.
     * @throws ContentRetrieverException If there is a problem parsing the results.
     */
    @Override
    public String getContent() throws ContentRetrieverException {
        if (content == null) {
            // try to retrieve the content
            refresh();
        }
        return content;
    }
    
    /**
     * Get the content as an XML Document
     * 
     * @return The page content parsed into an XML Document
     * 
     */
    @Override
    public Document getContextAsXml() throws ContentRetrieverException {
        // Wrap content in a <div> for parsing.
        InputSource s = new InputSource(new StringReader(XHTML_DTD + DIVSTART + getContent() + "</div>"));
        s.setSystemId(retriever.getBase() + "/pages/viewpage.action?pageId=" + id);
        DocumentBuilder db; 
        try {
            db = XMLFACTORY.newDocumentBuilder();
            return db.parse(s);
        } catch (ParserConfigurationException e) {
            throw new ContentRetrieverException("Parser configuration exception reading content", e);
        } catch (SAXException e) {
            throw new ContentRetrieverException("SAX exception reading content", e);
        } catch (IOException e) {
            throw new ContentRetrieverException("IO exception reading content", e);
        }
    }

    /**
     * Set the content
     * @param content   The page content.
     */
    @Override
    public void setContent(String content) {

        this.content = content;
    }

    /**
     * Refresh the data for this page.
     */
    @Override
    public void refresh() throws ContentRetrieverException {
        RestTemplate restTemplate = new RestTemplate();
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(retriever.getBase() + "/rest/api/content/{id}")
                .queryParam("expand", "body.storage,children.page");
        Map<String, String> variables = new HashMap<String, String>();
        variables.put("id", id);
        restTemplate.setDefaultUriVariables(variables);
        String url = builder.buildAndExpand(id).toUriString();
        ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);
        
        // Parse the response
        ObjectMapper mapper = new ObjectMapper();
        JsonNode root;
        try {
            root = mapper.readTree(response.getBody());
            title = root.path("title").asText("");
            JsonNode node = root.path("body").path("storage").path("value");
            content = node.asText("");
        } catch (IOException e) {
            LOGGER.error("Error reading page {}", id, e);
            throw new ContentRetrieverException("IO error reading page " + id, e);
        }
        // for each children.page.results[].id
        // create a new page with it
        JsonNode results = root.path("children").path("page").path("results");
        if (children == null || children == NO_CHILDREN) {
            children = new ArrayList<ConfluencePage>();
        } else {
            // reuse existing list
            children.clear();
        }
        
        // Collect the children.
        int count = 0;
        for (JsonNode result: results) {
            count++;
            String childId = result.path("id").asText("");
            if ("".equals(childId)) {
                LOGGER.warn("Child {} missing id in page {}", count, id);
                continue;
            }
            ConfluencePage child = new ConfluencePage(retriever, childId, result.path("title").asText(""), null);
            children.add(child);
        }
    }

    /**
     * Return the page's normal URL for access via Confluence.
     * @return The page's normal URL for access via Confluence.
     */
    @Override
    public Object getPageUrl() {
        return String.format("%spages/viewpage.action?pageId=%s", retriever.getBase(), id);
    }
}