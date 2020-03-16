Instance: DatatypeCWEtoQuantity
InstanceOf: ConceptMap
Title: "Datatype CWE to Quantity Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-cwequantity-to-quantity"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-cwequantity-to-quantity"
* version = "1.0"
* name = "Datatype_CWE_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "CWE"
* targetUri = "Quantity"
* group.element[0].code = #CWE.1
* group.element[0].display = "Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Quantity.code
* group.element[0].target.display = "Quantity.code"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = """
# IF CWE.1 IS VALUED AND CWE.3 IS VALUED\
"""
* group.element[1].code = #CWE.1
* group.element[1].display = "Identifier"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Quantity.unit
* group.element[1].target.display = "Quantity.unit"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = """
# If CWE.2 IS NOT VALUED\
"""
* group.element[2].code = #CWE.2
* group.element[2].display = "Text"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Quantity.unit
* group.element[2].target.display = "Quantity.unit"
* group.element[3].code = #CWE.3
* group.element[3].display = "Name of Coding System"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Quantity.system
* group.element[3].target.display = "Quantity.system"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = """
# IF CWE.1 IS VALUED AND CWE.3 IS VALUED\
"""
