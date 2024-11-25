// HL7 Message - FHIR R4_ ORU_R01 - Sheet1.csv
Instance: MessageORU_R01ToBundle
InstanceOf: ConceptMap
Title: "Message ORU_R01 to Bundle Map"
* title = "Message ORU_R01 to Bundle Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Message ORU_R01 to the FHIR Message Bundle."
* id = "message-oru-r01-to-bundle"
* url = "http://hl7.org/fhir/uv/v2mappings/message-oru-r01-to-bundle"
* version = "1.0"
* name = "MessageORU_R01ToBundle"
* status = #active
* experimental = true
* date = "2024-11-25"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ORU_R01"
* targetUri = "Bundle"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Message ORU:R01 to Bundle.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1gHK6_PFyr7PXns7wLDs0LSLsbjm0x-4bWUu3crXMKMI/edit#gid=0"
* group.element[0].code = #ORU_R01.MSH
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].display = "Message Header"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Bundle
* group.element[0].target.display = "Bundle"
* group.element[1].code = #ORU_R01.MSH
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "cardinalityMin"
* group.element[1].extension[0].extension[0].valueInteger = 1
* group.element[1].extension[0].extension[1].url = "cardinalityMax"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].display = "Message Header"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #MessageHeader[1]
* group.element[1].target.display = "MessageHeader[1]"
* group.element[1].target.comment = "Processing of the MSH segment results in the creation of a new MessageHeader resource"
* group.element[2].code = #ORU_R01.MSH
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "cardinalityMin"
* group.element[2].extension[0].extension[0].valueInteger = 1
* group.element[2].extension[0].extension[1].url = "cardinalityMax"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].display = "Message Header"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Provenance[1]
* group.element[2].target.display = "Provenance[1]"
* group.element[2].target.comment = "If the FHIR transformation does not yield a FHIR message, but only a set of resource (APIs, repository, etc.) than one should consider attaching this Provenance resource instance to the relevant FHIR resources generated."
* group.element[3].code = #ORU_R01.MSH
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "cardinalityMin"
* group.element[3].extension[0].extension[0].valueInteger = 1
* group.element[3].extension[0].extension[1].url = "cardinalityMax"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].display = "Message Header"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Provenance[2]
* group.element[3].target.display = "Provenance[2]"
* group.element[3].target.comment = "If the FHIR transformation does not yield a FHIR Bunlde, but only a set of resource (APIs, repository, etc.) than one should consider attaching this Provenance resource instance to the relevant FHIR resources generated."
* group.element[4].code = #ORU_R01.SFT
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "cardinalityMin"
* group.element[4].extension[0].extension[0].valueInteger = 0
* group.element[4].extension[0].extension[1].url = "cardinalityMax"
* group.element[4].extension[0].extension[1].valueInteger = -1
* group.element[4].display = "Software Segment"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Provenance[1].entity.what(Device)
* group.element[4].target.display = "Provenance[1].entity.what(Device)"
* group.element[5].code = #ORU_R01.SFT
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "cardinalityMin"
* group.element[5].extension[0].extension[0].valueInteger = 0
* group.element[5].extension[0].extension[1].url = "cardinalityMax"
* group.element[5].extension[0].extension[1].valueInteger = -1
* group.element[5].display = "Software Segment"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Provenance[1].entity.what(Device)
* group.element[5].target.display = "Provenance[1].entity.what(Device)"
* group.element[6].code = #ORU_R01.PATIENT_RESULT.PATIENT.PID
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "cardinalityMin"
* group.element[6].extension[0].extension[0].valueInteger = 1
* group.element[6].extension[0].extension[1].url = "cardinalityMax"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].display = "Patient Identification"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Patient[1]
* group.element[6].target.display = "Patient[1]"
* group.element[6].target.comment = "Processing of the PID segment results in the creation of a new Patient resource"
* group.element[7].code = #ORU_R01.PATIENT_RESULT.PATIENT.PID
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "cardinalityMin"
* group.element[7].extension[0].extension[0].valueInteger = 1
* group.element[7].extension[0].extension[1].url = "cardinalityMax"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].display = "Patient Identification"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Provenance[4]
* group.element[7].target.display = "Provenance[4]"
* group.element[8].code = #ORU_R01.PATIENT_RESULT.PATIENT.PD1
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "cardinalityMin"
* group.element[8].extension[0].extension[0].valueInteger = 0
* group.element[8].extension[0].extension[1].url = "cardinalityMax"
* group.element[8].extension[0].extension[1].valueInteger = 1
* group.element[8].display = "Additional Demographics"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Patient[1]
* group.element[8].target.display = "Patient[1]"
* group.element[8].target.comment = "Incorporate PD1 content into the Patient created from the PID segment."
* group.element[9].code = #ORU_R01.PATIENT_RESULT.PATIENT.PD1
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "cardinalityMin"
* group.element[9].extension[0].extension[0].valueInteger = 0
* group.element[9].extension[0].extension[1].url = "cardinalityMax"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].display = "Additional Demographics"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Observation[4]
* group.element[9].target.display = "Observation[4]"
* group.element[10].code = #ORU_R01.PATIENT_RESULT.PATIENT.PRT
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "cardinalityMin"
* group.element[10].extension[0].extension[0].valueInteger = 0
* group.element[10].extension[0].extension[1].url = "cardinalityMax"
* group.element[10].extension[0].extension[1].valueInteger = -1
* group.element[10].display = "Participation (for Patient)"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #PractitionerRole[1]
* group.element[10].target.display = "PractitionerRole[1]"
* group.element[10].target.comment = """
Incorporate PRT content into the Patient created from the PID segment when the PRT contains practitioner related data.
If PRT-2 is set to "D" and "inactive" cannot be used, please submit a JIRA with context and rationale.\
"""
* group.element[11].code = #ORU_R01.PATIENT_RESULT.PATIENT.PRT
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "cardinalityMin"
* group.element[11].extension[0].extension[0].valueInteger = 0
* group.element[11].extension[0].extension[1].url = "cardinalityMax"
* group.element[11].extension[0].extension[1].valueInteger = -1
* group.element[11].display = "Participation (for Patient)"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #RelatedPerson[1]
* group.element[11].target.display = "RelatedPerson[1]"
* group.element[11].target.comment = "If PRT-2 is set to \"D\" and \"inactive\" cannot be used, please submit a JIRA with context and rationale."
* group.element[12].code = #ORU_R01.PATIENT_RESULT.PATIENT.NK1
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "cardinalityMin"
* group.element[12].extension[0].extension[0].valueInteger = 0
* group.element[12].extension[0].extension[1].url = "cardinalityMax"
* group.element[12].extension[0].extension[1].valueInteger = -1
* group.element[12].display = "Next of Kin/Associated Parties"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #RelatedPerson[2]
* group.element[12].target.display = "RelatedPerson[2]"
* group.element[12].target.comment = "Typically, each NK1 will be translated to either a new RelatedPerson resource or added as a new occurrence of Patient.contact, but it's possible to insert the NK1 data into both structures."
* group.element[13].code = #ORU_R01.PATIENT_RESULT.PATIENT.NK1
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "cardinalityMin"
* group.element[13].extension[0].extension[0].valueInteger = 0
* group.element[13].extension[0].extension[1].url = "cardinalityMax"
* group.element[13].extension[0].extension[1].valueInteger = -1
* group.element[13].display = "Next of Kin/Associated Parties"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Patient[1]
* group.element[13].target.display = "Patient[1]"
* group.element[13].target.comment = "Typically, each NK1 will be translated to either a new RelatedPerson resource or added as a new occurrence of Patient.contact, but it's possible to insert the NK1 data into both structures."
* group.element[14].code = #ORU_R01.PATIENT_RESULT.PATIENT.PATIENT_OBSERVATION.OBX
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "cardinalityMin"
* group.element[14].extension[0].extension[0].valueInteger = 1
* group.element[14].extension[0].extension[1].url = "cardinalityMax"
* group.element[14].extension[0].extension[1].valueInteger = 1
* group.element[14].display = "Observation (for Patient ID)"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Observation[1]
* group.element[14].target.display = "Observation[1]"
* group.element[15].code = #ORU_R01.PATIENT_RESULT.PATIENT.PATIENT_OBSERVATION.OBX
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "cardinalityMin"
* group.element[15].extension[0].extension[0].valueInteger = 1
* group.element[15].extension[0].extension[1].url = "cardinalityMax"
* group.element[15].extension[0].extension[1].valueInteger = 1
* group.element[15].display = "Observation (for Patient ID)"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Observation[1]
* group.element[15].target.display = "Observation[1]"
* group.element[15].target.comment = "Note that when OBX-5 repeats, the standard mapping is to use Observation.component (see OBX[Observation-Component] map) rather than creating separate Observation instances.  However, we are aware that some profiles and implementation guides do separate the OBX into multiple observations depending on the OBX-2 value.  This is an example of a non-standard interpretation as the OBX should have been separated into multiple OBX segments to start.  Please consider the local profiles and implementation guides on how to manage these variants."
* group.element[16].code = #ORU_R01.PATIENT_RESULT.PATIENT.PATIENT_OBSERVATION.PRT
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "cardinalityMin"
* group.element[16].extension[0].extension[0].valueInteger = 0
* group.element[16].extension[0].extension[1].url = "cardinalityMax"
* group.element[16].extension[0].extension[1].valueInteger = -1
* group.element[16].display = "Participation (Observation Participation)"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Device
* group.element[16].target.display = "Device"
* group.element[16].target.comment = "If PRT-2 is set to \"D\" and \"inactive\" cannot be used, please submit a JIRA with context and rationale."
* group.element[17].code = #ORU_R01.PATIENT_RESULT.PATIENT.PATIENT_OBSERVATION.PRT
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "cardinalityMin"
* group.element[17].extension[0].extension[0].valueInteger = 0
* group.element[17].extension[0].extension[1].url = "cardinalityMax"
* group.element[17].extension[0].extension[1].valueInteger = -1
* group.element[17].display = "Participation (Observation Participation)"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Observation[1]
* group.element[17].target.display = "Observation[1]"
* group.element[17].target.comment = "If PRT-2 is set to \"D\" and \"inactive\" cannot be used, please submit a JIRA with context and rationale."
* group.element[18].code = #ORU_R01.PATIENT_RESULT.PATIENT.PATIENT_OBSERVATION.PRT
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "cardinalityMin"
* group.element[18].extension[0].extension[0].valueInteger = 0
* group.element[18].extension[0].extension[1].url = "cardinalityMax"
* group.element[18].extension[0].extension[1].valueInteger = -1
* group.element[18].display = "Participation (Observation Participation)"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #PractitionerRole[1]
* group.element[18].target.display = "PractitionerRole[1]"
* group.element[18].target.comment = "If PRT-2 is set to \"D\" and \"inactive\" cannot be used, please submit a JIRA with context and rationale."
* group.element[19].code = #ORU_R01.PATIENT_RESULT.PATIENT.VISIT.PV1
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "cardinalityMin"
* group.element[19].extension[0].extension[0].valueInteger = 1
* group.element[19].extension[0].extension[1].url = "cardinalityMax"
* group.element[19].extension[0].extension[1].valueInteger = 1
* group.element[19].display = "Patient Visit"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #Encounter[1]
* group.element[19].target.display = "Encounter[1]"
* group.element[19].target.comment = "Processing of the PV1 segment results in the creation of a new Encounter resource"
* group.element[20].code = #ORU_R01.PATIENT_RESULT.PATIENT.VISIT.PV1
* group.element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "cardinalityMin"
* group.element[20].extension[0].extension[0].valueInteger = 1
* group.element[20].extension[0].extension[1].url = "cardinalityMax"
* group.element[20].extension[0].extension[1].valueInteger = 1
* group.element[20].display = "Patient Visit"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #Basic
* group.element[20].target.display = "Basic"
* group.element[21].code = #ORU_R01.PATIENT_RESULT.PATIENT.VISIT.PV1
* group.element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "cardinalityMin"
* group.element[21].extension[0].extension[0].valueInteger = 1
* group.element[21].extension[0].extension[1].url = "cardinalityMax"
* group.element[21].extension[0].extension[1].valueInteger = 1
* group.element[21].display = "Patient Visit"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #Patient[1]
* group.element[21].target.display = "Patient[1]"
* group.element[22].code = #ORU_R01.PATIENT_RESULT.PATIENT.VISIT.PV1
* group.element[22].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[22].extension[0].extension[0].url = "cardinalityMin"
* group.element[22].extension[0].extension[0].valueInteger = 1
* group.element[22].extension[0].extension[1].url = "cardinalityMax"
* group.element[22].extension[0].extension[1].valueInteger = 1
* group.element[22].display = "Patient Visit"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #Coverage[1]
* group.element[22].target.display = "Coverage[1]"
* group.element[23].code = #ORU_R01.PATIENT_RESULT.PATIENT.VISIT.PV2
* group.element[23].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[23].extension[0].extension[0].url = "cardinalityMin"
* group.element[23].extension[0].extension[0].valueInteger = 0
* group.element[23].extension[0].extension[1].url = "cardinalityMax"
* group.element[23].extension[0].extension[1].valueInteger = 1
* group.element[23].display = "Patient Visit - Additional Info"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #Encounter[1]
* group.element[23].target.display = "Encounter[1]"
* group.element[23].target.comment = "Incorporate PV2 content into the Encounter created from the PV1 segment."
* group.element[24].code = #ORU_R01.PATIENT_RESULT.PATIENT.VISIT.PRT
* group.element[24].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[24].extension[0].extension[0].url = "cardinalityMin"
* group.element[24].extension[0].extension[0].valueInteger = 0
* group.element[24].extension[0].extension[1].url = "cardinalityMax"
* group.element[24].extension[0].extension[1].valueInteger = -1
* group.element[24].display = "Participation (for Patient Visit)"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #PractitionerRole[2]
* group.element[24].target.display = "PractitionerRole[2]"
* group.element[24].target.comment = """
Incorporate PRT content into the Encounter created from the PV1 segment.
If PRT-2 is set to "D" and "inactive" cannot be used, please submit a JIRA with context and rationale.\
"""
* group.element[25].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.COMMON_ORDER.ORC
* group.element[25].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[25].extension[0].extension[0].url = "cardinalityMin"
* group.element[25].extension[0].extension[0].valueInteger = 1
* group.element[25].extension[0].extension[1].url = "cardinalityMax"
* group.element[25].extension[0].extension[1].valueInteger = 1
* group.element[25].display = "Order common"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #DiagnosticReport[1]
* group.element[25].target.display = "DiagnosticReport[1]"
* group.element[25].target.comment = "Processing of each ORC segment results in the creation of a new DiagnosticReport resource"
* group.element[26].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.COMMON_ORDER.ORC
* group.element[26].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[26].extension[0].extension[0].url = "cardinalityMin"
* group.element[26].extension[0].extension[0].valueInteger = 1
* group.element[26].extension[0].extension[1].url = "cardinalityMax"
* group.element[26].extension[0].extension[1].valueInteger = 1
* group.element[26].display = "Order common"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #ServiceRequest[1]
* group.element[26].target.display = "ServiceRequest[1]"
* group.element[27].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.COMMON_ORDER.PRT
* group.element[27].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[27].extension[0].extension[0].url = "cardinalityMin"
* group.element[27].extension[0].extension[0].valueInteger = 0
* group.element[27].extension[0].extension[1].url = "cardinalityMax"
* group.element[27].extension[0].extension[1].valueInteger = -1
* group.element[27].display = "Participation (for Observation)"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #PractitionerRole[3]
* group.element[27].target.display = "PractitionerRole[3]"
* group.element[28].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBR
* group.element[28].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[28].extension[0].extension[0].url = "cardinalityMin"
* group.element[28].extension[0].extension[0].valueInteger = 1
* group.element[28].extension[0].extension[1].url = "cardinalityMax"
* group.element[28].extension[0].extension[1].valueInteger = 1
* group.element[28].display = "Observations Request"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #DiagnosticReport[1]
* group.element[28].target.display = "DiagnosticReport[1]"
* group.element[28].target.comment = "Incorporate OBR content into the DiagnosticReport created from the ORC segment in the same segment group."
* group.element[29].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBR
* group.element[29].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[29].extension[0].extension[0].url = "cardinalityMin"
* group.element[29].extension[0].extension[0].valueInteger = 1
* group.element[29].extension[0].extension[1].url = "cardinalityMax"
* group.element[29].extension[0].extension[1].valueInteger = 1
* group.element[29].display = "Observations Request"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #Specimen[1]
* group.element[29].target.display = "Specimen[1]"
* group.element[29].target.comment = "The OBR specimen data yields one Specimen resource that all Observations generated for the same OBR need to reference."
* group.element[30].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBR
* group.element[30].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[30].extension[0].extension[0].url = "cardinalityMin"
* group.element[30].extension[0].extension[0].valueInteger = 1
* group.element[30].extension[0].extension[1].url = "cardinalityMax"
* group.element[30].extension[0].extension[1].valueInteger = 1
* group.element[30].display = "Observations Request"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #ServiceRequest[1]
* group.element[30].target.display = "ServiceRequest[1]"
* group.element[30].target.comment = "Mapping to ServiceRequest as well is needed if the receiver is not the originator of the order to which this results message responds.  This mapping will be completed once OMG/OML mapping is sufficiently completed.  We will add the other segment mappings below to ServiceRequest then as well."
* group.element[31].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.PRT
* group.element[31].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[31].extension[0].extension[0].url = "cardinalityMin"
* group.element[31].extension[0].extension[0].valueInteger = 0
* group.element[31].extension[0].extension[1].url = "cardinalityMax"
* group.element[31].extension[0].extension[1].valueInteger = -1
* group.element[31].display = "Participation (for Observation)"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #PractitionerRole[4]
* group.element[31].target.display = "PractitionerRole[4]"
* group.element[31].target.comment = "If PRT-2 is set to \"D\" and \"inactive\" cannot be used, please submit a JIRA with context and rationale."
* group.element[32].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.PRT
* group.element[32].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[32].extension[0].extension[0].url = "cardinalityMin"
* group.element[32].extension[0].extension[0].valueInteger = 0
* group.element[32].extension[0].extension[1].url = "cardinalityMax"
* group.element[32].extension[0].extension[1].valueInteger = -1
* group.element[32].display = "Participation (for Observation)"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #PractitionerRole[5]
* group.element[32].target.display = "PractitionerRole[5]"
* group.element[32].target.comment = "If PRT-2 is set to \"D\" and \"inactive\" cannot be used, please submit a JIRA with context and rationale."
* group.element[33].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.PRT
* group.element[33].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[33].extension[0].extension[0].url = "cardinalityMin"
* group.element[33].extension[0].extension[0].valueInteger = 0
* group.element[33].extension[0].extension[1].url = "cardinalityMax"
* group.element[33].extension[0].extension[1].valueInteger = -1
* group.element[33].display = "Participation (for Observation)"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #PractitionerRole[6]
* group.element[33].target.display = "PractitionerRole[6]"
* group.element[33].target.comment = "If PRT-2 is set to \"D\" and \"inactive\" cannot be used, please submit a JIRA with context and rationale."
* group.element[34].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.PRT
* group.element[34].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[34].extension[0].extension[0].url = "cardinalityMin"
* group.element[34].extension[0].extension[0].valueInteger = 0
* group.element[34].extension[0].extension[1].url = "cardinalityMax"
* group.element[34].extension[0].extension[1].valueInteger = -1
* group.element[34].display = "Participation (for Observation)"
* group.element[34].target.equivalence = #equivalent
* group.element[34].target.code = #PractitionerRole[3]
* group.element[34].target.display = "PractitionerRole[3]"
* group.element[34].target.comment = "If PRT-2 is set to \"D\" and \"inactive\" cannot be used, please submit a JIRA with context and rationale."
* group.element[35].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.OBX
* group.element[35].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[35].extension[0].extension[0].url = "cardinalityMin"
* group.element[35].extension[0].extension[0].valueInteger = 1
* group.element[35].extension[0].extension[1].url = "cardinalityMax"
* group.element[35].extension[0].extension[1].valueInteger = 1
* group.element[35].display = "Observation related to OBR"
* group.element[35].target.equivalence = #equivalent
* group.element[35].target.code = #Observation[2]
* group.element[35].target.display = "Observation[2]"
* group.element[35].target.comment = """
Implementers should consider the use case where OBX-5 repeats in a given OBX segment. Because the Observation value element is not allowed to repeat, multiple occurrences of OBX-5 must be handled either through the creation of multiple Observation resources, the use of Observation components, the concatenation of the results into a single value or another solution appropriate for the data and the implementation.
Note that it is not clear that every OBX represents a results that can be associated with the encounter during which it was ordered/performed.\
"""
* group.element[36].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.OBX
* group.element[36].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[36].extension[0].extension[0].url = "cardinalityMin"
* group.element[36].extension[0].extension[0].valueInteger = 1
* group.element[36].extension[0].extension[1].url = "cardinalityMax"
* group.element[36].extension[0].extension[1].valueInteger = 1
* group.element[36].display = "Observation related to OBR"
* group.element[36].target.equivalence = #equivalent
* group.element[36].target.code = #Observation[2]
* group.element[36].target.display = "Observation[2]"
* group.element[36].target.comment = "Implementers should consider the use case where OBX-5 repeats in a given OBX segment. Because the Observation value element is not allowed to repeat, multiple occurrences of OBX-5 must be handled either through the creation of multiple Observation resources, the use of Observation components, the concatenation of the results into a single value or another solution appropriate for the data and the implementation. When multiple OBX segments are tranformed into Observation components in a single Observation resource, implementers should consider how the metadata associated with the result (eg performer, status, date/time, etc) are populated. If the OBX segments being combined into a single resource contain different metadata, it must be considered whether or not the use of components is appropriate."
* group.element[37].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.OBX
* group.element[37].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[37].extension[0].extension[0].url = "cardinalityMin"
* group.element[37].extension[0].extension[0].valueInteger = 1
* group.element[37].extension[0].extension[1].url = "cardinalityMax"
* group.element[37].extension[0].extension[1].valueInteger = 1
* group.element[37].display = "Observation related to OBR"
* group.element[37].target.equivalence = #equivalent
* group.element[37].target.code = #Observation[2]
* group.element[37].target.display = "Observation[2]"
* group.element[38].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.OBX
* group.element[38].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[38].extension[0].extension[0].url = "cardinalityMin"
* group.element[38].extension[0].extension[0].valueInteger = 1
* group.element[38].extension[0].extension[1].url = "cardinalityMax"
* group.element[38].extension[0].extension[1].valueInteger = 1
* group.element[38].display = "Observation related to OBR"
* group.element[38].target.equivalence = #equivalent
* group.element[38].target.code = #Observation[2]
* group.element[38].target.display = "Observation[2]"
* group.element[39].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.PRT
* group.element[39].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[39].extension[0].extension[0].url = "cardinalityMin"
* group.element[39].extension[0].extension[0].valueInteger = 0
* group.element[39].extension[0].extension[1].url = "cardinalityMax"
* group.element[39].extension[0].extension[1].valueInteger = -1
* group.element[39].display = "Participation (Observation Participation)"
* group.element[39].target.equivalence = #equivalent
* group.element[39].target.code = #Device
* group.element[39].target.display = "Device"
* group.element[39].target.comment = "If PRT-2 is set to \"D\" and \"inactive\" cannot be used, please submit a JIRA with context and rationale."
* group.element[40].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.PRT
* group.element[40].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[40].extension[0].extension[0].url = "cardinalityMin"
* group.element[40].extension[0].extension[0].valueInteger = 0
* group.element[40].extension[0].extension[1].url = "cardinalityMax"
* group.element[40].extension[0].extension[1].valueInteger = -1
* group.element[40].display = "Participation (Observation Participation)"
* group.element[40].target.equivalence = #equivalent
* group.element[40].target.code = #Observation[2]
* group.element[40].target.display = "Observation[2]"
* group.element[40].target.comment = """
Incorporate PRT content into the Observation created from the OBX segment in the same segment group when it represents observation location information.
If PRT-2 is set to "D" and "inactive" cannot be used, please submit a JIRA with context and rationale.\
"""
* group.element[41].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.PRT
* group.element[41].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[41].extension[0].extension[0].url = "cardinalityMin"
* group.element[41].extension[0].extension[0].valueInteger = 0
* group.element[41].extension[0].extension[1].url = "cardinalityMax"
* group.element[41].extension[0].extension[1].valueInteger = -1
* group.element[41].display = "Participation (Observation Participation)"
* group.element[41].target.equivalence = #equivalent
* group.element[41].target.code = #PractitionerRole[7]
* group.element[41].target.display = "PractitionerRole[7]"
* group.element[41].target.comment = """
Incorporate PRT content into the Observation created from the OBX segment in the same segment group when it represents observation practitioner information.
If PRT-2 is set to "D" and "inactive" cannot be used, please submit a JIRA with context and rationale.\
"""
* group.element[42].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.NTE
* group.element[42].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[42].extension[0].extension[0].url = "cardinalityMin"
* group.element[42].extension[0].extension[0].valueInteger = 0
* group.element[42].extension[0].extension[1].url = "cardinalityMax"
* group.element[42].extension[0].extension[1].valueInteger = -1
* group.element[42].display = "Notes and comments"
* group.element[42].target.equivalence = #equivalent
* group.element[42].target.code = #Observation[2].note
* group.element[42].target.display = "Observation[2].note"
* group.element[43].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.SPECIMEN.SPM
* group.element[43].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[43].extension[0].extension[0].url = "cardinalityMin"
* group.element[43].extension[0].extension[0].valueInteger = 1
* group.element[43].extension[0].extension[1].url = "cardinalityMax"
* group.element[43].extension[0].extension[1].valueInteger = 1
* group.element[43].display = "Specimen"
* group.element[43].target.equivalence = #equivalent
* group.element[43].target.code = #Specimen[n]
* group.element[43].target.display = "Specimen[n]"
* group.element[44].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.SPECIMEN.SPECIMEN_OBSERVATION.OBX
* group.element[44].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[44].extension[0].extension[0].url = "cardinalityMin"
* group.element[44].extension[0].extension[0].valueInteger = 1
* group.element[44].extension[0].extension[1].url = "cardinalityMax"
* group.element[44].extension[0].extension[1].valueInteger = 1
* group.element[44].display = "Observation (for Patient ID)"
* group.element[44].target.equivalence = #equivalent
* group.element[44].target.code = #Observation[3]
* group.element[44].target.display = "Observation[3]"
* group.element[45].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.SPECIMEN.SPECIMEN_OBSERVATION.OBX
* group.element[45].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[45].extension[0].extension[0].url = "cardinalityMin"
* group.element[45].extension[0].extension[0].valueInteger = 1
* group.element[45].extension[0].extension[1].url = "cardinalityMax"
* group.element[45].extension[0].extension[1].valueInteger = 1
* group.element[45].display = "Observation (for Patient ID)"
* group.element[45].target.equivalence = #equivalent
* group.element[45].target.code = #Observation[3]
* group.element[45].target.display = "Observation[3]"
