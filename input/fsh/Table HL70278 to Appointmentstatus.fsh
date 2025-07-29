// HL7 Concept Map_ FillerStatusCodes[Appointment] - Sheet1.csv
Instance: TableHL70278ToAppointmentstatus
InstanceOf: ConceptMap
Title: "Table HL70278 to Appointmentstatus Map"
Usage: #definition
* title = "Table HL70278 to Appointmentstatus Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70278 to the FHIR Appointmentstatus Value Set."
* id = "table-hl70278-to-appointmentstatus"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70278-to-appointmentstatus"
* name = "TableHL70278ToAppointmentstatus"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0278"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70278 to Appointmentstatus.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1JSunQweA2Ab70tLNJUR8gZTYDq3ToDJv0mXS1cwJmd4/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0278"
* group[0].target = "http://hl7.org/fhir/appointmentstatus"
* group[0].element[0].code = #Pending
* group[0].element[0].display = "Pending"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #pending
* group[0].element[0].target.display = "Pending"
* group[0].element[1].code = #Waitlist
* group[0].element[1].display = "Waitlist"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #waitlist
* group[0].element[1].target.display = "Waitlisted"
* group[0].element[2].code = #Booked
* group[0].element[2].display = "Booked"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #booked
* group[0].element[2].target.display = "Booked"
* group[0].element[3].code = #Started
* group[0].element[3].display = "Started"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #checked-in
* group[0].element[3].target.display = "Checked In"
* group[0].element[4].code = #Complete
* group[0].element[4].display = "Complete"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #fulfilled
* group[0].element[4].target.display = "Fulfilled"
* group[0].element[5].code = #Cancelled
* group[0].element[5].display = "Cancelled"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #cancelled
* group[0].element[5].target.display = "Cancelled"
* group[0].element[6].code = #Deleted
* group[0].element[6].display = "Deleted"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #entered-in-error
* group[0].element[6].target.display = "Entered In Error"
* group[0].element[7].code = #Noshow
* group[0].element[7].display = "Noshow"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #noshow
* group[0].element[7].target.display = "No Show"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0278"
* group[1].element[0].code = #Discontinued
* group[1].element[0].display = "Discontinued"
* group[1].element[0].target.equivalence = #unmatched
* group[1].element[1].code = #Blocked
* group[1].element[1].display = "Blocked"
* group[1].element[1].target.equivalence = #unmatched
* group[1].element[2].code = #Overbook
* group[1].element[2].display = "Overbook"
* group[1].element[2].target.equivalence = #unmatched
