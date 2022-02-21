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

public interface Convertible {
    Row convert();

    default String getCondition(String conditionANTLR, String conditionfhirPath) {
        String condition;
        if (StringUtils.isAllBlank(conditionANTLR, conditionfhirPath)) {
            condition = null;
        } else if (StringUtils.isBlank(conditionANTLR)) {
            condition = String.format("%s",
                StringUtils.defaultString(conditionfhirPath));

        } else if (StringUtils.isBlank(conditionfhirPath)) {
            condition = String.format("# %s%n",
                StringUtils.defaultString(conditionANTLR));

        } else {
            condition = String.format("%s%n# %s%n",
                StringUtils.defaultString(conditionfhirPath),
                StringUtils.defaultString(conditionANTLR));
        }
        return condition;
    }
}
