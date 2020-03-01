Instance: ConceptMapv2-0444toNameAssemblyOrder
InstanceOf: ConceptMap
Title: "ConceptMap v2-0444 to Name Assembly Order Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table v2-0444 to the FHIR Name Assembly Order Value Set."
* id = "conceptmap-v2-0444-to-name-assembly-order"
* url = "http://hl7.org/fhir/v2-tofhir"
* version = "1.0"
* name = "ConceptMap_v2-0444_Map"
* status = #active
* experimental = true
* date = "2020-03-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "http://terminology.hl7.org/CodeSystem/v2-0444"
* targetUri = "http://terminology.hl7.org/CodeSystem/v2-0444"
* group.element[0].code = #G
* group.element[0].display = "Prefix Given Middle Family Suffix"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #G
* group.element[0].target.display = "Prefix Given Family Suffix"
* group.element[1].code = #F
* group.element[1].display = "Prefix Family Middle Given Suffix"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #F
* group.element[1].target.display = "Prefix Family Given Suffix"
