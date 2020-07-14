package org.hl7.v2tofhir;

import org.apache.commons.lang3.StringUtils;
import org.hl7.v2tofhir.ConverterImpl.Row;

import com.opencsv.bean.CsvBindByPosition;

public class ConceptMapInput implements Convertible, Cloneable {
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
    @Override
    public Row convert() {
        Row r = new Row();
        if (StringUtils.isBlank(this.v2CodeSystem)) {
            return null;
        }
        r.conditionANTLR = StringUtils.defaultString(this.conditionANTLR);
        r.conditionFHIRPath = StringUtils.defaultString(this.conditionfhirPath);
        r.conditionNarrative = StringUtils.defaultString(this.conditionNarrative);
        r.dataType = null;
        r.targetCode = this.fhirCode;
        r.targetDisplay = this.fhirDisplay;
        r.sourceCode = this.v2Code;
        r.sourceDisplay = this.v2Text;
        r.comments = this.comments;
        return r;
    }

    public ConceptMapInput copy() {
        try {
            return (ConceptMapInput) clone();
        } catch (CloneNotSupportedException e) {
            // Not going to happen
            return null;
        }
    }
}