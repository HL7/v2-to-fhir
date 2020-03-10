Instance: SegmentMSHtoProvenance
InstanceOf: ConceptMap
Title: "Segment MSH to Provenance Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 MSH Segment to the FHIR Provenance Resource."
* id = "segment-mshprovenance-translator-to-provenance"
* url = "http://hl7.org/fhir/v2-tofhir/segment-mshprovenance-translator-to-provenance"
* version = "1.0"
* name = "Segment_MSH_Map"
* status = #active
* experimental = true
* date = "2020-03-10"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "MSH"
* targetUri = "Provenance"
* group.element[0].code = #MSH-1
* group.element[0].display = "Field Separator"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Provenance.recorded
* group.element[0].target.display = "= <timestamp of tranformation>"
* group.element[1].code = #MSH-2
* group.element[1].display = "Encoding Characters"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Provenance.policy
* group.element[1].target.display = "= <uri of the policy governing transformation of the v2 to FHIR>"
* group.element[2].code = #MSH-3
* group.element[2].display = "Sending Application"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Provenance.agent.type.coding.code
* group.element[2].target.display = "= \"assembler\""
* group.element[3].code = #MSH-4
* group.element[3].display = "Sending Facility"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Provenance.agent.type.coding.system
* group.element[3].target.display = "= \"http://terminology.hl7.org/CodeSystem/provenance-participant-type\""
