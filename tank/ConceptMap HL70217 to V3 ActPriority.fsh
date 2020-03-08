Instance: ConceptMapHL70217toV3ActPriority
InstanceOf: ConceptMap
Title: "ConceptMap HL70217 to V3 ActPriority Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table HL70217 to the FHIR V3 ActPriority Value Set."
* id = "conceptmap-hl70217-to-v3-actpriority"
* url = "http://hl7.org/fhir/v2-tofhir/conceptmap-hl70217-to-v3-actpriority"
* version = "1.0"
* name = "ConceptMap_HL70217_Map"
* status = #active
* experimental = true
* date = "2020-03-07"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70217"
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
