package org.hl7.v2tofhir;

import com.opencsv.bean.CsvBindByPosition;

public class SegmentInput {
    /** The V2 coding system */
    @CsvBindByPosition(position=0)
    String v2Sort;
    @CsvBindByPosition(position=1)
    String v2Code;
    @CsvBindByPosition(position=2)
    String v2Name;
    @CsvBindByPosition(position=3)
    String v2Datatype;
    @CsvBindByPosition(position=4)
    String v2Min;
    @CsvBindByPosition(position=5)
    String v2Max;
    @CsvBindByPosition(position=6)
    String conditionANTLR;
    @CsvBindByPosition(position=7)
    String conditionfhirPath;
    @CsvBindByPosition(position=8)
    String conditionNarrative;
    @CsvBindByPosition(position=9)
    String fhirCode;
    @CsvBindByPosition(position=10)
    String fhirExtension;
    @CsvBindByPosition(position=11)
    String fhirDatatype;
    @CsvBindByPosition(position=12)
    String fhirMin;
    @CsvBindByPosition(position=13)
    String fhirMax;
    @CsvBindByPosition(position=14)
    String v2DataTypeMap;
    @CsvBindByPosition(position=15)
    String fhirVocab;
    @CsvBindByPosition(position=16)
    String fhirEmpty;
    @CsvBindByPosition(position=17)
    String comments;
}