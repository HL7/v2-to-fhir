Instance: SegmentPV2toEncounter
InstanceOf: ConceptMap
Title: "Segment PV2 to Encounter Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 PV2 Segment to the FHIR Encounter Resource."
* id = "segment-pv2-to-encounter"
* url = "http://hl7.org/fhir/v2-tofhir/segment-pv2-to-encounter"
* version = "1.0"
* name = "Segment_PV2_Map"
* status = #active
* experimental = true
* date = "2020-03-08"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PV2"
* targetUri = "Encounter"
* group.element[0].code = #PV2-3
* group.element[0].display = "Admit Reason"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Encounter.reasonCode
* group.element[0].target.display = "Encounter.reasonCode"
* group.element[0].target.comment = "PV2-3 doesn't have an associated table so no vocabulary mapping is provided"
* group.element[1].code = #PV2-11
* group.element[1].display = "Actual Length of Inpatient Stay"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Encounter.length.value
* group.element[1].target.display = "Encounter.length.value"
* group.element[2].code = #PV2-11
* group.element[2].display = "Actual Length of Inpatient Stay"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Encounter.length.unit
* group.element[2].target.display = "= \"d\""
* group.element[3].code = #PV2-11
* group.element[3].display = "Actual Length of Inpatient Stay"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Encounter.length.system
* group.element[3].target.display = "= \"http://unitsofmeasure.org/\""
* group.element[4].code = #PV2-12
* group.element[4].display = "Visit Description"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Encounter.text.div
* group.element[4].target.display = "Encounter.text.div"
* group.element[5].code = #PV2-13
* group.element[5].display = "Referral Source Code"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Encounter.participant.individual(Practitioner|PractitionerRole)
* group.element[5].target.display = "Encounter.participant.individual(Practitioner|PractitionerRole)"
* group.element[6].code = #PV2-13
* group.element[6].display = "Referral Source Code"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Encounter.participant.type.coding.code
* group.element[6].target.display = "= \"REF\""
* group.element[7].code = #PV2-13
* group.element[7].display = "Referral Source Code"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Encounter.participant.type.coding.system
* group.element[7].target.display = "= \"http://terminology.hl7.org/CodeSystem/v3-ParticipationType\""
* group.element[8].code = #PV2-13
* group.element[8].display = "Referral Source Code"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Encounter.participant.type.text
* group.element[8].target.display = "= \"referrer\""
* group.element[9].code = #PV2-25
* group.element[9].display = "Visit Priority Code"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Encounter.priority
* group.element[9].target.display = "Encounter.priority"
* group.element[10].code = #PV2-38
* group.element[10].display = "Mode of Arrival Code"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Encounter.extension-encounter-modeOfArrival
* group.element[10].target.display = "Encounter.extension-encounter-modeOfArrival"
