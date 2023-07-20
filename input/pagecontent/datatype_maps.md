[//]: # Content after this line will be prepended to the output of the list of datatype maps

The sections below list the data type mappings defined by this guide.
Data Type Mapping is driven by CSV files with specific columns. The use of these columns
is described in the section on [mapping](#mapping) at the bottom of this page.

__NOTE: Due to the build not being up-to-date with the latest spreadsheet we advise the reader to use this link to the [Mapping Spreadsheet Index](https://docs.google.com/spreadsheets/d/1PaFYPSSq4oplTvw_4OgOn6h2Bs_CMvCAU9CqC4tPBgk/edit#gid=1930219638) to review the lastest draft mappings.__

[//End]: # Content after this marker will be updated during generation

### Chapter 2A  Control|Data Types

* [CQ](ConceptMap-datatype-cq-to-quantity.html) - Composite Quantity With Units to FHIR [Quantity](http://hl7.org/fhir/R4/datatypes.html#quantity)
* [CQ](ConceptMap-datatype-cq-to-servicerequest.occurencetiming.html) - Composite Quantity With Units to FHIR [ServiceRequest.occurenceTiming](http://hl7.org/fhir/R4/servicerequest-definitions.html#servicerequest.occurencetiming)
* [CWE](ConceptMap-datatype-cwe-to-codeableconcept.html) - Coded With Exceptions to FHIR [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#codeableconcept)
* [CWE](ConceptMap-datatype-cwe-to-duration.html) - Coded With Exceptions to FHIR [Duration](http://hl7.org/fhir/R4/datatypes.html#duration)
* [CWE](ConceptMap-datatype-cwe-to-organization.html) - Coded With Exceptions to FHIR [Organization](http://hl7.org/fhir/R4/organization.html)
* [CWE](ConceptMap-datatype-cwe-to-string.html) - Coded With Exceptions to FHIR [string](http://hl7.org/fhir/R4/datatypes.html#string)
* [CWE](ConceptMap-datatype-cwe-to-uri.html) - Coded With Exceptions to FHIR [uri](http://hl7.org/fhir/R4/datatypes.html#uri)
* [DR](ConceptMap-datatype-dr-to-datetime.html) - Date/Time Range to FHIR [DateTime](http://hl7.org/fhir/R4/datatypes.html#datetime)
* [DR](ConceptMap-datatype-dr-to-period.html) - Date/Time Range to FHIR [Period](http://hl7.org/fhir/R4/datatypes.html#period)
* [ED](ConceptMap-datatype-ed-to-attachment.html) - Encapsulated Data to FHIR [Attachment](http://hl7.org/fhir/R4/datatypes.html#attachment)
* [EIP[FillerAssignedIdentifer]](ConceptMap-datatype-eipfillerassignedidentifer-to-identifier.html) - Entity Identifier Pair to FHIR [Identifier](http://hl7.org/fhir/R4/datatypes.html#identifier)
* [EI[UDICarrier]](ConceptMap-datatype-eiudicarrier-to-device.html) - Entity Identifier to FHIR [Device](http://hl7.org/fhir/R4/device.html)
* [HD](ConceptMap-datatype-hd-to-location.html) - Hierarchic Designator to FHIR [Location](http://hl7.org/fhir/R4/location.html)
* [HD](ConceptMap-datatype-hd-to-organization.html) - Hierarchic Designator to FHIR [Organization](http://hl7.org/fhir/R4/organization.html)
* [HD[AssigningAuthority]](ConceptMap-datatype-hdassigningauthority-to-extension.html) - Hierarchic Designator to FHIR [extension](http://hl7.org/fhir/R4/datatypes.html#extension)
* [MSG](ConceptMap-datatype-msg-to-coding.html) - Message Type to FHIR [Coding](http://hl7.org/fhir/R4/datatypes.html#coding)
* [NA](ConceptMap-datatype-na-to-numericarray.html) - Numeric Array to FHIR [NumericArray](http://hl7.org/fhir/R4/codesystem-numericarray.html)
* [RI](ConceptMap-datatype-ri-to-timing.html) - Repeat Interval to FHIR [Timing](http://hl7.org/fhir/R4/datatypes.html#timing)
* [RP](ConceptMap-datatype-rp-to-attachment.html) - Reference Pointer to FHIR [Attachment](http://hl7.org/fhir/R4/datatypes.html#attachment)
* [SN](ConceptMap-datatype-sn-to-ratio.html) - Structured Numeric to FHIR [Ratio](http://hl7.org/fhir/R4/datatypes.html#ratio)
* [TQ](ConceptMap-datatype-tq-to-servicerequest.html) - Timing/Quantity to FHIR [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html)
* [XCN](ConceptMap-datatype-xcn-to-practitionerrole.html) - Extended Composite Id Number And Name For Persons to FHIR [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html)
* [XCN](ConceptMap-datatype-xcn-to-relatedperson.html) - Extended Composite Id Number And Name For Persons to FHIR [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html)
* [XON](ConceptMap-datatype-xon-to-string.html) - Extended Composite Name And Identification Number For Organizations to FHIR [string](http://hl7.org/fhir/R4/datatypes.html#string)
* [XTN](ConceptMap-datatype-xtn-to-contactpoint.html) - Extended Telecommunication Number to FHIR [ContactPoint](http://hl7.org/fhir/R4/datatypes.html#contactpoint)
<h2 style='--heading-prefix: ""' id='mapping'>Mapping</h2>
{% include datatype_mapping.md %}
