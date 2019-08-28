package org.hl7.v2tofhir.pages;

public interface ContentRetriever {

    String getBase();

    Page getPage(String id);

}