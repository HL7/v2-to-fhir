package org.hl7.v2tofhir.tests;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.cxf.common.util.StringUtils;
import org.hl7.v2tofhir.Application;
import org.hl7.v2tofhir.ContentRetriever.Page;
import org.hl7.v2tofhir.V2ContentRetriever;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

/**
 * This class tests content retrieval from Confluence
 * @author Keith W. Boone
 */
@ExtendWith(SpringExtension.class)
@SpringBootTest
public class V2ContentRetrieverTest {
    private final static Logger LOGGER = LoggerFactory.getLogger(V2ContentRetrieverTest.class);
    private final static File OUTPUT_FOLDER = new File("./target/test-output", V2ContentRetrieverTest.class.getSimpleName());
    @Autowired V2ContentRetriever retriever;
    
//    @BeforeAll public static void launch() {
//        Application.main(new String[] {});
//    }
    @Test
    public void testSegments() throws IOException {
        writeContent(retriever.getSegments(), "Segments");
    }

    @Test
    public void testMessages() throws IOException {
        writeContent(retriever.getMessages(), "Messages");
    }
    @Test
    public void testDataTypes() throws IOException {
        writeContent(retriever.getDataTypes(), "DataTypes");
    }
    
    private void writeContent(List<Page> pages, String type) throws IOException {
        assertTrue(pages.size() > 0, type + " page has 0 children.");
        // TODO Auto-generated method stub
        for (Page page: pages) {
            assertTrue(!StringUtils.isEmpty(page.getTitle()), "Page title is empty.");
            assertTrue(!StringUtils.isEmpty(page.getContent()), "Page content is empty.");
            File f = new File(OUTPUT_FOLDER, page.getTitle().replaceAll("[|\\\\/\\<\\>:\\?\\*]", "") + ".xml");
            LOGGER.warn("Writing to {}", f.getAbsolutePath());
            FileUtils.write(f, "<div>" + page.getContent() + "</div>", StandardCharsets.UTF_8);
        }
    }
}
