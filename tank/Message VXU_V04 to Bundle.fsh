Instance: MessageVXU_V04toBundle
InstanceOf: ConceptMap
Title: "Message VXU_V04 to Bundle Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 VXU_V04 Message to the FHIR Message Bundle."
* id = "message-vxu-v04-to-bundle"
* url = "http://hl7.org/fhir/v2-tofhir/message-vxu-v04-to-bundle"
* version = "1.0"
* name = "Message_VXU_V04_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "VXU_V04"
* targetUri = "Bundle"
* group.element[0].code = #VXU_V04.MSH
* group.element[0].display = "Message Header Segment"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #MessageHeader[1]
* group.element[0].target.display = "MessageHeader[1]"
* group.element[1].code = #VXU_V04.MSH
* group.element[1].display = "Message Header Segment"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Provenance[1]
* group.element[1].target.display = "Provenance[1]"
* group.element[2].code = #VXU_V04.MSH
* group.element[2].display = "Message Header Segment"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Provenance[2]
* group.element[2].target.display = "Provenance[2]"
* group.element[3].code = #VXU_V04.SFT
* group.element[3].display = "Software"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #MessageHeader[1]
* group.element[3].target.display = "MessageHeader[1]"
* group.element[4].code = #VXU_V04.PID
* group.element[4].display = "Patient Identification Segment"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Patient[1]
* group.element[4].target.display = "Patient[1]"
* group.element[5].code = #VXU_V04.PD1
* group.element[5].display = "Additional Demographics"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Patient[1]
* group.element[5].target.display = "Patient[1]"
* group.element[6].code = #VXU_V04.NK1
* group.element[6].display = "Next of Kin/Associated Parties"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #RelatedPerson[1]
* group.element[6].target.display = "RelatedPerson[1]"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = "The FHIR location will depend on the nature of the data being exchanged and how the systems use next of kin data"
* group.element[7].code = #VXU_V04.NK1
* group.element[7].display = "Next of Kin/Associated Parties"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Patient[1].contact
* group.element[7].target.display = "Patient[1].contact"
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = "The FHIR location will depend on the nature of the data being exchanged and how the systems use next of kin data"
* group.element[8].code = #VXU_V04.PATIENT_VISIT.PV1
* group.element[8].display = "Patient Visit"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Encounter[1]
* group.element[8].target.display = "Encounter[1]"
* group.element[8].target.dependsOn[0].property = "value"
* group.element[8].target.dependsOn[0].value = "Only if the system wants to know about the encounter related to the immunization event"
* group.element[9].code = #VXU_V04.PATIENT_VISIT.PV2
* group.element[9].display = "Patient Visit – Additional Info"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Encounter[1]
* group.element[9].target.display = "Encounter[1]"
* group.element[10].code = #VXU_V04.PERSON_OBSERVATION.OBX
* group.element[10].display = "Observation/Result"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Observation[1]
* group.element[10].target.display = "Observation[1]"
* group.element[10].target.dependsOn[0].property = "value"
* group.element[10].target.dependsOn[0].value = """
# IF OBX-5 LST.count LESS THAN OR EQUALS 1\
"""
* group.element[11].code = #VXU_V04.PERSON_OBSERVATION.OBX
* group.element[11].display = "Observation/Result"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Observation[1]
* group.element[11].target.display = "Observation[1]"
* group.element[11].target.dependsOn[0].property = "value"
* group.element[11].target.dependsOn[0].value = """
# IF OBX-5 LST.count GREATER THAN 1\
"""
* group.element[12].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group.element[12].display = "Participation (for Observation)"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Device[1]
* group.element[12].target.display = "Device[1]"
* group.element[12].target.dependsOn[0].property = "value"
* group.element[12].target.dependsOn[0].value = """
# IF PRT-10 VALUED\
"""
* group.element[13].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group.element[13].display = "Participation (for Observation)"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Observation[1]
* group.element[13].target.display = "Observation[1]"
* group.element[13].target.dependsOn[0].property = "value"
* group.element[13].target.dependsOn[0].value = """
# IF PRT-9 VALUED OR IF PRT-14 VALUED\
"""
* group.element[14].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group.element[14].display = "Participation (for Observation)"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #PractitionerRole[1]
* group.element[14].target.display = "PractitionerRole[1]"
* group.element[14].target.dependsOn[0].property = "value"
* group.element[14].target.dependsOn[0].value = """
# IF PRT-5 VALUED\
"""
* group.element[15].code = #VXU_V04.PERSON_OBSERVATION.NTE
* group.element[15].display = "Notes (Regarding Patient Observation)"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Observation[1].note
* group.element[15].target.display = "Observation[1].note"
* group.element[16].code = #VXU_V04.ORDER.ORC
* group.element[16].display = "Common Order"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Immunization[1]
* group.element[16].target.display = "Immunization[1]"
* group.element[17].code = #VXU_V04.ORDER.ORC
* group.element[17].display = "Common Order"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #ServiceRequest[1]
* group.element[17].target.display = "ServiceRequest[1]"
* group.element[17].target.dependsOn[0].property = "value"
* group.element[17].target.dependsOn[0].value = "Only if the system wants to know about the order that lead to the immunization event"
* group.element[18].code = #VXU_V04.ORDER.PRT
* group.element[18].display = "Participation (for ORC)"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #PractitionerRole[2]
* group.element[18].target.display = "PractitionerRole[2]"
* group.element[18].target.dependsOn[0].property = "value"
* group.element[18].target.dependsOn[0].value = """
(element("4.1")="OP")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "OP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[19].code = #VXU_V04.ORDER.PRT
* group.element[19].display = "Participation (for ORC)"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #Immunization[1].performer.function.coding.code
* group.element[19].target.display = "= \"OP'\""
* group.element[19].target.dependsOn[0].property = "value"
* group.element[19].target.dependsOn[0].value = """
(element("4.1")="OP")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "OP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[20].code = #VXU_V04.ORDER.PRT
* group.element[20].display = "Participation (for ORC)"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #Immunization[1].performer.function.coding.system
* group.element[20].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0443\""
* group.element[20].target.dependsOn[0].property = "value"
* group.element[20].target.dependsOn[0].value = """
(element("4.1")="OP")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "OP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[21].code = #VXU_V04.ORDER.PRT
* group.element[21].display = "Participation (for ORC)"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #PractitionerRole[3]
* group.element[21].target.display = "PractitionerRole[3]"
* group.element[21].target.dependsOn[0].property = "value"
* group.element[21].target.dependsOn[0].value = """
(element("4.1")="AP")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "AP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[22].code = #VXU_V04.ORDER.PRT
* group.element[22].display = "Participation (for ORC)"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #Immunization[1].performer.function.coding.code
* group.element[22].target.display = "= \"AP'\""
* group.element[22].target.dependsOn[0].property = "value"
* group.element[22].target.dependsOn[0].value = """
(element("4.1")="AP")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "AP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[23].code = #VXU_V04.ORDER.PRT
* group.element[23].display = "Participation (for ORC)"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #Immunization[1].performer.function.coding.system
* group.element[23].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0443\""
* group.element[23].target.dependsOn[0].property = "value"
* group.element[23].target.dependsOn[0].value = """
(element("4.1")="AP")and(element("4.3")="HL70443")
# IF PRT-4.1 EQUALS "AP" AND PRT-4.3 EQUALS "HL70443"\
"""
* group.element[24].code = #VXU_V04.ORDER.RXA
* group.element[24].display = "Pharmacy Administration Segment"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #Immunization[1]
* group.element[24].target.display = "Immunization[1]"
* group.element[25].code = #VXU_V04.ORDER.RXR
* group.element[25].display = "Pharmacy Route"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #Immunization[1]
* group.element[25].target.display = "Immunization[1]"
* group.element[26].code = #VXU_V04.ORDER.OBSERVATION.OBX
* group.element[26].display = "Observation/Result"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #Observation[2]
* group.element[26].target.display = "Observation[2]"
* group.element[26].target.dependsOn[0].property = "value"
* group.element[26].target.dependsOn[0].value = """
# IF OBX-5 LST.count LESS THAN OR EQUALS 1\
"""
* group.element[26].target.dependsOn[0].value = "Some observations about the immunization may map to elements within the Immuniation resource rather than an independent Observation resource. For example, funding source, patient eligibility and educational material are often sent as OBX segments but map to Immunization elements.  Specific guidance on how to map, e.g., the US CDC implementation guide on immunizations, will be provided separately at a future time TBD."
* group.element[27].code = #VXU_V04.ORDER.OBSERVATION.OBX
* group.element[27].display = "Observation/Result"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #Observation[2]
* group.element[27].target.display = "Observation[2]"
* group.element[27].target.dependsOn[0].property = "value"
* group.element[27].target.dependsOn[0].value = """
# IF OBX-5 LST.count GREATER THAN 1\
"""
* group.element[27].target.dependsOn[0].value = "Some observations about the immunization may map to elements within the Immuniation resource rather than an independent Observation resource. For example, funding source, patient eligibility and educational material are often sent as OBX segments but map to Immunization elements.  Specific guidance on how to map, e.g., the US CDC implementation guide on immunizations, will be provided separately at a future time TBD."
* group.element[28].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group.element[28].display = "Participation (for Observation)"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #Device[2]
* group.element[28].target.display = "Device[2]"
* group.element[28].target.dependsOn[0].property = "value"
* group.element[28].target.dependsOn[0].value = """
# IF PRT-10 VALUED\
"""
* group.element[29].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group.element[29].display = "Participation (for Observation)"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #Observation[2]
* group.element[29].target.display = "Observation[2]"
* group.element[29].target.dependsOn[0].property = "value"
* group.element[29].target.dependsOn[0].value = """
# IF PRT-9 VALUED OR IF PRT-14 VALUED\
"""
* group.element[30].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group.element[30].display = "Participation (for Observation)"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #PractitionerRole[4]
* group.element[30].target.display = "PractitionerRole[4]"
* group.element[30].target.dependsOn[0].property = "value"
* group.element[30].target.dependsOn[0].value = """
# IF PRT-5 VALUED\
"""
* group.element[31].code = #VXU_V04.ORDER.OBSERVATION.NTE
* group.element[31].display = "Notes (Regarding Immunization)"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #Observation[2].note
* group.element[31].target.display = "Observation[2].note"
