Instance: TableHL70322toEventStatus
InstanceOf: ConceptMap
Title: "Table HL70322 to Event Status Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table HL70322 to the FHIR Event Status Value Set."
* id = "table-hl70322-to-event-status"
* url = "http://hl7.org/fhir/v2-tofhir/table-hl70322-to-event-status"
* version = "1.0"
* name = "Table_HL70322_Map"
* status = #active
* experimental = true
* date = "2020-03-10"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70322"
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
