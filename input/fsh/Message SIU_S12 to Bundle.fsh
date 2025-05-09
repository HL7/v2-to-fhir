// HL7 Message - FHIR R4_ SIU_S12 - Sheet1.csv
Instance: MessageSIU_S12ToBundle
InstanceOf: ConceptMap
Title: "Message SIU_S12 to Bundle Map"
Usage: #definition
* title = "Message SIU_S12 to Bundle Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Message SIU_S12 to the FHIR Message Bundle."
* id = "message-siu-s12-to-bundle"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/message-siu-s12-to-bundle"
* name = "MessageSIU_S12ToBundle"
* insert PublicationData
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
* group.element[5].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[5].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[5].target.dependsOn[0].value = "IF SCH-26 or SCH-27 VALUED"
* group.element[5].target.dependsOn[0].display = "IF SCH-26 or SCH-27 VALUED"
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
* group.element[10].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[10].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[10].target.dependsOn[0].value = "IF PID-33 AND PID-34 VALUED"
* group.element[10].target.dependsOn[0].display = "IF PID-33 AND PID-34 VALUED"
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
* group.element[12].code = #SIU_S12.PATIENT.PV1
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "cardinalityMin"
* group.element[12].extension[0].extension[0].valueInteger = 0
* group.element[12].extension[0].extension[1].url = "cardinalityMax"
* group.element[12].extension[0].extension[1].valueInteger = 1
* group.element[12].display = "Patient Visit"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Basic
* group.element[12].target.display = "Basic"
* group.element[12].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[12].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[12].target.dependsOn[0].value = "IF PV1-43 VALUED"
* group.element[12].target.dependsOn[0].display = "IF PV1-43 VALUED"
* group.element[13].code = #SIU_S12.PATIENT.PV1
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "cardinalityMin"
* group.element[13].extension[0].extension[0].valueInteger = 0
* group.element[13].extension[0].extension[1].url = "cardinalityMax"
* group.element[13].extension[0].extension[1].valueInteger = 1
* group.element[13].display = "Patient Visit"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Patient[1]
* group.element[13].target.display = "Patient[1]"
* group.element[14].code = #SIU_S12.PATIENT.PV1
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "cardinalityMin"
* group.element[14].extension[0].extension[0].valueInteger = 0
* group.element[14].extension[0].extension[1].url = "cardinalityMax"
* group.element[14].extension[0].extension[1].valueInteger = 1
* group.element[14].display = "Patient Visit"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Coverage[1]
* group.element[14].target.display = "Coverage[1]"
* group.element[14].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[14].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[14].target.dependsOn[0].value = "IF PV1-20 VALUE"
* group.element[14].target.dependsOn[0].display = "IF PV1-20 VALUE"
* group.element[15].code = #SIU_S12.PATIENT.PV2
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "cardinalityMin"
* group.element[15].extension[0].extension[0].valueInteger = 0
* group.element[15].extension[0].extension[1].url = "cardinalityMax"
* group.element[15].extension[0].extension[1].valueInteger = 1
* group.element[15].display = "Patient Visit - Additional Info"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Encounter[1]
* group.element[15].target.display = "Encounter[1]"
* group.element[15].target.comment = "Incorporate PV2 content into the Encounter created from the PV1 segment."
* group.element[16].code = #SIU_S12.PATIENT.OBX
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "cardinalityMin"
* group.element[16].extension[0].extension[0].valueInteger = 0
* group.element[16].extension[0].extension[1].url = "cardinalityMax"
* group.element[16].extension[0].extension[1].valueInteger = -1
* group.element[16].display = "Observation/Result"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Observation[1]
* group.element[16].target.display = "Observation[1]"
* group.element[16].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[16].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[16].target.dependsOn[0].value = "IF OBX-5 LST.count LESS THAN OR EQUALS 1 OR OBX-2 IS \"NA\""
* group.element[16].target.dependsOn[0].display = "IF OBX-5 LST.count LESS THAN OR EQUALS 1 OR OBX-2 IS \"NA\""
* group.element[17].code = #SIU_S12.PATIENT.OBX
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "cardinalityMin"
* group.element[17].extension[0].extension[0].valueInteger = 0
* group.element[17].extension[0].extension[1].url = "cardinalityMax"
* group.element[17].extension[0].extension[1].valueInteger = -1
* group.element[17].display = "Observation/Result"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Observation[1]
* group.element[17].target.display = "Observation[1]"
* group.element[17].target.comment = "Note that when OBX-5 repeats, the standard mapping is to use Observation.component (see OBX[Observation-Component] map) rather than creating separate Observation instances.  However, we are aware that some profiles and implementation guides do separate the OBX into multiple observations depending on the OBX-2 value.  This is an example of a non-standard interpretation as the OBX should have been separated into multiple OBX segments to start.  Please consider the local profiles and implementation guides on how to manage these variants."
* group.element[17].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[17].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[17].target.dependsOn[0].value = "IF  OBX-5 LST.count GREATER THAN 1 AND OBX-2 IS NOT \"NA\""
* group.element[17].target.dependsOn[0].display = "IF  OBX-5 LST.count GREATER THAN 1 AND OBX-2 IS NOT \"NA\""
* group.element[18].code = #SIU_S12.PATIENT.DG1
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "cardinalityMin"
* group.element[18].extension[0].extension[0].valueInteger = 0
* group.element[18].extension[0].extension[1].url = "cardinalityMax"
* group.element[18].extension[0].extension[1].valueInteger = -1
* group.element[18].display = "Diagnosis"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Condition[1]
* group.element[18].target.display = "Condition[1]"
* group.element[18].target.comment = "Processing of the DG1 segment results in the creation of a new Condition resource"
* group.element[19].code = #SIU_S12.RESOURCES.SERVICE.AIS
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "cardinalityMin"
* group.element[19].extension[0].extension[0].valueInteger = 1
* group.element[19].extension[0].extension[1].url = "cardinalityMax"
* group.element[19].extension[0].extension[1].valueInteger = 1
* group.element[19].display = "Appointment Information - Service"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #Appointment[1]
* group.element[19].target.display = "Appointment[1]"
* group.element[20].code = #SIU_S12.RESOURCES.SERVICE.AIS
* group.element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "cardinalityMin"
* group.element[20].extension[0].extension[0].valueInteger = 1
* group.element[20].extension[0].extension[1].url = "cardinalityMax"
* group.element[20].extension[0].extension[1].valueInteger = 1
* group.element[20].display = "Appointment Information - Service"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #ServiceRequest[n]
* group.element[20].target.display = "ServiceRequest[n]"
* group.element[20].target.comment = """
Note that each ServiceRequest being created includes data from SCH segment.
If SCH-26 and SCH-27 repeat, then the implementer needs to determine how to align this with potentially repeating AIS segments.\
"""
* group.element[20].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[20].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[20].target.dependsOn[0].value = "IF SCH-26 IS VALUED OR SCH-27 IS VALUED"
* group.element[20].target.dependsOn[0].display = "IF SCH-26 IS VALUED OR SCH-27 IS VALUED"
* group.element[21].code = #SIU_S12.RESOURCES.SERVICE.NTE
* group.element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "cardinalityMin"
* group.element[21].extension[0].extension[0].valueInteger = 0
* group.element[21].extension[0].extension[1].url = "cardinalityMax"
* group.element[21].extension[0].extension[1].valueInteger = -1
* group.element[21].display = "Notes and Comments"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #Appointment[1]
* group.element[21].target.display = "Appointment[1]"
* group.element[21].target.comment = "Because multiple NTE segments in a message all need to map to a single Appointment.comment element, the content of the NTEs will need to be concatenated together in R4"
* group.element[22].code = #SIU_S12.RESOURCES.GENERAL_RESOURCE.AIG
* group.element[22].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[22].extension[0].extension[0].url = "cardinalityMin"
* group.element[22].extension[0].extension[0].valueInteger = 1
* group.element[22].extension[0].extension[1].url = "cardinalityMax"
* group.element[22].extension[0].extension[1].valueInteger = 1
* group.element[22].display = "Appointment Information - General Resource"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #Appointment[1]
* group.element[22].target.display = "Appointment[1]"
* group.element[23].code = #SIU_S12.RESOURCES.LOCATION_RESOURCE.AIL
* group.element[23].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[23].extension[0].extension[0].url = "cardinalityMin"
* group.element[23].extension[0].extension[0].valueInteger = 1
* group.element[23].extension[0].extension[1].url = "cardinalityMax"
* group.element[23].extension[0].extension[1].valueInteger = -1
* group.element[23].display = "Appointment Information - Location Resource"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #Appointment[1]
* group.element[23].target.display = "Appointment[1]"
* group.element[24].code = #SIU_S12.RESOURCES.PERSONNEL_RESOURCE.AIP
* group.element[24].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[24].extension[0].extension[0].url = "cardinalityMin"
* group.element[24].extension[0].extension[0].valueInteger = 1
* group.element[24].extension[0].extension[1].url = "cardinalityMax"
* group.element[24].extension[0].extension[1].valueInteger = -1
* group.element[24].display = "Appointment Information - Personnel Resource"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #Appointment[1]
* group.element[24].target.display = "Appointment[1]"
