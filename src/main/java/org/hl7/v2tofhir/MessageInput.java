package org.hl7.v2tofhir;

import com.opencsv.bean.CsvBindByPosition;

public class MessageInput {
    /** The V2 coding system */
    @CsvBindByPosition(position=0)
    private String v2Code;
    @CsvBindByPosition(position=1)
    private String v2Text;
    @CsvBindByPosition(position=2)
    private String v2CodeSystem;
    @CsvBindByPosition(position=3)
    private String conditionANTLR;
    @CsvBindByPosition(position=4)
    private String conditionfhirPath;
    @CsvBindByPosition(position=5)
    private String conditionNarrative;
    @CsvBindByPosition(position=6)
    private String fhirCode;
    @CsvBindByPosition(position=7)
    private String fhirExtension;
    @CsvBindByPosition(position=8)
    private String fhirDisplay;
    @CsvBindByPosition(position=9)
    private String fhirCodeSystem;
    @CsvBindByPosition(position=10)
    private String comments;
}