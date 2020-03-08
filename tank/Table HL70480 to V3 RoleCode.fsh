Instance: TableHL70480toV3RoleCode
InstanceOf: ConceptMap
Title: "Table HL70480 to V3 RoleCode Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table HL70480 to the FHIR V3 RoleCode Value Set."
* id = "table-hl70480-to-v3-rolecode"
* url = "http://hl7.org/fhir/v2-tofhir/table-hl70480-to-v3-rolecode"
* version = "1.0"
* name = "Table_HL70480_Map"
* status = #active
* experimental = true
* date = "2020-03-08"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70480"
* targetUri = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* group.element[0].code = #I
* group.element[0].display = "Inpatient Order"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #HOSP
* group.element[0].target.display = "Hospital"
* group.element[1].code = #O
* group.element[1].display = "Outpatient Order"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #OF
* group.element[1].target.display = "Outpatient facility"
