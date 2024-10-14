// HL7 Segment - FHIR R4_ SFT[MessageHeader] - Sheet1.csv
Instance: SegmentSFTToMessageHeader
InstanceOf: ConceptMap
Title: "Segment SFTnull to MessageHeader Map"
* title = "Segment SFTnull to MessageHeader Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment SFT to the FHIR MessageHeader Resource."
* id = "segment-sft-to-messageheader"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-sft-to-messageheader"
* version = "1.0"
* name = "SegmentSFTToMessageHeader"
* status = #active
* experimental = true
* date = "2024-10-14"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "SFT"
* targetUri = "MessageHeader"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment SFT to MessageHeader.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1XsVWY6amPZPo_zDxRywAxAJqX1_BzD8-7gt729NKdH4/edit#gid=0"
* group.element[0].code = #SFT-2
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].display = "ST"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #source.version
* group.element[0].target.display = "source.version"
* group.element[0].target.comment = "1"
* group.element[0].target.dependsOn[0].property = "references"
* group.element[0].target.dependsOn[0].value = "string"
* group.element[1].code = #SFT-3
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "cardinalityMin"
* group.element[1].extension[0].extension[0].valueInteger = 1
* group.element[1].extension[0].extension[1].url = "cardinalityMax"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].display = "ST"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #source.software
* group.element[1].target.display = "source.software"
* group.element[1].target.comment = "1"
* group.element[1].target.dependsOn[0].property = "references"
* group.element[1].target.dependsOn[0].value = "string"
