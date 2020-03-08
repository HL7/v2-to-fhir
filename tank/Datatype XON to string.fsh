Instance: DatatypeXONtostring
InstanceOf: ConceptMap
Title: "Datatype XON to string Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-xon-to-string"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-xon-to-string"
* version = "1.0"
* name = "Datatype_XON_Map"
* status = #active
* experimental = true
* date = "2020-03-08"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "XON"
* targetUri = "string"
* group.element[0].code = #XON.1
* group.element[0].display = "Organization Name"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #string
* group.element[0].target.display = "string"
* group.element[1].code = #XON.10
* group.element[1].display = "Organization Identifier"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #string
* group.element[1].target.display = "string"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = """
# IF XON.1 NOT VALUED\
"""
