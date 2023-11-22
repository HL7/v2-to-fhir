// HL7 Concept Map_ ObservationStatus - Sheet1.csv
Instance: TableHL70085ToObservationStatus
InstanceOf: ConceptMap
Title: "Table HL70085 to Observation Status Map"
* title = "Table HL70085 to Observation Status Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70085 to the FHIR Observation Status Value Set."
* id = "table-hl70085-to-observation-status"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70085-to-observation-status"
* version = "1.0"
* name = "TableHL70085ToObservationStatus"
* status = #active
* experimental = true
* date = "2023-11-22"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70085"
* targetUri = "http://hl7.org/fhir/observation-status"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70085 to Observation Status.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1RsA6SEYsjfrR6TbwY1JHBetrPyRED2RDzTa1jvHRvX0/edit#gid=0"
* group.element[0].code = #A
* group.element[0].display = "Amended"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #amended
* group.element[0].target.display = "Amended"
* group.element[1].code = #B
* group.element[1].display = "Appended"
* group.element[1].target.equivalence = #unmatched
* group.element[2].code = #C
* group.element[2].display = "Correction"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #corrected
* group.element[2].target.display = "Corrected"
* group.element[3].code = #D
* group.element[3].display = "Deleted"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #entered-in-error
* group.element[3].target.display = "Entered in Error"
* group.element[4].code = #F
* group.element[4].display = "Final"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #final
* group.element[4].target.display = "Final"
* group.element[5].code = #I
* group.element[5].display = "Specimen in Lab; results pending"
* group.element[5].target.equivalence = #equivalent
* group.element[6].code = #N
* group.element[6].display = "Not Asked"
* group.element[6].target.equivalence = #unmatched
* group.element[7].code = #O
* group.element[7].display = "Order Detail"
* group.element[7].target.equivalence = #unmatched
* group.element[8].code = #P
* group.element[8].display = "Preliminary"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #preliminary
* group.element[8].target.display = "Preliminary"
* group.element[9].code = #R
* group.element[9].display = "Entered - Not Verified"
* group.element[9].target.equivalence = #unmatched
* group.element[10].code = #S
* group.element[10].display = "Partial"
* group.element[10].target.equivalence = #unmatched
* group.element[11].code = #V
* group.element[11].display = "Verified"
* group.element[11].target.equivalence = #unmatched
* group.element[12].code = #X
* group.element[12].display = "Cannot be Obtained"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #cancelled
* group.element[13].code = #U
* group.element[13].display = "Status Change to Final Without Retransmission"
* group.element[13].target.equivalence = #unmatched
* group.element[14].code = #W
* group.element[14].display = "Original Posted as Wrong"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #entered-in-error
* group.element[14].target.display = "Entered in Error"
