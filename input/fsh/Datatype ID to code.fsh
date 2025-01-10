// HL7 Data Type - FHIR R4_ ID[code] - Sheet1.csv
Instance: DatatypeIDToCode
InstanceOf: ConceptMap
Title: "Datatype ID to code Map"
Usage: #definition
* title = "Datatype ID to code Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype ID to the FHIR code Data Type."
* id = "datatype-id-to-code"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-id-to-code"
* name = "DatatypeIDToCode"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype ID to code.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1ymA-PgLgEKGCJjE8wi11exeKKhersWoHt96YGxUkrlU/edit#gid=0"
* group.element[0].code = #ID.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #$value
* group.element[0].target.display = "$value"
* group.element[0].target.comment = "Note that the vocabulary mapping is done at the segment's field level."
