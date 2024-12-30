// HL7 Data Type - FHIR R4_ XPN[string] - Sheet1.csv
Instance: DatatypeXPNToString
InstanceOf: ConceptMap
Title: "Datatype XPN to string Map"
* title = "Datatype XPN to string Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype XPN to the FHIR string Data Type."
* id = "datatype-xpn-to-string"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-xpn-to-string"
* version = "1.0"
* name = "DatatypeXPNToString"
* status = #active
* experimental = true
* date = "2024-12-29"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "XPN"
* targetUri = "string"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype XPN to string.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1zHm3NajbYrJs5mo1xzQIt99Nerdj6VFfX3hDwvKOtdM/edit#gid=0"
* group.element[0].code = #XPN.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"FN"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Family Name"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #$this
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"string"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "$this"
