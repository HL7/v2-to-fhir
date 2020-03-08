Instance: SegmentNTEtoAnnotation
InstanceOf: ConceptMap
Title: "Segment NTE to Annotation Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 NTE Segment to the FHIR Annotation Resource."
* id = "segment-nte-to-annotation"
* url = "http://hl7.org/fhir/v2-tofhir/segment-nte-to-annotation"
* version = "1.0"
* name = "Segment_NTE_Map"
* status = #active
* experimental = true
* date = "2020-03-08"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "NTE"
* targetUri = "Annotation"
* group.element[0].code = #NTE-3
* group.element[0].display = "Comment"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Annotation.text
* group.element[0].target.display = "Annotation.text"
* group.element[1].code = #NTE-5
* group.element[1].display = "Entered By"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Annotation.authorReference(Practitioner)
* group.element[1].target.display = "Annotation.authorReference(Practitioner)"
* group.element[2].code = #NTE-6
* group.element[2].display = "Entered Date/Time"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Annotation.time
* group.element[2].target.display = "Annotation.time"
