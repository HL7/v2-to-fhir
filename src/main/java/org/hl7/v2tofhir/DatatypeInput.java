package org.hl7.v2tofhir;

import org.apache.commons.lang3.StringUtils;
import org.hl7.v2tofhir.ConverterImpl.Row;

import com.opencsv.bean.CsvBindByPosition;

public class DatatypeInput implements Convertible, Cloneable {
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
    @Override
    public Row convert() {
        Row r = new Row();
        r.condition = getCondition(this.conditionANTLR, this.conditionfhirPath);
        r.conditionDisplay = StringUtils.defaultString(this.conditionNarrative);
        r.dataType = null;
        r.targetCode = this.fhirCode.trim();
        if (StringUtils.isBlank(this.fhirCode) || r.targetCode.toLowerCase().contains("n/a")) {
            // Discard non-applicable mappings
            return null;
        }
        r.targetDisplay = r.targetCode;
        r.sourceCode = this.v2Code;
        r.sourceDisplay = this.v2Name;
        r.comments = this.comments;
        return r;
    }

    public DatatypeInput copy() {
        try {
            return (DatatypeInput) clone();
        } catch (CloneNotSupportedException e) {
            // Not going to happen
            return null;
        }
    }

}