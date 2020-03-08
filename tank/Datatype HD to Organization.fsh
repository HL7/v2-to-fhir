Instance: DatatypeHDtoOrganization
InstanceOf: ConceptMap
Title: "Datatype HD to Organization Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-hd-to-organization"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-hd-to-organization"
* version = "1.0"
* name = "Datatype_HD_Map"
* status = #active
* experimental = true
* date = "2020-03-08"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HD"
* targetUri = "Organization"
* group.element[0].code = #HD.1
* group.element[0].display = "Namespace ID"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Organization.identifier[1].value
* group.element[0].target.display = "Organization.identifier[1].value"
* group.element[1].code = #HD.2
* group.element[1].display = "Universal ID"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Organization.identifier[2].value
* group.element[1].target.display = "Organization.identifier[2].value"
* group.element[2].code = #HD.3
* group.element[2].display = "Universal ID Type"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Organization.identifier[2].type
* group.element[2].target.display = "Organization.identifier[2].type"
* group.element[3].code = #HD.3
* group.element[3].display = "Universal ID Type"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Organization.identifier[2].system
* group.element[3].target.display = "= \"urn:ietf:rfc:3986\""
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = """
# IF HD.3 IN ("ISO", "UUID")\
"""
