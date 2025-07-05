// HL7 Data Type - FHIR R4_ ID[Coding] - Sheet1.csv
Instance: DatatypeIDToCoding
InstanceOf: ConceptMap
Title: "Datatype ID to Coding Map"
Usage: #definition
* title = "Datatype ID to Coding Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype ID to the FHIR Coding Data Type."
* id = "datatype-id-to-coding"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-id-to-coding"
* name = "DatatypeIDToCoding"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype ID to Coding.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1DR9Rw8yw4F4RhbpHd0RE9ng-KLTb81RmuTOxTgVcaVc/edit#gid=0"
* group[0].element[0].code = #ID.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Identifier"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #code
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "code"
