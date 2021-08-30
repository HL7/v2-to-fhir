* HL7 v2
   * Code
      * The code as used in v2 for the concept
   * Text
      * The text as used in v2 for the concept
   * Code System
      * The code system/value set that the concept is part of.
* HL7 FHIR
   * Code
      * The code as used in FHIR for the concept in .coding.code
      * Note that when the mapping table is used for a boolean data type this reflects the value while there is no code system.
   * Display
      * The display value used in FHIR for the concept
      * Note that for the code and boolean data typese there is no display name.
   * Code System
      * The code system to be used when populating .coding.system
      * Note that for the code and boolean data types there is no declared coding system in the attribute.
