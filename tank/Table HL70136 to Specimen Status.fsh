Instance: TableHL70136toSpecimenStatus
InstanceOf: ConceptMap
Title: "Table HL70136 to Specimen Status Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table HL70136 to the FHIR Specimen Status Value Set."
* id = "table-hl70136-to-specimen-status"
* url = "http://hl7.org/fhir/v2-tofhir/table-hl70136-to-specimen-status"
* version = "1.0"
* name = "Table_HL70136_Map"
* status = #active
* experimental = true
* date = "2020-03-10"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70136"
* targetUri = "http://hl7.org/fhir/specimen-status"
* group.element[0].code = #Y
* group.element[0].display = "Yes"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #available
* group.element[0].target.display = "Available"
* group.element[1].code = #N
* group.element[1].display = "No"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #unavailable
* group.element[1].target.display = "Unavailable"
