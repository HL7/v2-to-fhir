package org.hl7.v2tofhir;
/*
 * Copyright 2020 Audiacious Inquiry, Inc.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy
 * of the License at http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */
import java.io.File;
import java.io.IOException;

public interface Converter {

    String SNOMEDCT_URL = "http://snomed.info/sct";
    String ISO3166_1_URL = "https://hl7.org/fhir/R4/iso3166.html";

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
     * Get the URL of the target object
     * @return  The URL of the target object.
     */
	String getTarget();

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
