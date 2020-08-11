// HL7 Concept Map_ Event Reason - Sheet1.csv
Instance: TableHL70062toV3ActReason
InstanceOf: ConceptMap
Title: "Table HL70062 to V3 ActReason Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70062 to the FHIR V3 ActReason Value Set."
* id = "table-hl70062-to-v3-actreason"
* url = "http://hl7.org/fhir/v2-tofhir/table-hl70062-to-v3-actreason"
* version = "1.0"
* name = "TableHL70062toV3ActReason"
* status = #active
* experimental = true
* date = "2020-08-11"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70062"
* targetUri = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* group.element[0].code = #1
* group.element[0].display = "Patient request"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #PATRQT
* group.element[0].target.display = "patient requested"
* group.element[1].code = #2
* group.element[1].display = "Physician/health practitioner order"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #TREAT
* group.element[1].target.display = "treatment"
* group.element[2].code = #3
* group.element[2].display = "Census management"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #HOPERAT
* group.element[2].target.display = "healthcare operations"
* group.element[3].code = #O
* group.element[3].display = "Other"
* group.element[3].target.equivalence = #unmatched
* group.element[4].code = #U
* group.element[4].display = "Unknown"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #unknown
