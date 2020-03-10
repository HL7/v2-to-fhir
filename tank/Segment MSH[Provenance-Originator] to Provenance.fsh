Instance: SegmentMSHtoProvenance
InstanceOf: ConceptMap
Title: "Segment MSH to Provenance Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 MSH Segment to the FHIR Provenance Resource."
* id = "segment-mshprovenance-originator-to-provenance"
* url = "http://hl7.org/fhir/v2-tofhir/segment-mshprovenance-originator-to-provenance"
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
* group.element[0].code = #MSH-4
* group.element[0].display = "Sending Facility"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Provenance.agent.who(Organization)
* group.element[0].target.display = "Provenance.agent.who(Organization)"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = """
# IF MSH-22 NOT VALUED\
"""
* group.element[1].code = #MSH-4
* group.element[1].display = "Sending Facility"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Provenance.agent.type.coding.code
* group.element[1].target.display = "= \"author\""
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = """
# IF MSH-22 NOT VALUED\
"""
* group.element[2].code = #MSH-4
* group.element[2].display = "Sending Facility"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Provenance.agent.type.coding.system
* group.element[2].target.display = "= \"http://terminology.hl7.org/CodeSystem/provenance-participant-type\""
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = """
# IF MSH-22 NOT VALUED\
"""
* group.element[3].code = #MSH-7
* group.element[3].display = "Date/Time of Message"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Provenance.recorded
* group.element[3].target.display = "Provenance.recorded"
* group.element[4].code = #MSH-7
* group.element[4].display = "Date/Time of Message"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Provenance.occuredDateTime
* group.element[4].target.display = "Provenance.occuredDateTime"
* group.element[5].code = #MSH-22
* group.element[5].display = "Sending Responsible Organization"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Provenance.agent.who(Organization)
* group.element[5].target.display = "Provenance.agent.who(Organization)"
* group.element[6].code = #MSH-22
* group.element[6].display = "Sending Responsible Organization"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Provenance.agent.type.coding.code
* group.element[6].target.display = "= \"author\""
* group.element[7].code = #MSH-22
* group.element[7].display = "Sending Responsible Organization"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Provenance.agent.type.coding.system
* group.element[7].target.display = "= \"http://terminology.hl7.org/CodeSystem/provenance-participant-type\""
