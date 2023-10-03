// HL7 Message - FHIR R4_ SIU-S12 - Sheet1.csv
Instance: MessageSIU_S12ToBundle
InstanceOf: ConceptMap
Title: "Message SIU_S12 to Bundle Map"
* title = "Message SIU_S12 to Bundle Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Message SIU_S12 to the FHIR Message Bundle."
* id = "message-siu-s12-to-bundle"
* url = "http://hl7.org/fhir/uv/v2mappings/message-siu-s12-to-bundle"
* version = "1.0"
* name = "MessageSIU_S12ToBundle"
* status = #active
* experimental = true
* date = "2023-10-03"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "SIU_S12"
* targetUri = "Bundle"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Message SIU:S12 to Bundle.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1kbcOetUxBZWvGNxHAmJgjZFMoDVNHvJufAEs8-p4y24/edit#gid=0"
* group.element[0].code = #SIU_S12.MSH
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].display = "Message Header"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Bundle
* group.element[0].target.display = "Bundle"
* group.element[0].target.dependsOn[0].property = "segment-map"
* group.element[0].target.dependsOn[0].value = "MSH[Bundle]"
* group.element[1].code = #SIU_S12.MSH
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
* group.element[1].target.dependsOn[0].property = "segment-map"
* group.element[1].target.dependsOn[0].value = "MSH[MessageHeader]"
* group.element[2].code = #SIU_S12.MSH
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "cardinalityMin"
* group.element[2].extension[0].extension[0].valueInteger = 1
* group.element[2].extension[0].extension[1].url = "cardinalityMax"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].display = "Message Header"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Provenance[1]
* group.element[2].target.display = "Provenance[1]"
* group.element[2].target.comment = "."
* group.element[2].target.dependsOn[0].property = "segment-map"
* group.element[2].target.dependsOn[0].value = "MSH[Provenance-Source]"
* group.element[2].target.dependsOn[1].property = "references"
* group.element[2].target.dependsOn[1].value = "Provenance[1].target.reference=Bundle.id; Provenance[1].target.reference=MessageHeader[1].id"
* group.element[3].code = #SIU_S12.MSH
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "cardinalityMin"
* group.element[3].extension[0].extension[0].valueInteger = 1
* group.element[3].extension[0].extension[1].url = "cardinalityMax"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].display = "Message Header"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Provenance[2]
* group.element[3].target.display = "Provenance[2]"
* group.element[3].target.dependsOn[0].property = "segment-map"
* group.element[3].target.dependsOn[0].value = "MSH[Provenance-Transformation]"
* group.element[3].target.dependsOn[1].property = "references"
* group.element[3].target.dependsOn[1].value = "Provenance[2].target.reference=Bundle.id"
* group.element[4].code = #SIU_S12.SCH
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "cardinalityMin"
* group.element[4].extension[0].extension[0].valueInteger = 1
* group.element[4].extension[0].extension[1].url = "cardinalityMax"
* group.element[4].extension[0].extension[1].valueInteger = 1
* group.element[4].display = "Schedule Activity Information"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Appointment[1]
* group.element[4].target.display = "Appointment[1]"
* group.element[4].target.dependsOn[0].property = "segment-map"
* group.element[4].target.dependsOn[0].value = "SCH[Appointment]"
* group.element[4].target.dependsOn[1].property = "references"
* group.element[4].target.dependsOn[1].value = "Appointment.participant.actor=Patient[1].id"
* group.element[5].code = #SIU_S12.SCH
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "cardinalityMin"
* group.element[5].extension[0].extension[0].valueInteger = 1
* group.element[5].extension[0].extension[1].url = "cardinalityMax"
* group.element[5].extension[0].extension[1].valueInteger = 1
* group.element[5].display = "Schedule Activity Information"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #ServiceRequest[1..n]
* group.element[5].target.display = "ServiceRequest[1..n]"
* group.element[5].target.dependsOn[0].property = "segment-map"
* group.element[5].target.dependsOn[0].value = "SCH[ServiceRequest]"
* group.element[5].target.dependsOn[1].property = "references"
* group.element[5].target.dependsOn[1].value = """
Appointment[1].basedOn=ServiceRequest[1..n].id
ServiceRequest[1..n].subject=Patient[1].id\
"""
* group.element[5].target.product[0].property = "antlr"
* group.element[5].target.product[0].value = "IF SCH-26 or SCH-27 VALUED"
* group.element[6].code = #SIU_S12.SCH
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "cardinalityMin"
* group.element[6].extension[0].extension[0].valueInteger = 1
* group.element[6].extension[0].extension[1].url = "cardinalityMax"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].display = "Schedule Activity Information"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Provenance[3]
* group.element[6].target.display = "Provenance[3]"
* group.element[6].target.dependsOn[0].property = "segment-map"
* group.element[6].target.dependsOn[0].value = "SCH[Provenance]"
* group.element[7].code = #SIU_S12.NTE
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "cardinalityMin"
* group.element[7].extension[0].extension[0].valueInteger = 0
* group.element[7].extension[0].extension[1].url = "cardinalityMax"
* group.element[7].extension[0].extension[1].valueInteger = -1
* group.element[7].display = "Notes and Comments"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Appointment[1]
* group.element[7].target.display = "Appointment[1]"
* group.element[7].target.comment = "Because multiple NTE segments in a message all need to map to a single Appointment.comment element, the content of the NTEs will need to be concatenated together in R4"
* group.element[7].target.dependsOn[0].property = "segment-map"
* group.element[7].target.dependsOn[0].value = "NTE[Appointment]"
* group.element[7].target.dependsOn[1].property = "references"
* group.element[7].target.dependsOn[1].value = "Appointment.participant.actor=Patient[1].id"
* group.element[8].code = #SIU_S12.PATIENT.PID
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "cardinalityMin"
* group.element[8].extension[0].extension[0].valueInteger = 1
* group.element[8].extension[0].extension[1].url = "cardinalityMax"
* group.element[8].extension[0].extension[1].valueInteger = 1
* group.element[8].display = "Patient Identification"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Patient[1]
* group.element[8].target.display = "Patient[1]"
* group.element[8].target.comment = "Processing of the PID segment results in the creation of a new Patient resource"
* group.element[8].target.dependsOn[0].property = "segment-map"
* group.element[8].target.dependsOn[0].value = "PID[Patient]"
* group.element[9].code = #SIU_S12.PATIENT.PID
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "cardinalityMin"
* group.element[9].extension[0].extension[0].valueInteger = 1
* group.element[9].extension[0].extension[1].url = "cardinalityMax"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].display = "Patient Identification"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Appointment[1]
* group.element[9].target.display = "Appointment[1]"
* group.element[9].target.dependsOn[0].property = "segment-map"
* group.element[9].target.dependsOn[0].value = "PID[Appointment]"
* group.element[9].target.dependsOn[1].property = "references"
* group.element[9].target.dependsOn[1].value = "Appointment.participant.actor=Patient[1].id"
* group.element[10].code = #SIU_S12.PATIENT.PID
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "cardinalityMin"
* group.element[10].extension[0].extension[0].valueInteger = 1
* group.element[10].extension[0].extension[1].url = "cardinalityMax"
* group.element[10].extension[0].extension[1].valueInteger = 1
* group.element[10].display = "Patient Identification"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Provenance[4]
* group.element[10].target.display = "Provenance[4]"
* group.element[10].target.dependsOn[0].property = "segment-map"
* group.element[10].target.dependsOn[0].value = "PID[Provenance-Patient]"
* group.element[10].target.dependsOn[1].property = "references"
* group.element[10].target.dependsOn[1].value = "Provenance.target.reference=Patient[1].id"
* group.element[10].target.product[0].property = "antlr"
* group.element[10].target.product[0].value = "IF PID-33 AND PID-34 VALUED"
* group.element[10].target.product[1].property = "narrative"
* group.element[10].target.product[1].value = "One  may drop PID-33 from the condition if PID-34 Last Update Facility is still sufficient without a date."
* group.element[11].code = #SIU_S12.PATIENT.PV1
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "cardinalityMin"
* group.element[11].extension[0].extension[0].valueInteger = 0
* group.element[11].extension[0].extension[1].url = "cardinalityMax"
* group.element[11].extension[0].extension[1].valueInteger = 1
* group.element[11].display = "Patient Visit"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Encounter[1]
* group.element[11].target.display = "Encounter[1]"
* group.element[11].target.comment = "Processing of the PV1 segment results in the creation of a new Encounter resource"
* group.element[11].target.dependsOn[0].property = "segment-map"
* group.element[11].target.dependsOn[0].value = "PV1[Encounter]"
* group.element[11].target.dependsOn[1].property = "references"
* group.element[11].target.dependsOn[1].value = "Encounter[1].subject.reference=Patient[1].id"
* group.element[12].code = #SIU_S12.PATIENT.PV1
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "cardinalityMin"
* group.element[12].extension[0].extension[0].valueInteger = 0
* group.element[12].extension[0].extension[1].url = "cardinalityMax"
* group.element[12].extension[0].extension[1].valueInteger = 1
* group.element[12].display = "Patient Visit"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Patient[1]
* group.element[12].target.display = "Patient[1]"
* group.element[12].target.dependsOn[0].property = "segment-map"
* group.element[12].target.dependsOn[0].value = "PV1[Patient]"
* group.element[13].code = #SIU_S12.PATIENT.PV2
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "cardinalityMin"
* group.element[13].extension[0].extension[0].valueInteger = 0
* group.element[13].extension[0].extension[1].url = "cardinalityMax"
* group.element[13].extension[0].extension[1].valueInteger = 1
* group.element[13].display = "Patient Visit - Additional Info"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Encounter[1]
* group.element[13].target.display = "Encounter[1]"
* group.element[13].target.comment = "Incorporate PV2 content into the Encounter created from the PV1 segment."
* group.element[13].target.dependsOn[0].property = "segment-map"
* group.element[13].target.dependsOn[0].value = "PV2[Encounter]"
* group.element[13].target.dependsOn[1].property = "references"
* group.element[13].target.dependsOn[1].value = "Encounter.subject=Patient[1].id"
* group.element[14].code = #SIU_S12.PATIENT.OBX
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "cardinalityMin"
* group.element[14].extension[0].extension[0].valueInteger = 0
* group.element[14].extension[0].extension[1].url = "cardinalityMax"
* group.element[14].extension[0].extension[1].valueInteger = -1
* group.element[14].display = "Observation/Result"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Observation
* group.element[14].target.display = "Observation"
* group.element[14].target.dependsOn[0].property = "segment-map"
* group.element[14].target.dependsOn[0].value = "OBX[Observation]"
* group.element[14].target.dependsOn[1].property = "references"
* group.element[14].target.dependsOn[1].value = "Observation.subject=Patient[1].id"
* group.element[15].code = #SIU_S12.PATIENT.DG1
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "cardinalityMin"
* group.element[15].extension[0].extension[0].valueInteger = 0
* group.element[15].extension[0].extension[1].url = "cardinalityMax"
* group.element[15].extension[0].extension[1].valueInteger = -1
* group.element[15].display = "Diagnosis"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Condition[1]
* group.element[15].target.display = "Condition[1]"
* group.element[15].target.comment = "Processing of the DG1 segment results in the creation of a new Condition resource"
* group.element[15].target.dependsOn[0].property = "segment-map"
* group.element[15].target.dependsOn[0].value = "DG1[Condition]"
* group.element[15].target.dependsOn[1].property = "references"
* group.element[15].target.dependsOn[1].value = "Condition[1].subject.reference=Patient[1].id"
* group.element[15].target.product[0].property = "narrative"
* group.element[15].target.product[0].value = "If in context of the patient"
* group.element[16].code = #SIU_S12.RESOURCES.SERVICE.AIS
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "cardinalityMin"
* group.element[16].extension[0].extension[0].valueInteger = 1
* group.element[16].extension[0].extension[1].url = "cardinalityMax"
* group.element[16].extension[0].extension[1].valueInteger = 1
* group.element[16].display = "Appointment Information - Service"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Appointment[1]
* group.element[16].target.display = "Appointment[1]"
* group.element[16].target.dependsOn[0].property = "segment-map"
* group.element[16].target.dependsOn[0].value = "AIS[Appointment]"
* group.element[16].target.product[0].property = "narrative"
* group.element[16].target.product[0].value = "Determine which AIS populates Appointment if there is more than one AIS."
* group.element[17].code = #SIU_S12.RESOURCES.SERVICE.AIS
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "cardinalityMin"
* group.element[17].extension[0].extension[0].valueInteger = 1
* group.element[17].extension[0].extension[1].url = "cardinalityMax"
* group.element[17].extension[0].extension[1].valueInteger = 1
* group.element[17].display = "Appointment Information - Service"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #ServiceRequest[n]
* group.element[17].target.display = "ServiceRequest[n]"
* group.element[17].target.comment = """
Note that each ServiceRequest being created includes data from SCH segment.
If SCH-26 and SCH-27 repeat, then the implementer needs to determine how to align this with potentially repeating AIS segments.\
"""
* group.element[17].target.dependsOn[0].property = "segment-map"
* group.element[17].target.dependsOn[0].value = "AIS[ServiceRequest]"
* group.element[17].target.product[0].property = "antlr"
* group.element[17].target.product[0].value = "IF SCH-26 IS VALUED OR SCH-27 IS VALUED"
* group.element[18].code = #SIU_S12.RESOURCES.SERVICE.NTE
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "cardinalityMin"
* group.element[18].extension[0].extension[0].valueInteger = 0
* group.element[18].extension[0].extension[1].url = "cardinalityMax"
* group.element[18].extension[0].extension[1].valueInteger = -1
* group.element[18].display = "Notes and Comments"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Appointment[1]
* group.element[18].target.display = "Appointment[1]"
* group.element[18].target.comment = "Because multiple NTE segments in a message all need to map to a single Appointment.comment element, the content of the NTEs will need to be concatenated together in R4"
* group.element[18].target.dependsOn[0].property = "segment-map"
* group.element[18].target.dependsOn[0].value = "NTE[Appointment]"
* group.element[18].target.dependsOn[1].property = "references"
* group.element[18].target.dependsOn[1].value = "Appointment.participant.actor=Patient[1].id"
* group.element[18].target.product[0].property = "narrative"
* group.element[18].target.product[0].value = "Determine which AIS populates Appointment if there is more than one AIS."
* group.element[19].code = #SIU_S12.RESOURCES.GENERAL_RESOURCE.AIG
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "cardinalityMin"
* group.element[19].extension[0].extension[0].valueInteger = 1
* group.element[19].extension[0].extension[1].url = "cardinalityMax"
* group.element[19].extension[0].extension[1].valueInteger = 1
* group.element[19].display = "Appointment Information - General Resource"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #Appointment[1]
* group.element[19].target.display = "Appointment[1]"
* group.element[19].target.dependsOn[0].property = "segment-map"
* group.element[19].target.dependsOn[0].value = "AIG[Appointment]"
* group.element[19].target.product[0].property = "narrative"
* group.element[19].target.product[0].value = "Determine which AIG populates Appointment if there is more than one AIG."
* group.element[20].code = #SIU_S12.RESOURCES.LOCATION_RESOURCE.AIL
* group.element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "cardinalityMin"
* group.element[20].extension[0].extension[0].valueInteger = 1
* group.element[20].extension[0].extension[1].url = "cardinalityMax"
* group.element[20].extension[0].extension[1].valueInteger = -1
* group.element[20].display = "Appointment Information - Location Resource"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #Appointment[1]
* group.element[20].target.display = "Appointment[1]"
* group.element[20].target.dependsOn[0].property = "segment-map"
* group.element[20].target.dependsOn[0].value = "AIL[Appointment]"
* group.element[20].target.product[0].property = "narrative"
* group.element[20].target.product[0].value = "Determine which AIL populates Appointment if there is more than one AIL."
* group.element[21].code = #SIU_S12.RESOURCES.PERSONNEL_RESOURCE.AIP
* group.element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "cardinalityMin"
* group.element[21].extension[0].extension[0].valueInteger = 1
* group.element[21].extension[0].extension[1].url = "cardinalityMax"
* group.element[21].extension[0].extension[1].valueInteger = -1
* group.element[21].display = "Appointment Information - Personnel Resource"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #Appointment[1]
* group.element[21].target.display = "Appointment[1]"
* group.element[21].target.dependsOn[0].property = "segment-map"
* group.element[21].target.dependsOn[0].value = "AIP[Appointment]"
