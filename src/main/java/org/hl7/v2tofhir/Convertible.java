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
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.hl7.v2tofhir.ConverterImpl.Row;

public interface Convertible {
    Row convert();

    /**
     * Captures the raw, comma-joined Core Version + Incubator Version cell values for this
     * row (e.g. "F-R4, F-R6,"), or null if the source sheet doesn't carry those columns.
     * Set by {@link ConverterImpl#load(java.io.File)} after parsing; implementations just
     * need a backing field.
     */
    void setVersionTagsRaw(String raw);

    String getVersionTagsRaw();

    /** Splits/trims the raw captured value into a version-tag set; empty if none captured. */
    default Set<String> parseVersionTags() {
        String raw = getVersionTagsRaw();
        if (StringUtils.isBlank(raw)) {
            return Collections.emptySet();
        }
        return Arrays.stream(raw.split(","))
            .map(String::trim)
            .filter(s -> !s.isEmpty())
            .collect(Collectors.toCollection(LinkedHashSet::new));
    }

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
