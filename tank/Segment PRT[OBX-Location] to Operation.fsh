Instance: SegmentPRTtoOperation
InstanceOf: ConceptMap
Title: "Segment PRT to Operation Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 PRT Segment to the FHIR Operation Resource."
* id = "segment-prtobx-location-to-operation"
* url = "http://hl7.org/fhir/v2-tofhir/segment-prtobx-location-to-operation"
* version = "1.0"
* name = "Segment_PRT_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PRT"
* targetUri = "Operation"
* group.element[0].code = #PRT-2
* group.element[0].display = "Action Code"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Operation
* group.element[0].target.display = "Operation"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = "if mapped to a restful service to progress the message."
* group.element[1].code = #PRT-9
* group.element[1].display = "Location"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Observation.ext-event-location(Location)
* group.element[1].target.display = "Observation.ext-event-location(Location)"
* group.element[2].code = #PRT-14
* group.element[2].display = "Address"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Observation.ext-event-location(Location.address)
* group.element[2].target.display = "Observation.ext-event-location(Location.address)"
