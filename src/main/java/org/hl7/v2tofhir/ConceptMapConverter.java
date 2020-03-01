package org.hl7.v2tofhir;

import java.io.File;
import java.io.IOException;

import org.apache.commons.lang3.StringUtils;

public class ConceptMapConverter extends ConverterImpl<ConceptMapInput> implements Converter {

    public ConceptMapConverter(File f) throws IOException {
        super(ConceptMapInput.class);
        load(f);
    }

    @Override
    protected Row convert(ConceptMapInput input) {
        Row r = new Row();
        r.condition = String.format("%s // %s%n",
            StringUtils.defaultString(input.conditionANTLR),
            StringUtils.defaultString(input.conditionfhirPath));
        r.conditionDisplay = StringUtils.defaultString(input.conditionNarrative);
        r.dataType = null;
        r.targetCode = null;
        r.targetDisplay = null;
        r.sourceCode = input.v2Code;
        r.sourceDisplay = input.v2Text;
        r.comments = input.comments;
        return r;
    }

    @Override
    protected String getSource(ConceptMapInput row) {
        return "http://terminology.hl7.org/CodeSystem/v2-" + row.v2CodeSystem.substring(3);
    }

    @Override
    protected String getTarget(ConceptMapInput row) {
        return row.fhirCodeSystem;
    }

    @Override
    protected String getDestination(ConceptMapInput bean) {
        return bean.v2CodeSystem;
    }

}
