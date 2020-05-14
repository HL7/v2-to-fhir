* HL7 v2
   * Sort Order
      * See the [General Guidelines](mapping_guidelines.html#general-format)
      * When "0" it is to be done for the segment in general.
   * Identifier
      * Contains the formal Segment Name and Field Sequence according to the base standard using "-" as the delimiter.
      * If it only contains the Segmnet Name, the mapping to the FHIR attribute referenced is done in the absence of a specific v2 field.
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
   * Assignment
      * This is used when the FHIR attribute is to be set to a particular value, e.g., "home", or the value of another v2 field or FHIR attribute, e.g., PID-13.4 or Patient.identifier.value
