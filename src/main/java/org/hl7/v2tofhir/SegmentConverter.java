package org.hl7.v2tofhir;

import java.io.File;
import java.io.IOException;

public class SegmentConverter extends ConverterImpl<SegmentInput> implements Converter {

    public SegmentConverter(File f) throws IOException {
        super(SegmentInput.class);
        load(f);
    }

    @Override
    protected Row convert(SegmentInput input) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    protected String getSource(SegmentInput row) {
        return "https://www.hl7.org/v2";
    }

    @Override
    protected String getTarget(SegmentInput row) {
        return "https://www.hl7.org/fhir";
    }

    @Override
    protected String getDestination(SegmentInput bean) {
        // TODO Auto-generated method stub
        return null;
    }

}
