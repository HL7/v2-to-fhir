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
* targetUri = "http://hl7.org/fhir/ValueSet/appointmentstatus"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70278 to Appointmentstatus.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1JSunQweA2Ab70tLNJUR8gZTYDq3ToDJv0mXS1cwJmd4/edit#gid=0"
* group.element[0].code = #Pending
* group.element[0].display = "Pending"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #pending
* group.element[0].target.display = "Proposed"
* group.element[1].code = #Waitlist
* group.element[1].display = "Waitlist"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #waitlist
* group.element[1].target.display = "Waitlisted"
* group.element[2].code = #Booked
* group.element[2].display = "Booked"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #booked
* group.element[2].target.display = "Booked"
* group.element[3].code = #Started
* group.element[3].display = "Started"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #checked-in
* group.element[3].target.display = "Checked In"
* group.element[4].code = #Complete
* group.element[4].display = "Complete"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #fulfilled
* group.element[4].target.display = "Fulfilled"
* group.element[5].code = #Cancelled
* group.element[5].display = "Cancelled"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #cancelled
* group.element[5].target.display = "Cancelled"
* group.element[6].code = #Discontinued
* group.element[6].display = "Discontinued"
* group.element[6].target.equivalence = #unmatched
* group.element[7].code = #Deleted
* group.element[7].display = "Deleted"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #entered-in-error
* group.element[7].target.display = "Entered In Error"
* group.element[8].code = #Blocked
* group.element[8].display = "Blocked"
* group.element[8].target.equivalence = #unmatched
* group.element[9].code = #Overbook
* group.element[9].display = "Overbook"
* group.element[9].target.equivalence = #unmatched
* group.element[10].code = #Noshow
* group.element[10].display = "Noshow"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #noshow
* group.element[10].target.display = "No Show"
