* HL7 v2
   * Sort Order
      * See the [General Guidelines](mapping_guidelines.html#general-format)
      * If a FHIR attribute is required but there is no v2 element to map from, the sort order is "0".
   * Identifier
      * Contains the formal Segment Name and Field Sequence according to the base standard using "-" as the delimiter.
      * If the Sort Order is "0" this cell will be set to "Implied".
   * Name
      * The formal name of the field in the most current published version
   * Data Type
      * The data type of the field in the most current published version if not deprecated
      * Otherwise it is the data type at the time it was deprecated and removed.
   * Cardinality (Min and Max)
      * The cardinality in the most current published version expressed numerically if not deprecated
      * Otherwise it reflects the cardinality at the time it was deprecated and removed.
* Condition
   * See the [General Guidelines](mapping_guidelines.html#general-format)
* HL7 FHIR
   * FHIR Attribute
      * The first column reflects an existing FHIR attribute in the target FHIR version.
      * When there is not a single attribute to point to, rather a v2 field needs to be mapped to multiple FHIR attribute, e.g., ORC-27 Quantity/Timing where the TQ data type components need to be mapped to multiple ServiceRequest attributes, then the label "$this" is used.  Further mapping guidance is then provided in the Data Type mapping column.
      * The second column reflects a proposed extension.  It will be expressed with #ext-......# around the proposed name.  Once approved, the formal name will be put in the first column.
      * This approach will enable tooling to already process existing FHIR attributes and not have to create special handling for elements still being proposed.
   * Data Type
      * The FHIR attribute's data type in the target FHIR version.
   * Cardinality (Min and Max)
      * The FHIR attribute's minimum and maximum cardinality in the target FHIR version.
   * Data Type Mapping
      * The URL to the Data Type Map that is to be used for the attribute in this segment.
      * There may be multiple flavors of the data type maps to support different mappings.  The flavor is appended to the end of the data type name using [] brackets, e.g., CWE[Coding].
   * Vocabulary Mapping
      * The URL to the Vocabulary Map that is to be used for the coded element for this attribute.
      * This is used where the HL7 v2 data type is either CWE, CNE, CF, CE, ID, or IS while the HL7 FHIR data type is code, coding, Codeable Concept, of boolean.
   * Assignment
      * The value that is to be assigned to the FHIR Attribute referenced.
         * If it is to be set to a particular string, it is uses "string".  
         * If it is to be set to a value in a v2 element or FHIR attribute, the identifier for that element/attribute is stated, e.g., PID-3.1 or Patient.identifier.value.
         * If there is no specific string or variable that is to be used, then the instructions are included between // bars, e.g., /instructions/.
      * Note these can be combined if multiple values need to be concatenated together.
      
