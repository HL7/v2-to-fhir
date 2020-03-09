Instance: MessageORU_R01toBundle
InstanceOf: ConceptMap
Title: "Message ORU_R01 to Bundle Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 ORU_R01 Message to the FHIR Message Bundle."
* id = "message-oru-r01-to-bundle"
* url = "http://hl7.org/fhir/v2-tofhir/message-oru-r01-to-bundle"
* version = "1.0"
* name = "Message_ORU_R01_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ORU_R01"
* targetUri = "Bundle"
* group.element[0].code = #ORU_R01.MSH
* group.element[0].display = "Message Header"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #MessageHeader[1]
* group.element[0].target.display = "MessageHeader[1]"
* group.element[1].code = #ORU_R01.MSH
* group.element[1].display = "Message Header"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Provenance[1]
* group.element[1].target.display = "Provenance[1]"
* group.element[2].code = #ORU_R01.MSH
* group.element[2].display = "Message Header"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Provenance[2]
* group.element[2].target.display = "Provenance[2]"
* group.element[3].code = #ORU_R01.SFT
* group.element[3].display = "Software Segment"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #MessageHeader[1]
* group.element[3].target.display = "MessageHeader[1]"
* group.element[4].code = #ORU_R01.PATIENT_RESULT.PATIENT.PID
* group.element[4].display = "Patient Identification"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Patient[1]
* group.element[4].target.display = "Patient[1]"
* group.element[5].code = #ORU_R01.PATIENT_RESULT.PATIENT.PD1
* group.element[5].display = "Additional Demographics"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Patient[1]
* group.element[5].target.display = "Patient[1]"
* group.element[6].code = #ORU_R01.PATIENT_RESULT.PATIENT.PRT
* group.element[6].display = "Participation (for Patient)"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #PractitionerRole[1]
* group.element[6].target.display = "PractitionerRole[1]"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = """
(PRT.element(4.1)="PP")and(PRT.element(4.3)="HL70443")
# IF PRT-4.1 EQUALS "PP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[7].code = #ORU_R01.PATIENT_RESULT.PATIENT.PRT
* group.element[7].display = "Participation (for Patient)"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #RelatedPerson[1]
* group.element[7].target.display = "RelatedPerson[1]"
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = """
(PRT.element(4.1)!="PP")or(PRT.element(4.3)!="HL70443")
# IF PRT-4.1 NOT EQUALS "PP" OR PRT-4.3 NOT EQUALS "HL70443"\
"""
* group.element[8].code = #ORU_R01.PATIENT_RESULT.PATIENT.NK1
* group.element[8].display = "Next of Kin/Associated Parties"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #RelatedPerson[2]
* group.element[8].target.display = "RelatedPerson[2]"
* group.element[8].target.dependsOn[0].property = "value"
* group.element[8].target.dependsOn[0].value = "The FHIR location will depend on the nature of the data being exchanged and how the systems use next of kin data"
* group.element[9].code = #ORU_R01.PATIENT_RESULT.PATIENT.NK1
* group.element[9].display = "Next of Kin/Associated Parties"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Patient[1].contact
* group.element[9].target.display = "Patient[1].contact"
* group.element[9].target.dependsOn[0].property = "value"
* group.element[9].target.dependsOn[0].value = "The FHIR location will depend on the nature of the data being exchanged and how the systems use next of kin data"
* group.element[10].code = #ORU_R01.PATIENT_RESULT.PATIENT.PATIENT_OBSERVATION.OBX
* group.element[10].display = "Observation (for Patient ID)"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Observation[1]
* group.element[10].target.display = "Observation[1]"
* group.element[10].target.dependsOn[0].property = "value"
* group.element[10].target.dependsOn[0].value = """
# IF OBX-5 LST.count LESS THAN OR EQUALS 1\
"""
* group.element[11].code = #ORU_R01.PATIENT_RESULT.PATIENT.PATIENT_OBSERVATION.OBX
* group.element[11].display = "Observation (for Patient ID)"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Observation[1]
* group.element[11].target.display = "Observation[1]"
* group.element[11].target.dependsOn[0].property = "value"
* group.element[11].target.dependsOn[0].value = """
# IF OBX-5 LST.count GREATER THAN 1\
"""
* group.element[12].code = #ORU_R01.PATIENT_RESULT.PATIENT.PATIENT_OBSERVATION.PRT
* group.element[12].display = "Participation (Observation Participation)"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Device
* group.element[12].target.display = "Device"
* group.element[12].target.dependsOn[0].property = "value"
* group.element[12].target.dependsOn[0].value = """
# IF PRT-10 VALUED\
"""
* group.element[13].code = #ORU_R01.PATIENT_RESULT.PATIENT.PATIENT_OBSERVATION.PRT
* group.element[13].display = "Participation (Observation Participation)"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Observation[1]
* group.element[13].target.display = "Observation[1]"
* group.element[13].target.dependsOn[0].property = "value"
* group.element[13].target.dependsOn[0].value = """
# IF PRT-9 VALUED OR IF PRT-14 VALUED\
"""
* group.element[14].code = #ORU_R01.PATIENT_RESULT.PATIENT.PATIENT_OBSERVATION.PRT
* group.element[14].display = "Participation (Observation Participation)"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #PractitionerRole[1]
* group.element[14].target.display = "PractitionerRole[1]"
* group.element[14].target.dependsOn[0].property = "value"
* group.element[14].target.dependsOn[0].value = """
# IF PRT-5 VALUED\
"""
* group.element[15].code = #ORU_R01.PATIENT_RESULT.PATIENT.VISIT.PV1
* group.element[15].display = "Patient Visit"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Encounter[1]
* group.element[15].target.display = "Encounter[1]"
* group.element[16].code = #ORU_R01.PATIENT_RESULT.PATIENT.VISIT.PV2
* group.element[16].display = "Patient Visit - Additional Info"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Encounter[1]
* group.element[16].target.display = "Encounter[1]"
* group.element[17].code = #ORU_R01.PATIENT_RESULT.PATIENT.VISIT.PRT
* group.element[17].display = "Participation (for Patient Visit)"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #PractitionerRole[2]
* group.element[17].target.display = "PractitionerRole[2]"
* group.element[18].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.COMMON_ORDER.ORC
* group.element[18].display = "Order common"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #DiagnosticReport[1]
* group.element[18].target.display = "DiagnosticReport[1]"
* group.element[19].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.COMMON_ORDER.ORC
* group.element[19].display = "Order common"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #ServiceRequest[1]
* group.element[19].target.display = "ServiceRequest[1]"
* group.element[20].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.COMMON_ORDER.PRT
* group.element[20].display = "Participation (for Observation)"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #PractitionerRole[3]
* group.element[20].target.display = "PractitionerRole[3]"
* group.element[20].target.dependsOn[0].property = "value"
* group.element[20].target.dependsOn[0].value = """
(element("4.1")="OP")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "OP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[21].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBR
* group.element[21].display = "Observations Request"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #DiagnosticReport[1]
* group.element[21].target.display = "DiagnosticReport[1]"
* group.element[22].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBR
* group.element[22].display = "Observations Request"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #ServiceRequest[1]
* group.element[22].target.display = "ServiceRequest[1]"
* group.element[22].target.dependsOn[0].property = "value"
* group.element[22].target.dependsOn[0].value = "If a ServiceRequest needs to be created for the receiver."
* group.element[23].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.PRT
* group.element[23].display = "Participation (for Observation)"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #PractitionerRole[4]
* group.element[23].target.display = "PractitionerRole[4]"
* group.element[23].target.dependsOn[0].property = "value"
* group.element[23].target.dependsOn[0].value = """
PRT.element(4.1) in ("ARI","TN", "TR")and(PRT.element(4.3)="HL70443")
# IF PRT-4.1 IN ("ARI","TN","TR") AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[24].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.PRT
* group.element[24].display = "Participation (for Observation)"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #PractitionerRole[5]
* group.element[24].target.display = "PractitionerRole[5]"
* group.element[24].target.dependsOn[0].property = "value"
* group.element[24].target.dependsOn[0].value = """
(PRT.element(4.1)="PRI")and(PRT.element(4.3)="HL70443")
# IF PRT-4.1 EQUALS "PRI" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[25].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.PRT
* group.element[25].display = "Participation (for Observation)"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #PractitionerRole[6]
* group.element[25].target.display = "PractitionerRole[6]"
* group.element[25].target.dependsOn[0].property = "value"
* group.element[25].target.dependsOn[0].value = """
(element("4.1")="SC")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "SC" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[26].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.PRT
* group.element[26].display = "Participation (for Observation)"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #PractitionerRole[3]
* group.element[26].target.display = "PractitionerRole[3]"
* group.element[26].target.dependsOn[0].property = "value"
* group.element[26].target.dependsOn[0].value = """
(element("4.1")="OP")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "OP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[27].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.OBX
* group.element[27].display = "Observation related to OBR"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #Observation[2]
* group.element[27].target.display = "Observation[2]"
* group.element[27].target.dependsOn[0].property = "value"
* group.element[27].target.dependsOn[0].value = """
# IF OBX-5 LST.count LESS THAN OR EQUALS 1\
"""
* group.element[28].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.OBX
* group.element[28].display = "Observation related to OBR"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #Observation[2]
* group.element[28].target.display = "Observation[2]"
* group.element[28].target.dependsOn[0].property = "value"
* group.element[28].target.dependsOn[0].value = """
# IF OBX-5 LST.count GREATER THAN 1\
"""
* group.element[29].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.PRT
* group.element[29].display = "Participation (Observation Participation)"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #Device
* group.element[29].target.display = "Device"
* group.element[29].target.dependsOn[0].property = "value"
* group.element[29].target.dependsOn[0].value = """
# IF PRT-10 VALUED\
"""
* group.element[30].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.PRT
* group.element[30].display = "Participation (Observation Participation)"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #Observation[2]
* group.element[30].target.display = "Observation[2]"
* group.element[30].target.dependsOn[0].property = "value"
* group.element[30].target.dependsOn[0].value = """
# IF PRT-9 VALUED OR IF PRT-14 VALUED\
"""
* group.element[31].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.PRT
* group.element[31].display = "Participation (Observation Participation)"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #PractitionerRole[7]
* group.element[31].target.display = "PractitionerRole[7]"
* group.element[31].target.dependsOn[0].property = "value"
* group.element[31].target.dependsOn[0].value = """
# IF PRT-5 VALUED\
"""
* group.element[32].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.OBSERVATION.NTE
* group.element[32].display = "Notes and comments"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #Observation[2].note
* group.element[32].target.display = "Observation[2].note"
* group.element[33].code = #ORU_R01.PATIENT_RESULT.ORDER_OBSERVATION.SPECIMEN.SPM
* group.element[33].display = "Specimen"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #Specimen[1]
* group.element[33].target.display = "Specimen[1]"
