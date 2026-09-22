// HL7 Data Type - FHIR E2_ EIP[Identifier-PlacerAssignedOrderNumber] - Sheet1.csv
Instance: DatatypeEIPPlacerAssignedOrderNumberToIdentifier
InstanceOf: ConceptMap
Title: "Datatype EIP [PlacerAssignedOrderNumber] to Identifier Map"
Usage: #definition
* title = "Datatype EIP [PlacerAssignedOrderNumber] to Identifier Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype EIP to the FHIR Identifier Data Type."
* id = "datatype-eip-placerassignedordernumber-to-identifier"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-eip-placerassignedordernumber-to-identifier"
* name = "DatatypeEIPPlacerAssignedOrderNumberToIdentifier"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype EIP[PlacerAssignedOrderNumber] to Identifier.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1NdUYLIV3t2fzdigIkCtyFyC9bpuRnztnICCExvhPRZE/edit?gid=0#gid=0"
* group[0].element[0].code = #EIP.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Placer Assigned Identifier"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #value
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"Identifier"
* group[0].element[0].target.display = "value"
* group[0].element[1].code = #EIP.1
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"ST"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 0
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Placer Assigned Identifier"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #type.coding.code
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 1
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.extension[0].extension[3].url = "assignment"
* group[0].element[1].target.extension[0].extension[3].valueString = "\"PLAC\""
* group[0].element[1].target.display = "type.coding.code"
* group[0].element[2].code = #EIP.1
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "type"
* group[0].element[2].extension[0].extension[0].valueCode = #"ST"
* group[0].element[2].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[1].valueInteger = 0
* group[0].element[2].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[2].valueInteger = 1
* group[0].element[2].display = "Placer Assigned Identifier"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #type.coding.system
* group[0].element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].target.extension[0].extension[0].url = "type"
* group[0].element[2].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].target.extension[0].extension[1].valueInteger = 1
* group[0].element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].target.extension[0].extension[2].valueInteger = 1
* group[0].element[2].target.extension[0].extension[3].url = "assignment"
* group[0].element[2].target.extension[0].extension[3].valueString = "\"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group[0].element[2].target.display = "type.coding.system"
