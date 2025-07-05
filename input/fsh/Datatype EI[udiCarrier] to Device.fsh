// HL7 Data Type - FHIR R4_ EI[Device-udiCarrier] - Sheet1.csv
Instance: DatatypeEIUdiCarrierToDevice
InstanceOf: ConceptMap
Title: "Datatype EI [udiCarrier] to Device Map"
Usage: #definition
* title = "Datatype EI [udiCarrier] to Device Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype EI to the FHIR Device Resource."
* id = "datatype-ei-udicarrier-to-device"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-ei-udicarrier-to-device"
* name = "DatatypeEIUdiCarrierToDevice"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype EI[udiCarrier] to Device.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1uMZ5C8gEzU9qMKXYUUdesF9HFubW6s8BFYzD-DOgRro/edit#gid=0"
* group[0].element[0].code = #EI.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Entity Identifier"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #udiCarrier.deviceIdentifier
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "udiCarrier.deviceIdentifier"
