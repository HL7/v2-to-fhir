package org.hl7.v2tofhir;

import java.io.File;
import java.io.IOException;

public interface Converter {

    /**
     * Load the specified input into the converter
     * @param f The input file
     */
    void load(File f) throws IOException;

    /**
     * Store the specified Sheet to the specified output location
     * @param f
     * @throws IOException
     */
    void store(File f) throws IOException;

    /**
     * Store the specified Sheet to the default location
     * @param f
     * @throws IOException
     */
    void store() throws IOException;

    String getType();
    String getSourceName();
    String getTargetName();

    String getHtmlFileName();

    String getSourceFileName();
}
