package org.hl7.v2tofhir;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * The content retriever class is used to obtain content from the Confluence
 * pages used to maintain the V2 to FHIR Mappings.
 * 
 * @author Keith W. Boone
 *
 */

public class ContentRetriever {
    private final static Logger LOGGER = LoggerFactory.getLogger(ContentRetriever.class);
    private static final List<Page> NO_CHILDREN = Collections.emptyList();
    private String base;

    /**
     * The page class is used to access content from a given page.
     * 
     * @author Keith W. Boone
     *
     */
    public class Page {
        private String id;
        private String title;
        private List<Page> children = NO_CHILDREN;
        private String content;
        
        /**
         * Construct a new page resource with the given identifier
         * 
         * @param id The page identifier
         */
        public Page(String id) {
            if (id == null) {
                throw new NullPointerException("id cannot be null");
            }
            this.id = id;
        }

        /**
         * Construct a new page with the given identifier, title and children.
         * 
         * @param id       The page identifier
         * @param title    The title of the page (can be null)
         * @param children The children of the page (can be null)
         */
        public Page(String id, String title, List<Page> children) {
            this(id);
            this.title = title;
            this.children = children == null ? NO_CHILDREN : children;
        }

        /**
         * Get the page id
         * 
         * @return the page id
         */
        public String getId() {
            return this.id;
        }

        /**
         * Get the page title
         * 
         * @return the page title
         * @throws IOException If there is a problem parsing the results.
         */
        public String getTitle() throws IOException {
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
         * @throws IOException If there is a problem parsing the results.
         */
        List<Page> getChildren() throws IOException {
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
         * @throws IOException If there is a problem parsing the results.
         */
        public String getContent() throws IOException {
            if (content == null) {
                // try to retrieve the content
                refresh();
            }
            return content;
        }

        public void setContent(String content) throws IOException {

            this.content = content;
        }

        /**
         * Refresh the data for this page.
         */
        public void refresh() throws IOException {
            RestTemplate restTemplate = new RestTemplate();
            UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(base + "/rest/api/content/{id}")
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
                throw e;
            }
            // for each children.page.results[].id
            // create a new page with it
            JsonNode results = root.path("children").path("page").path("results");
            if (children == null || children == NO_CHILDREN) {
                children = new ArrayList<Page>();
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
                Page child = new Page(childId, result.path("title").asText(""), null);
                children.add(child);
            }
        }
    }

    public ContentRetriever(String base) {
        this.base = base;
    }
}
