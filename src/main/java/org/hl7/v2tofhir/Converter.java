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

    /**
     * Get the type of converter (Table, Message, Segment or Datatype)
     * @return the type of converter.
     */
    String getType();
    /**
     * Get the name of the source object
     * @return  The name of the source object.
     */
    String getSourceName();
    /**
     * Get the name of the target object
     * @return  The name of the target object.
     */
    String getTargetName();

    /**
     * Get the name of the HTML File that will be produced
     * @return  the name of the HTML File that will be produced
     */
    String getHtmlFileName();

    /**
     * Get the name of the Source File that was read
     * @return  the name of the Source File that was read
     */
    String getSourceFileName();

    /**
     * Get any qualifier associated with the conversion
     * @return  the qualifier associated with the conversion
     */
    String getQualifier();

    /**
     * Get the name of the FHIR Shorthand File that will be produced
     * @return  the name of the FHIR Shorthand File that will be produced
     */
    String getFishFileName();
}
