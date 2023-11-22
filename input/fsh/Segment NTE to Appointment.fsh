// HL7 Segment - FHIR R4_ NTE[Appointment] - NTE.csv
Instance: SegmentNTEToAppointment
InstanceOf: ConceptMap
Title: "Segment NTE to Appointment Map"
* title = "Segment NTE to Appointment Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment NTE to the FHIR Appointment Resource."
* id = "segment-nte-to-appointment"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-nte-to-appointment"
* version = "1.0"
* name = "SegmentNTEToAppointment"
* status = #active
* experimental = true
* date = "2023-11-21"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "NTE"
* targetUri = "Appointment"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment NTE to Appointment.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1fksIG8cf2DGSE7uHc_-UnP1VCfPGmObeREWqaQTNIRg/edit#gid=0"
* group.element[0].code = #NTE-3
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"FT"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Comment"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #comment[1]
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"string"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "comment[1]"
