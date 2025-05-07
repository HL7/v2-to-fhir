// HL7 Data Type - FHIR R4_ CWE[Duration] - Sheet1.csv
Instance: DatatypeCWEToDuration
InstanceOf: ConceptMap
Title: "Datatype CWE to Duration Map"
Usage: #definition
* title = "Datatype CWE to Duration Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype CWE to the FHIR Duration Data Type."
* id = "datatype-cwe-to-duration"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-cwe-to-duration"
* name = "DatatypeCWEToDuration"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype CWE to Duration.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1ntf81Wves7hw4mvMMBYLqzR3La76-rtndbiz39IFnMU/edit#gid=0"
* group.element[0].code = #CWE.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #duration
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"code"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "duration"
* group.element[1].code = #CWE.2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"ST"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 0
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Text"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #duration
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"code"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.display = "duration"
* group.element[1].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[1].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[1].target.dependsOn[0].value = "IF CWE.1 IS NOT VALUED"
* group.element[1].target.dependsOn[0].display = "IF CWE.1 IS NOT VALUED"
