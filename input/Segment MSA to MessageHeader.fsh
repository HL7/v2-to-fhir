// HL7 Segment - FHIR R4_ MSA[MessageHeader] - Sheet1.csv
Instance: SegmentMSAtoMessageHeader
InstanceOf: ConceptMap
Title: "Segment MSA to MessageHeader Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment MSA to the FHIR MessageHeader Resource."
* id = "segment-msa-to-messageheader"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-msa-to-messageheader"
* version = "1.0"
* name = "SegmentMSAtoMessageHeader"
* status = #active
* experimental = true
* date = "2020-08-12"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "MSA"
* targetUri = "MessageHeader"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment MSA to MessageHeader.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1Jmmg5A_ekgb41jqI136KtFnnOgUAA3Gty-yGlCxUXM8/edit#gid=0"
* group.element[0].code = #MSA-1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].display = "ID"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #response.code
* group.element[0].target.display = "response.code"
* group.element[0].target.comment = "1"
* group.element[1].code = #MSA-2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "cardinalityMin"
* group.element[1].extension[0].extension[0].valueInteger = 1
* group.element[1].extension[0].extension[1].url = "cardinalityMax"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].display = "ST"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #response.identifier
* group.element[1].target.display = "response.identifier"
* group.element[1].target.comment = "1"
