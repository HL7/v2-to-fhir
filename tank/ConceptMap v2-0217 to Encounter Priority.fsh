Instance: ConceptMapv2-0217toEncounterPriority
InstanceOf: ConceptMap
Title: "ConceptMap v2-0217 to Encounter Priority Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table v2-0217 to the FHIR Encounter Priority Value Set."
* id = "conceptmap-v2-0217-to-encounter-priority"
* url = "http://hl7.org/fhir/v2-tofhir"
* version = "1.0"
* name = "ConceptMap_v2-0217_Map"
* status = #active
* experimental = true
* date = "2020-03-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "http://terminology.hl7.org/CodeSystem/v2-0217"
* targetUri = "http://terminology.hl7.org/CodeSystem/v3-ActPriority"
* group.element[0].code = #1
* group.element[0].display = "Emergency"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #EM
* group.element[0].target.display = "emergency"
* group.element[1].code = #2
* group.element[1].display = "Urgent"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #UR
* group.element[1].target.display = "urgent"
* group.element[2].code = #3
* group.element[2].display = "Elective"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #EL
* group.element[2].target.display = "elective"
