Instance: ConceptMapv2-0322toCompletionStatus
InstanceOf: ConceptMap
Title: "ConceptMap v2-0322 to Completion Status Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table v2-0322 to the FHIR Completion Status Value Set."
* id = "conceptmap-v2-0322-to-completion-status"
* url = "http://hl7.org/fhir/v2-tofhir"
* version = "1.0"
* name = "ConceptMap_v2-0322_Map"
* status = #active
* experimental = true
* date = "2020-03-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "http://terminology.hl7.org/CodeSystem/v2-0322"
* targetUri = "http://hl7.org/fhir/event-status"
* group.element[0].code = #CP
* group.element[0].display = "Complete"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #completed
* group.element[0].target.display = "Completed"
* group.element[1].code = #RE
* group.element[1].display = "Refused"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #not-done
* group.element[1].target.display = "Not Done"
* group.element[2].code = #NA
* group.element[2].display = "Not Administered"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #not-done
* group.element[2].target.display = "Not Done"
* group.element[3].code = #PA
* group.element[3].display = "Partially Administered"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #completed
* group.element[3].target.display = "Completed"
