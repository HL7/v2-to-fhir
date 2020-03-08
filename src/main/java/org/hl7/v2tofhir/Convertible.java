package org.hl7.v2tofhir;

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
