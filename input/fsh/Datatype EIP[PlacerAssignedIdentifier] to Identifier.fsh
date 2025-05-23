// HL7 Data Type - FHIR R4_ EIP[Identifier-PlacerAssignedIdentifier] - Sheet1.csv
Instance: DatatypeEIPPlacerAssignedIdentifierToIdentifier
InstanceOf: ConceptMap
Title: "Datatype EIP [PlacerAssignedIdentifier] to Identifier Map"
Usage: #definition
* title = "Datatype EIP [PlacerAssignedIdentifier] to Identifier Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype EIP to the FHIR Identifier Data Type."
* id = "datatype-eip-placerassignedidentifier-to-identifier"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-eip-placerassignedidentifier-to-identifier"
* name = "DatatypeEIPPlacerAssignedIdentifierToIdentifier"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype EIP[PlacerAssignedIdentifier] to Identifier.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1Ez3350XkVw7cS5ufWsFVpVXV884WOtutsWFfEAZUUvo/edit#gid=0"
* group.element[0].code = #EIP.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Placer Assigned Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #value
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"Identifier"
* group.element[0].target.display = "value"
* group.element[1].code = #EIP.1
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"ST"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 0
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Placer Assigned Identifier"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #type.coding.code
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"code"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.extension[0].extension[3].url = "fixedValue"
* group.element[1].target.extension[0].extension[3].valueString = "\"PGN\""
* group.element[1].target.display = "type.coding.code"
* group.element[2].code = #EIP.1
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ST"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 0
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Placer Assigned Identifier"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #type.coding.system
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"uri"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 1
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = 1
* group.element[2].target.extension[0].extension[3].url = "fixedValue"
* group.element[2].target.extension[0].extension[3].valueString = "\"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[2].target.display = "type.coding.system"
