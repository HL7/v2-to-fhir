Instance: SegmentORCtoImmunization
InstanceOf: ConceptMap
Title: "Segment ORC to Immunization Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 ORC Segment to the FHIR Immunization Resource."
* id = "segment-orcimmunization-to-immunization"
* url = "http://hl7.org/fhir/v2-tofhir/segment-orcimmunization-to-immunization"
* version = "1.0"
* name = "Segment_ORC_Map"
* status = #active
* experimental = true
* date = "2020-03-10"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ORC"
* targetUri = "Immunization"
* group.element[0].code = #ORC-2
* group.element[0].display = "Placer Order Number"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Immunization.identifier[1]
* group.element[0].target.display = "Immunization.identifier[1]"
* group.element[1].code = #ORC-2
* group.element[1].display = "Placer Order Number"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Immunization.identifier[1].type.coding.code
* group.element[1].target.display = "= \"PLAC\""
* group.element[2].code = #ORC-2
* group.element[2].display = "Placer Order Number"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Immunization.identifier[1].type.coding.system
* group.element[2].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[3].code = #ORC-3
* group.element[3].display = "Filler Order Number"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Immunization.identifier[2]
* group.element[3].target.display = "Immunization.identifier[2]"
* group.element[4].code = #ORC-3
* group.element[4].display = "Filler Order Number"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Immunization.identifier[2].type.coding.code
* group.element[4].target.display = "= \"FILL\""
* group.element[5].code = #ORC-3
* group.element[5].display = "Filler Order Number"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Immunization.identifier[2].type.coding.system
* group.element[5].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[6].code = #ORC-9
* group.element[6].display = "Date/Time of Transaction"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Immunization.recorded
* group.element[6].target.display = "Immunization.recorded"
* group.element[7].code = #ORC-12
* group.element[7].display = "Ordering Provider"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Immunization.performer.actor(Practitioner)
* group.element[7].target.display = "Immunization.performer.actor(Practitioner)"
* group.element[8].code = #ORC-12
* group.element[8].display = "Ordering Provider"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Immunization.performer.function.coding.code
* group.element[8].target.display = "= \"OP\""
* group.element[9].code = #ORC-12
* group.element[9].display = "Ordering Provider"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Immunization.performer.function.coding.system
* group.element[9].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0443\""
