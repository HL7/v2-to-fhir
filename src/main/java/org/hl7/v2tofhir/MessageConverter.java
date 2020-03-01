package org.hl7.v2tofhir;

import java.io.File;
import java.io.IOException;

public class MessageConverter extends ConverterImpl<MessageInput> implements Converter {

    public MessageConverter(File f) throws IOException {
        super(MessageInput.class);
        load(f);
    }

    @Override
    protected Row convert(MessageInput input) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    protected String getSource(MessageInput row) {
        return "https://www.hl7.org/v2";

    }

    @Override
    protected String getTarget(MessageInput row) {
        return "https://www.hl7.org/fhir";
    }

    @Override
    protected String getDestination(MessageInput bean) {
        // TODO Auto-generated method stub
        return null;
    }

}
