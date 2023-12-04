// HL7 Segment - FHIR R4_ IN3[CareTeam] - Sheet1.csv
Instance: SegmentIN3ToCareTeam
InstanceOf: ConceptMap
Title: "Segment IN3 to CareTeam Map"
* title = "Segment IN3 to CareTeam Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment IN3 to the FHIR CareTeam Resource."
* id = "segment-in3-to-careteam"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-in3-to-careteam"
* version = "1.0"
* name = "SegmentIN3ToCareTeam"
* status = #active
* experimental = true
* date = "2023-12-04"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "IN3"
* targetUri = "CareTeam"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment IN3 to CareTeam.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1kWvcYxTaofNaqq5k5qjsqBEQRsjGGKiwAyCoTc8ADhY/edit#gid=0"
* group.element[0].code = #IN3-21
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Case Manager"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #participant.role.coding.value
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"string"
* group.element[0].target.display = "participant.role.coding.value"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = "\"768832004\""
* group.element[1].code = #IN3-21
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"ST"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Case Manager"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #participant.role.coding.system
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"uri"
* group.element[1].target.display = "participant.role.coding.system"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = "\"http://snomed.info/sct\""
* group.element[2].code = #IN3-21
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ST"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Case Manager"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #participant.role.text
* group.element[2].target.display = "participant.role.text"
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = "\"case manager\""
