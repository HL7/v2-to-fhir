package org.hl7.v2tofhir;

import org.hl7.fhir.r4.model.ConceptMap;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import ca.uhn.fhir.rest.server.IResourceProvider;
import ca.uhn.fhir.rest.server.RestfulServer;
import ca.uhn.fhir.spring.boot.autoconfigure.FhirRestfulServerCustomizer;

@SpringBootApplication
public class Application implements IResourceProvider, FhirRestfulServerCustomizer {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @Override
    public void customize(RestfulServer server) {
        // Nothing to do
        
    }

    @Override
    public Class<ConceptMap> getResourceType() {
        // TODO Auto-generated method stub
        return ConceptMap.class;
    }

}