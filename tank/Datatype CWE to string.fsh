Instance: DatatypeCWEtostring
InstanceOf: ConceptMap
Title: "Datatype CWE to string Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-cwe-to-string"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-cwe-to-string"
* version = "1.0"
* name = "Datatype_CWE_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "CWE"
* targetUri = "string"
* group.element[0].code = #CWE.2
* group.element[0].display = "Text"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #string
* group.element[0].target.display = "string"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = """
# IF CWE.9 NOT VALUED\
"""
* group.element[1].code = #CWE.9
* group.element[1].display = "Original Text"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #string
* group.element[1].target.display = "string"
