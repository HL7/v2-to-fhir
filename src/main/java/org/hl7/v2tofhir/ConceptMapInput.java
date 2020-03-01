package org.hl7.v2tofhir;

import com.opencsv.bean.CsvBindByPosition;

public class ConceptMapInput {
    // HL7 v2,,,Condition (IF True),,,HL7 FHIR,,,
    // Code,Text,Code System,Computable ANTLR,Computable FHIRPath,Narrative,Code,,Display,Code System
    // F,Female,HL70001,,,,female,,Female,http://hl7.org/fhir/administrative-gender
    /** The V2 coding system */
    @CsvBindByPosition(position=0)
    String v2Code;
    @CsvBindByPosition(position=1)
    String v2Text;
    @CsvBindByPosition(position=2)
    String v2CodeSystem;
    @CsvBindByPosition(position=3)
    String conditionANTLR;
    @CsvBindByPosition(position=4)
    String conditionfhirPath;
    @CsvBindByPosition(position=5)
    String conditionNarrative;
    @CsvBindByPosition(position=6)
    String fhirCode;
    @CsvBindByPosition(position=7)
    String fhirExtension;
    @CsvBindByPosition(position=8)
    String fhirDisplay;
    @CsvBindByPosition(position=9)
    String fhirCodeSystem;
    @CsvBindByPosition(position=10)
    String comments;
}