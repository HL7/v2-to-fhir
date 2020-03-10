Instance: DatatypeXONtoOrganization
InstanceOf: ConceptMap
Title: "Datatype XON to Organization Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-xonorganization-to-organization"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-xonorganization-to-organization"
* version = "1.0"
* name = "Datatype_XON_Map"
* status = #active
* experimental = true
* date = "2020-03-10"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "XON"
* targetUri = "Organization"
* group.element[0].code = #XON.1
* group.element[0].display = "Organization Name"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Organization.name
* group.element[0].target.display = "Organization.name"
* group.element[1].code = #XON.3
* group.element[1].display = "ID Number"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Organization.identifier.value
* group.element[1].target.display = "Organization.identifier.value"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = """
# IF XON-10 NOT VALUED\
"""
* group.element[2].code = #XON.7
* group.element[2].display = "Identifier Type Code"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Organization.identifier.type.coding.code
* group.element[2].target.display = "Organization.identifier.type.coding.code"
* group.element[3].code = #XON.7
* group.element[3].display = "Identifier Type Code"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Organization.identifier.type.coding.system
* group.element[3].target.display = "=  \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[4].code = #XON.10
* group.element[4].display = "Organization Identifier"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Organization.identifier.value
* group.element[4].target.display = "Organization.identifier.value"
