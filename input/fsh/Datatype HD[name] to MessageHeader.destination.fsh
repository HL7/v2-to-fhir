// HL7 Data Type - FHIR R4_ HD[MessageHeader.destination-name] - Sheet1.csv
Instance: DatatypeHDNameToMessageHeaderDestination
InstanceOf: ConceptMap
Title: "Datatype HD [name] to MessageHeader.destination Map"
Usage: #definition
* title = "Datatype HD [name] to MessageHeader.destination Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype HD to the FHIR MessageHeader.destination Data Type."
* id = "datatype-hd-name-to-messageheader-destination"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-hd-name-to-messageheader-destination"
* name = "DatatypeHDNameToMessageHeaderDestination"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype HD[name] to MessageHeader.destination.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1MZ2k1XgrAcvf4KCxSx_2bKwrdtOZHQDvKgCmXwrDUqY/edit#gid=0"
* group[0].element[0].code = #HD.2
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Universal ID"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #name
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[0].target.display = "name"
