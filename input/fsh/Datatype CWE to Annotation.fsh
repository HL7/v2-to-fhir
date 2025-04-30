// HL7 Data Type - FHIR R4_ CWE[Annotation] - Sheet1.csv
Instance: DatatypeCWEToAnnotation
InstanceOf: ConceptMap
Title: "Datatype CWE to Annotation Map"
Usage: #definition
* title = "Datatype CWE to Annotation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype CWE to the FHIR Annotation Data Type."
* id = "datatype-cwe-to-annotation"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-cwe-to-annotation"
* name = "DatatypeCWEToAnnotation"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype CWE to Annotation.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1iqys8nuFDvOmbxp5CQjvX6FbuqEmZygJaZyp9rShzqA/edit#gid=0"
* group.element[0].code = #CWE
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #text
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"markdown"
* group.element[0].target.extension[0].extension[1].url = "fixedValue"
* group.element[0].target.extension[0].extension[1].valueString = "/include full field (inlcuding delimiters or xml tags)/"
* group.element[0].target.display = "text"
