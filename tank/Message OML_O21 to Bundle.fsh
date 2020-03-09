Instance: MessageOML_O21toBundle
InstanceOf: ConceptMap
Title: "Message OML_O21 to Bundle Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 OML_O21 Message to the FHIR Message Bundle."
* id = "message-oml-o21-to-bundle"
* url = "http://hl7.org/fhir/v2-tofhir/message-oml-o21-to-bundle"
* version = "1.0"
* name = "Message_OML_O21_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "OML_O21"
* targetUri = "Bundle"
* group.element[0].code = #OML_O21.MSH
* group.element[0].display = "Message Header"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #MessageHeader[1]
* group.element[0].target.display = "MessageHeader[1]"
* group.element[1].code = #OML_O21.MSH
* group.element[1].display = "Message Header"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Provenance[1]
* group.element[1].target.display = "Provenance[1]"
* group.element[2].code = #OML_O21.MSH
* group.element[2].display = "Message Header"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Provenance[2]
* group.element[2].target.display = "Provenance[2]"
* group.element[3].code = #OML_O21.SFT
* group.element[3].display = "Software"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #MessageHeader[1]
* group.element[3].target.display = "MessageHeader[1]"
* group.element[4].code = #OML_O21.PATIENT.PID
* group.element[4].display = "Patient Identification"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Patient[1]
* group.element[4].target.display = "Patient[1]"
* group.element[5].code = #OML_O21.PATIENT.PD1
* group.element[5].display = "Additional Demographics"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Patient[1]
* group.element[5].target.display = "Patient[1]"
* group.element[6].code = #OML_O21.PATIENT.PRT
* group.element[6].display = "Participation (for Patient)"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #PractitionerRole[1]
* group.element[6].target.display = "PractitionerRole[1]"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = """
(element("4.1")="PP")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "PP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[7].code = #OML_O21.PATIENT.PRT
* group.element[7].display = "Participation (for Patient)"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #RelatedPerson[1]
* group.element[7].target.display = "RelatedPerson[1]"
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = """
(element("4.1"!)="PP")or(element("4.3")!="HL70443")
# IF PRT-4.1 NOT EQUALS "PP" OR PRT-4.3 NOT EQUALS "HL70443"\
"""
* group.element[8].code = #OML_O21.PATIENT.NK1
* group.element[8].display = "Next of Kin/Associated Parties"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #RelatedPerson[2]
* group.element[8].target.display = "RelatedPerson[2]"
* group.element[8].target.dependsOn[0].property = "value"
* group.element[8].target.dependsOn[0].value = "The FHIR location will depend on the nature of the data being exchanged and how the systems use next of kin data"
* group.element[9].code = #OML_O21.PATIENT.NK1
* group.element[9].display = "Next of Kin/Associated Parties"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Patient[1].contact
* group.element[9].target.display = "Patient[1].contact"
* group.element[9].target.dependsOn[0].property = "value"
* group.element[9].target.dependsOn[0].value = "The FHIR location will depend on the nature of the data being exchanged and how the systems use next of kin data"
* group.element[10].code = #OML_O21.PATIENT.PATIENT_VISIT.PV1
* group.element[10].display = "Patient Visit"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Encounter[1]
* group.element[10].target.display = "Encounter[1]"
* group.element[11].code = #OML_O21.PATIENT.PATIENT_VISIT.PV2
* group.element[11].display = "Patient Visit- Additional Info"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Encounter[1]
* group.element[11].target.display = "Encounter[1]"
* group.element[12].code = #OML_O21.PATIENT.PATIENT_VISIT.PRT
* group.element[12].display = "Participation (for Patient Visit)"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #PractitionerRole[2]
* group.element[12].target.display = "PractitionerRole[2]"
* group.element[13].code = #OML_O21.PATIENT.INSURANCE.IN1
* group.element[13].display = "Insurance"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Coverage[1]
* group.element[13].target.display = "Coverage[1]"
* group.element[14].code = #OML_O21.PATIENT.INSURANCE.IN2
* group.element[14].display = "Insurance Additional Information"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Coverage[1]
* group.element[14].target.display = "Coverage[1]"
* group.element[15].code = #OML_O21.PATIENT.INSURANCE.IN3
* group.element[15].display = "Insurance Additional Information, Certification"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Coverage[1]
* group.element[15].target.display = "Coverage[1]"
* group.element[16].code = #OML_O21.PATIENT.AL1
* group.element[16].display = "Allergy Information"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #AllergyIntolerance
* group.element[16].target.display = "AllergyIntolerance"
* group.element[17].code = #OML_O21.ORDER.ORC
* group.element[17].display = "Common Order"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #ServiceRequest[1]
* group.element[17].target.display = "ServiceRequest[1]"
* group.element[18].code = #OML_O21.ORDER.ORC
* group.element[18].display = "Common Order"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Provenance[3]
* group.element[18].target.display = "Provenance[3]"
* group.element[19].code = #OML_O21.ORDER.PRT
* group.element[19].display = "Participation (for Common Order)"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #PractitionerRole[3]
* group.element[19].target.display = "PractitionerRole[3]"
* group.element[19].target.dependsOn[0].property = "value"
* group.element[19].target.dependsOn[0].value = """
(element("4.1")="OP")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "OP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[20].code = #OML_O21.ORDER.TIMING.TQ1
* group.element[20].display = "Timing/Quantity"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #ServiceRequest[1]
* group.element[20].target.display = "ServiceRequest[1]"
* group.element[21].code = #OML_O21.ORDER.TIMING.TQ2
* group.element[21].display = "Timing/Quantity Order Sequence"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #ServiceRequest[1]
* group.element[21].target.display = "ServiceRequest[1]"
* group.element[22].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBR
* group.element[22].display = "Observation Request"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #ServiceRequest[1]
* group.element[22].target.display = "ServiceRequest[1]"
* group.element[23].code = #OML_O21.ORDER.OBSERVATION_REQUEST.NTE
* group.element[23].display = "Notes and Comments (for Detail)"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #ServiceRequest[1].note
* group.element[23].target.display = "ServiceRequest[1].note"
* group.element[24].code = #OML_O21.ORDER.OBSERVATION_REQUEST.PRT
* group.element[24].display = "Participation (for Observation Request)"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #PractitionerRole[4]
* group.element[24].target.display = "PractitionerRole[4]"
* group.element[24].target.dependsOn[0].property = "value"
* group.element[24].target.dependsOn[0].value = """
(element("4.1")="SC")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "SC" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[25].code = #OML_O21.ORDER.OBSERVATION_REQUEST.PRT
* group.element[25].display = "Participation (for Observation Request)"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #PractitionerRole[3]
* group.element[25].target.display = "PractitionerRole[3]"
* group.element[25].target.dependsOn[0].property = "value"
* group.element[25].target.dependsOn[0].value = """
(element("4.1")="OP")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "OP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[26].code = #OML_O21.ORDER.OBSERVATION_REQUEST.DG1
* group.element[26].display = "Diagnosis"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #Condition[1]
* group.element[26].target.display = "Condition[1]"
* group.element[27].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBSERVATION.OBX
* group.element[27].display = "Observation/Result"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #Observation[1]
* group.element[27].target.display = "Observation[1]"
* group.element[27].target.dependsOn[0].property = "value"
* group.element[27].target.dependsOn[0].value = """
# IF OBX-29 IN ("QST", "SCI")\
"""
* group.element[28].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBSERVATION.PRT
* group.element[28].display = "Participation (for OBX)"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #Device
* group.element[28].target.display = "Device"
* group.element[28].target.dependsOn[0].property = "value"
* group.element[28].target.dependsOn[0].value = """
# IF PRT-10 VALUED\
"""
* group.element[29].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBSERVATION.PRT
* group.element[29].display = "Participation (for OBX)"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #Observation[2]
* group.element[29].target.display = "Observation[2]"
* group.element[29].target.dependsOn[0].property = "value"
* group.element[29].target.dependsOn[0].value = """
# IF PRT-9 VALUED OR IF PRT-14 VALUED\
"""
* group.element[30].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBSERVATION.PRT
* group.element[30].display = "Participation (for OBX)"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #PractitionerRole[7]
* group.element[30].target.display = "PractitionerRole[7]"
* group.element[30].target.dependsOn[0].property = "value"
* group.element[30].target.dependsOn[0].value = """
# IF PRT-5 VALUED\
"""
* group.element[31].code = #OML_O21.ORDER.OBSERVATION_REQUEST.SPECIMEN.SPM
* group.element[31].display = "Specimen"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #Specimen
* group.element[31].target.display = "Specimen"
