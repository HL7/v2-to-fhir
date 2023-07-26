// HL7 Data Type - FHIR R4_ HD[MessageHeader.destination.name] - Sheet1.csv
Instance: DatatypeHDToMessageHeaderDestinationName
InstanceOf: ConceptMap
Title: "Datatype HD to MessageHeader.destination.name Map"
* title = "Datatype HD to MessageHeader.destination.name Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype HD to the FHIR MessageHeader.destination.name Data Type."
* id = "datatype-hd-to-messageheader-destination-name"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-hd-to-messageheader-destination-name"
* version = "1.0"
* name = "DatatypeHDToMessageHeaderDestinationName"
* status = #active
* experimental = true
* date = "2023-07-26"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HD"
* targetUri = "MessageHeader.destination.name"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype HD to MessageHeader.destination.name.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1MZ2k1XgrAcvf4KCxSx_2bKwrdtOZHQDvKgCmXwrDUqY/edit#gid=0"
* group.element[0].code = #HD.2
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Universal ID"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #software
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"string"
* group.element[0].target.display = "software"
