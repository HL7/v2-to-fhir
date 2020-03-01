Instance: ConceptMapv2-0480toOrderType
InstanceOf: ConceptMap
Title: "ConceptMap v2-0480 to Order Type Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table v2-0480 to the FHIR Order Type Value Set."
* id = "conceptmap-v2-0480-to-order-type"
* url = "http://hl7.org/fhir/v2-tofhir"
* version = "1.0"
* name = "ConceptMap_v2-0480_Map"
* status = #active
* experimental = true
* date = "2020-03-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "http://terminology.hl7.org/CodeSystem/v2-0480"
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
