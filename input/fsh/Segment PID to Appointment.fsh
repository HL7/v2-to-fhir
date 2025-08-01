// HL7 Segment - FHIR R4_ PID[Appointment] - PID.csv
Instance: SegmentPIDToAppointment
InstanceOf: ConceptMap
Title: "Segment PID to Appointment Map"
Usage: #definition
* title = "Segment PID to Appointment Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PID to the FHIR Appointment Resource."
* id = "segment-pid-to-appointment"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-pid-to-appointment"
* name = "SegmentPIDToAppointment"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PID to Appointment.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/179qbacXadBfYInQC-qj3gcfozPKqhxq109i4GgaHocQ/edit#gid=0"
* group[0].element[0].code = #PID-2
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"CX"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Patient ID"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #extension[1].url
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[0].target.extension[0].extension[1].url = "assignment"
* group[0].element[0].target.extension[0].extension[1].valueString = "\"http://hl7.org/fhir/5.0/StructureDefinition/extension-Appointment.subject\""
* group[0].element[0].target.display = "extension[1].url"
* group[0].element[1].code = #PID-2
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"CX"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 1
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Patient ID"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #extension[1].valueReference(Patient)
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"Reference"
* group[0].element[1].target.display = "extension[1].valueReference(Patient)"
* group[0].element[2].code = #PID-2
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "type"
* group[0].element[2].extension[0].extension[0].valueCode = #"CX"
* group[0].element[2].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[1].valueInteger = 1
* group[0].element[2].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[2].valueInteger = 1
* group[0].element[2].display = "Patient ID"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #participant.actor[1](Patient)
* group[0].element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].target.extension[0].extension[0].url = "type"
* group[0].element[2].target.extension[0].extension[0].valueCode = #"Reference"
* group[0].element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].target.extension[0].extension[1].valueInteger = 0
* group[0].element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].target.extension[0].extension[2].valueInteger = -1
* group[0].element[2].target.display = "participant.actor[1](Patient)"
* group[0].element[3].code = #PID-3
* group[0].element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].extension[0].extension[0].url = "type"
* group[0].element[3].extension[0].extension[0].valueCode = #"CX"
* group[0].element[3].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].extension[0].extension[1].valueInteger = -1
* group[0].element[3].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].extension[0].extension[2].valueInteger = -1
* group[0].element[3].display = "Patient Identifier List"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #extension[2].url
* group[0].element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].target.extension[0].extension[0].url = "type"
* group[0].element[3].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[3].target.extension[0].extension[1].url = "assignment"
* group[0].element[3].target.extension[0].extension[1].valueString = "\"http://hl7.org/fhir/5.0/StructureDefinition/extension-Appointment.subject\""
* group[0].element[3].target.display = "extension[2].url"
* group[0].element[4].code = #PID-3
* group[0].element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].extension[0].extension[0].url = "type"
* group[0].element[4].extension[0].extension[0].valueCode = #"CX"
* group[0].element[4].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].extension[0].extension[1].valueInteger = -1
* group[0].element[4].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].extension[0].extension[2].valueInteger = -1
* group[0].element[4].display = "Patient Identifier List"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #extension[2].valueReference(Patient)
* group[0].element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].target.extension[0].extension[0].url = "type"
* group[0].element[4].target.extension[0].extension[0].valueCode = #"Reference"
* group[0].element[4].target.display = "extension[2].valueReference(Patient)"
* group[0].element[5].code = #PID-3
* group[0].element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].extension[0].extension[0].url = "type"
* group[0].element[5].extension[0].extension[0].valueCode = #"CX"
* group[0].element[5].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].extension[0].extension[1].valueInteger = -1
* group[0].element[5].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].extension[0].extension[2].valueInteger = -1
* group[0].element[5].display = "Patient Identifier List"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #participant.actor[2](Patient)
* group[0].element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].target.extension[0].extension[0].url = "type"
* group[0].element[5].target.extension[0].extension[0].valueCode = #"Reference"
* group[0].element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].target.extension[0].extension[1].valueInteger = 0
* group[0].element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].target.extension[0].extension[2].valueInteger = -1
* group[0].element[5].target.display = "participant.actor[2](Patient)"
* group[0].element[6].code = #PID-4
* group[0].element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].extension[0].extension[0].url = "type"
* group[0].element[6].extension[0].extension[0].valueCode = #"CX"
* group[0].element[6].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[6].extension[0].extension[1].valueInteger = 1
* group[0].element[6].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[6].extension[0].extension[2].valueInteger = 1
* group[0].element[6].display = "Alternate Patient ID - PID"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #extension[3].url
* group[0].element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].target.extension[0].extension[0].url = "type"
* group[0].element[6].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[6].target.extension[0].extension[1].url = "assignment"
* group[0].element[6].target.extension[0].extension[1].valueString = "\"http://hl7.org/fhir/5.0/StructureDefinition/extension-Appointment.subject\""
* group[0].element[6].target.display = "extension[3].url"
* group[0].element[7].code = #PID-4
* group[0].element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].extension[0].extension[0].url = "type"
* group[0].element[7].extension[0].extension[0].valueCode = #"CX"
* group[0].element[7].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].extension[0].extension[1].valueInteger = 1
* group[0].element[7].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].extension[0].extension[2].valueInteger = 1
* group[0].element[7].display = "Alternate Patient ID - PID"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #extension[3].valueReference(Patient)
* group[0].element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].target.extension[0].extension[0].url = "type"
* group[0].element[7].target.extension[0].extension[0].valueCode = #"Reference"
* group[0].element[7].target.display = "extension[3].valueReference(Patient)"
* group[0].element[8].code = #PID-4
* group[0].element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].extension[0].extension[0].url = "type"
* group[0].element[8].extension[0].extension[0].valueCode = #"CX"
* group[0].element[8].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].extension[0].extension[1].valueInteger = 1
* group[0].element[8].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].extension[0].extension[2].valueInteger = 1
* group[0].element[8].display = "Alternate Patient ID - PID"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #participant.actor[3](Patient)
* group[0].element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].target.extension[0].extension[0].url = "type"
* group[0].element[8].target.extension[0].extension[0].valueCode = #"Reference"
* group[0].element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].target.extension[0].extension[1].valueInteger = 0
* group[0].element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].target.extension[0].extension[2].valueInteger = -1
* group[0].element[8].target.display = "participant.actor[3](Patient)"
