Instance: SegmentRXRtoImmunization
InstanceOf: ConceptMap
Title: "Segment RXR to Immunization Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 RXR Segment to the FHIR Immunization Resource."
* id = "segment-rxr-to-immunization"
* url = "http://hl7.org/fhir/v2-tofhir/segment-rxr-to-immunization"
* version = "1.0"
* name = "Segment_RXR_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "RXR"
* targetUri = "Immunization"
* group.element[0].code = #RXR-1
* group.element[0].display = "Route"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Immunization.route
* group.element[0].target.display = "Immunization.route"
* group.element[1].code = #RXR-2
* group.element[1].display = "Administration Site"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Immunization.site
* group.element[1].target.display = "Immunization.site"
