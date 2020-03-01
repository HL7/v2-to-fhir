Instance: ConceptMapv2-0155toAcknowledgements
InstanceOf: ConceptMap
Title: "ConceptMap v2-0155 to Acknowledgements Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table v2-0155 to the FHIR Acknowledgements Value Set."
* id = "conceptmap-v2-0155-to-acknowledgements"
* url = "http://hl7.org/fhir/v2-tofhir"
* version = "1.0"
* name = "ConceptMap_v2-0155_Map"
* status = #active
* experimental = true
* date = "2020-03-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "http://terminology.hl7.org/CodeSystem/v2-0155"
* targetUri = "http://hl7.org/fhir/messageheader-response-request"
* group.element[0].code = #AL
* group.element[0].display = "Always"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #always
* group.element[0].target.display = "Always"
* group.element[1].code = #NE
* group.element[1].display = "Never"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #never
* group.element[1].target.display = "Never"
* group.element[2].code = #ER
* group.element[2].display = "Error/reject conditions only"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #on-error
* group.element[2].target.display = "Error/reject conditions only"
* group.element[3].code = #SU
* group.element[3].display = "Successful completion only"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #on-success
* group.element[3].target.display = "Successful completion only"
