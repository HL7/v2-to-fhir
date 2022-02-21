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
import org.apache.commons.lang3.StringUtils;
import org.hl7.v2tofhir.ConverterImpl.Row;

import com.opencsv.bean.CsvBindByPosition;

public class MessageInput implements Cloneable, Convertible {
    /** The V2 coding system */
    @CsvBindByPosition(position=0)
    String v2Sort;
    @CsvBindByPosition(position=1)
    String v2Code;
    @CsvBindByPosition(position=2)
    String v2Message;
    @CsvBindByPosition(position=3)
    String v2Name;
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
    String segmentMap;
    @CsvBindByPosition(position=11)
    String reference;
    @CsvBindByPosition(position=13)
    String comments;
    public MessageInput copy() {
        try {
            return (MessageInput) clone();
        } catch (CloneNotSupportedException e) {
            // Won't happen
        }
        return null;
    }
    @Override
    public Row convert() {
        Row r = new Row();
        r.conditionANTLR = StringUtils.defaultString(this.conditionANTLR);
        r.conditionFHIRPath = StringUtils.defaultString(this.conditionfhirPath);
        r.conditionNarrative = StringUtils.defaultString(this.conditionNarrative);
        r.dataType = this.v2Message;
        r.targetCode = this.fhirCode;
        if (StringUtils.isBlank(this.fhirCode) || r.targetCode.toLowerCase().contains("n/a")) {
            // Discard non-applicable mappings
            return null;
        }
        r.targetDisplay = this.fhirCode;
        r.sourceCode = this.v2Code;
        r.sourceDisplay = this.v2Name;
        r.sourceMin = this.v2Min;
        r.sourceMax = this.v2Max;
        r.comments = this.comments;
        r.segmentMap = this.segmentMap;
        r.references = this.reference;
        return r;
    }

}