Instance: DatatypeHDtoProvenance
InstanceOf: ConceptMap
Title: "Datatype HD to Provenance Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-hdmsh-24-to-provenance"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-hdmsh-24-to-provenance"
* version = "1.0"
* name = "Datatype_HD_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HD"
* targetUri = "Provenance"
* group.element[0].code = #HD.1
* group.element[0].display = "Namespace ID"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Provenance.agent.who(Device.identifier[f1].value)
* group.element[0].target.display = "Provenance.agent.who(Device.identifier[f1].value)"
* group.element[0].target.comment = """
When communication goes from A to B to C where B is a hop inbetween where the transformation to FHIR occurs, then it creates a Provenance to represent original A, as well a s Provenance instance for the transformation.

Provenance.agent.who(Device.identifier.system) is NOT valued.\
"""
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = """
# IF HD.1 VALUED\
"""
* group.element[1].code = #HD.1
* group.element[1].display = "Namespace ID"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Provenance.target[1](MessageHeader.target
* group.element[1].target.display = "= MessageHeader.id)"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = """
# IF HD.1 VALUED\
"""
* group.element[2].code = #HD.2
* group.element[2].display = "Universal ID"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #MessageHeader.source.endpoint
* group.element[2].target.display = "MessageHeader.source.endpoint"
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = """
# IF HD.3 EQUALS "URI"\
"""
* group.element[3].code = #HD.2
* group.element[3].display = "Universal ID"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Provenance.agent.who(Device.identifier[2].system
* group.element[3].target.display = "= \"urn:ietf:rfc:3986\")"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = """
# IF HD.3 IN ("ISO", "UUID")\
"""
* group.element[4].code = #HD.2
* group.element[4].display = "Universal ID"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Provenance.target[1](MessageHeader.target
* group.element[4].target.display = "= MessageHeader.id)"
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = """
# IF HD.2 VALUED\
"""
* group.element[5].code = #HD.3
* group.element[5].display = "Universal ID Type"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Provenance.agent.who(Device.identifier[2].type)
* group.element[5].target.display = "Provenance.agent.who(Device.identifier[2].type)"
