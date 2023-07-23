// HL7 Data Type - FHIR R4_ CWE[Annotation] - Sheet1.csv
Instance: DatatypeCWEToAnnotation
InstanceOf: ConceptMap
Title: "Datatype CWE to Annotation Map"
* title = "Datatype CWE to Annotation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype CWE to the FHIR Annotation Data Type."
* id = "datatype-cwe-to-annotation"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-cwe-to-annotation"
* version = "1.0"
* name = "DatatypeCWEToAnnotation"
* status = #active
* experimental = true
* date = "2023-07-22"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "CWE"
* targetUri = "Annotation"
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
* group.element[0].target.display = "text"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = "/include full field (inlcuding delimiters or xml tags)/"
