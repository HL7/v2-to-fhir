// HL7 Data Type - FHIR R4_ ID[CodeableConcept-UniversalID] - Sheet1.csv
Instance: DatatypeIDUniversalIDToCodeableConcept
InstanceOf: ConceptMap
Title: "Datatype ID [UniversalID] to CodeableConcept Map"
Usage: #definition
* title = "Datatype ID [UniversalID] to CodeableConcept Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype ID to the FHIR CodeableConcept Data Type."
* id = "datatype-id-universalid-to-codeableconcept"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-id-universalid-to-codeableconcept"
* name = "DatatypeIDUniversalIDToCodeableConcept"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype ID[UniversalID] to CodeableConcept.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1YnP5iXEswInGxwYcRjg81HU4ACsjRJPpQVfOzwVRdIg/edit#gid=0"
* group[0].element[0].code = #ID.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Identifier"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #coding.code
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "coding.code"
* group[0].element[1].code = #ID.1
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"ST"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 0
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Identifier"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #coding.system
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 1
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.extension[0].extension[3].url = "assignment"
* group[0].element[1].target.extension[0].extension[3].valueString = "\"http://terminology.hl7.org/CodeSystem/v2-0301\""
* group[0].element[1].target.display = "coding.system"
