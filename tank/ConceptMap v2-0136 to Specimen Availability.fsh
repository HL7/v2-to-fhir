Instance: ConceptMapv2-0136toSpecimenAvailability
InstanceOf: ConceptMap
Title: "ConceptMap v2-0136 to Specimen Availability Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table v2-0136 to the FHIR Specimen Availability Value Set."
* id = "conceptmap-v2-0136-to-specimen-availability"
* url = "http://hl7.org/fhir/v2-tofhir"
* version = "1.0"
* name = "ConceptMap_v2-0136_Map"
* status = #active
* experimental = true
* date = "2020-03-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "http://terminology.hl7.org/CodeSystem/v2-0136"
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
