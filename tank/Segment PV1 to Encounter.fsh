Instance: SegmentPV1toEncounter
InstanceOf: ConceptMap
Title: "Segment PV1 to Encounter Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 PV1 Segment to the FHIR Encounter Resource representing that segment."
* id = "segment-pv1-to-encounter"
* url = "http://hl7.org/fhir/v2-tofhir"
* version = "1.0"
* name = "Segment_PV1_Map"
* status = #active
* experimental = true
* date = "2020-03-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "https://www.hl7.org/v2"
* targetUri = "https://www.hl7.org/fhir"
* group.element[0].code = #PV1-2
* group.element[0].display = "Patient Class"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Encounter.class
* group.element[1].code = #PV1-2
* group.element[1].display = "Patient Class"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Encounter.status
* group.element[2].code = #PV1-3
* group.element[2].display = "Assigned Patient Location"
* group.element[2].target.comment = "Recommended is to put the most granular location from the v2 segment into the location.  But it is acceptable if all known location on the v2 segment are included."
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Encounter.location[1].location(Location)
* group.element[2].target.comment = "Recommended is to put the most granular location from the v2 segment into the location.  But it is acceptable if all known location on the v2 segment are included."
* group.element[3].code = #PV1-3
* group.element[3].display = "Assigned Patient Location"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Encounter.location[1].status
* group.element[3].target.display = "= \"active\""
* group.element[4].code = #PV1-3
* group.element[4].display = "Assigned Patient Location"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Encounter.location[1].status
* group.element[4].target.display = "= \"planned\""
* group.element[5].code = #PV1-4
* group.element[5].display = "Admission Type"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Encounter.type
* group.element[6].code = #PV1-5
* group.element[6].display = "Preadmit Number"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Encounter.hospitalization.preAdmissionIdentifier
* group.element[7].code = #PV1-6
* group.element[7].display = "Prior Patient Location"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Encounter.location[2].location(Location)
* group.element[8].code = #PV1-6
* group.element[8].display = "Prior Patient Location"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Encounter.location[2].status
* group.element[8].target.display = "= \"completed\""
* group.element[9].code = #PV1-7
* group.element[9].display = "Attending Doctor"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Encounter.participant[1].individual(Practitioner)
* group.element[10].code = #PV1-7
* group.element[10].display = "Attending Doctor"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Encounter.participant[1].type.coding.code
* group.element[10].target.display = "= \"ATND\""
* group.element[11].code = #PV1-7
* group.element[11].display = "Attending Doctor"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Encounter.participant[1].type.coding.system
* group.element[11].target.display = "= \"http://terminology.hl7.org/CodeSystem/v3-ParticipationType\""
* group.element[12].code = #PV1-7
* group.element[12].display = "Attending Doctor"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Encounter.participant[1].type.coding.display
* group.element[12].target.display = "= \"attender\""
* group.element[13].code = #PV1-8
* group.element[13].display = "Referring Doctor"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Encounter.participant[2].individual(Practitioner)
* group.element[14].code = #PV1-8
* group.element[14].display = "Referring Doctor"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Encounter.participant[2].type.coding.code
* group.element[14].target.display = "= \"REF\""
* group.element[15].code = #PV1-8
* group.element[15].display = "Referring Doctor"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Encounter.participant[2].type.coding.system
* group.element[15].target.display = "= \"http://terminology.hl7.org/CodeSystem/v3-ParticipationType\""
* group.element[16].code = #PV1-8
* group.element[16].display = "Referring Doctor"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Encounter.participant[2].type.text
* group.element[16].target.display = "= \"referrer\""
* group.element[17].code = #PV1-9
* group.element[17].display = "Consulting Doctor"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Encounter.participant[3].individual(Practitioner)
* group.element[18].code = #PV1-9
* group.element[18].display = "Consulting Doctor"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Encounter.participant[3].type.coding.code
* group.element[18].target.display = "= \"CON\""
* group.element[19].code = #PV1-9
* group.element[19].display = "Consulting Doctor"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #Encounter.participant[3].type.coding.system
* group.element[19].target.display = "= \"http://terminology.hl7.org/CodeSystem/v3-ParticipationType\""
* group.element[20].code = #PV1-9
* group.element[20].display = "Consulting Doctor"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #Encounter.participant[3].type.text
* group.element[20].target.display = "= \"consultant\""
* group.element[21].code = #PV1-10
* group.element[21].display = "Hospital Service"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #Encounter.serviceType
* group.element[22].code = #PV1-13
* group.element[22].display = "Re-admission Indicator"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #Encounter.hospitalization.reAdmission
* group.element[23].code = #PV1-14
* group.element[23].display = "Admit Source"
* group.element[23].target.comment = "Table 0023 doesn't have any suggested values, therefore there is no vocabulary mapping"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #Encounter.hospitalization.admitSource
* group.element[23].target.comment = "Table 0023 doesn't have any suggested values, therefore there is no vocabulary mapping"
* group.element[24].code = #PV1-16
* group.element[24].display = "VIP Indicator"
* group.element[24].target.comment = "Depending on the vocabulary used in PV1-16, this may require additional mapping."
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #Patient.extension-patient-importance
* group.element[24].target.comment = "Depending on the vocabulary used in PV1-16, this may require additional mapping."
* group.element[25].code = #PV1-17
* group.element[25].display = "Admitting Doctor"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #Encounter.participant[4].individual(Practitioner)
* group.element[26].code = #PV1-17
* group.element[26].display = "Admitting Doctor"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #Encounter.participant[4].type.coding.code
* group.element[26].target.display = "= \"ADM\""
* group.element[27].code = #PV1-17
* group.element[27].display = "Admitting Doctor"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #Encounter.participant[4].type.coding.system
* group.element[27].target.display = "= \"http://terminology.hl7.org/CodeSystem/v3-ParticipationType\""
* group.element[28].code = #PV1-17
* group.element[28].display = "Admitting Doctor"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #Encounter.participant[4].type.text
* group.element[28].target.display = "= \"admitter\""
* group.element[29].code = #PV1-19
* group.element[29].display = "Visit Number"
* group.element[29].target.comment = "Propose an identifier type of \"visit number\" "
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #Encounter.identifier[1]
* group.element[29].target.comment = "Propose an identifier type of \"visit number\" "
* group.element[30].code = #PV1-19
* group.element[30].display = "Visit Number"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #Encounter.identifie[1]r.type.coding.code
* group.element[30].target.display = "= \"VN\""
* group.element[31].code = #PV1-19
* group.element[31].display = "Visit Number"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #Encounter.identifier[1].type.coding.system
* group.element[31].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[31].target.comment = " .  "
* group.element[32].code = #PV1-19
* group.element[32].display = "Visit Number"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #Encounter.identifier[1].type.text
* group.element[32].target.display = "= \"visit number\""
* group.element[32].target.comment = " .  "
* group.element[33].code = #PV1-36
* group.element[33].display = "Discharge Disposition"
* group.element[33].target.comment = "Table 0112 doesn't have any suggested values, therefore there is no vocabulary mapping"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #Encounter.hospitalization.dischargeDisposition
* group.element[33].target.comment = "Table 0112 doesn't have any suggested values, therefore there is no vocabulary mapping"
* group.element[34].code = #PV1-37
* group.element[34].display = "Discharged to Location"
* group.element[34].target.comment = "Encounter.hospitalization.destination.reference=Location[1].id"
* group.element[34].target.equivalence = #equivalent
* group.element[34].target.code = #Encounter.hospitalization.destination(Location)
* group.element[34].target.comment = "Encounter.hospitalization.destination.reference=Location[1].id"
* group.element[35].code = #PV1-38
* group.element[35].display = "Diet Type"
* group.element[35].target.comment = "Table 0114 doesn't have any suggested values, therefore there is no vocabulary mapping"
* group.element[35].target.equivalence = #equivalent
* group.element[35].target.code = #Encounter.hospitalization.dietPreference
* group.element[35].target.comment = "Table 0114 doesn't have any suggested values, therefore there is no vocabulary mapping"
* group.element[36].code = #PV1-44
* group.element[36].display = "Admit Date/Time"
* group.element[36].target.equivalence = #equivalent
* group.element[36].target.code = #Encounter.period.start
* group.element[37].code = #PV1-45
* group.element[37].display = "Discharge Date/Time"
* group.element[37].target.equivalence = #equivalent
* group.element[37].target.code = #Encounter.period.end
* group.element[38].code = #PV1-45
* group.element[38].display = "Discharge Date/Time"
* group.element[38].target.equivalence = #equivalent
* group.element[38].target.code = #Encounter.status
* group.element[38].target.display = "= \"finished\""
* group.element[39].code = #PV1-50
* group.element[39].display = "Alternate Visit ID"
* group.element[39].target.equivalence = #equivalent
* group.element[39].target.code = #Encounter.identifier[2]
* group.element[40].code = #PV1-52
* group.element[40].display = "Other Healthcare Provider"
* group.element[40].target.equivalence = #equivalent
* group.element[40].target.code = #Encounter.participant[5].individual(Practitioner)
* group.element[41].code = #PV1-52
* group.element[41].display = "Other Healthcare Provider"
* group.element[41].target.equivalence = #equivalent
* group.element[41].target.code = #Encounter.participant[5].type.coding.code
* group.element[41].target.display = "= \"PART\""
* group.element[42].code = #PV1-52
* group.element[42].display = "Other Healthcare Provider"
* group.element[42].target.equivalence = #equivalent
* group.element[42].target.code = #Encounter.participant[5].type.coding.system
* group.element[42].target.display = "= \"http://terminology.hl7.org/CodeSystem/v3-ParticipationType\""
* group.element[43].code = #PV1-52
* group.element[43].display = "Other Healthcare Provider"
* group.element[43].target.equivalence = #equivalent
* group.element[43].target.code = #Encounter.participant[5].type.text
* group.element[43].target.display = "= \"Participation\""
* group.element[44].code = #PV1-54
* group.element[44].display = "Service Episode Identifier"
* group.element[44].target.equivalence = #equivalent
* group.element[44].target.code = #Encounter.episodeOfCare(EpisodeOfCare.identifier.value)
