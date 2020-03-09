Instance: DatatypeSNtoRatio
InstanceOf: ConceptMap
Title: "Datatype SN to Ratio Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-sn-to-ratio"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-sn-to-ratio"
* version = "1.0"
* name = "Datatype_SN_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "SN"
* targetUri = "Ratio"
* group.element[0].code = #SN.2
* group.element[0].display = "Num1"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Ratio.numerator.value
* group.element[0].target.display = "Ratio.numerator.value"
* group.element[1].code = #SN.4
* group.element[1].display = "Num2"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Ratio.denominator.value
* group.element[1].target.display = "Ratio.denominator.value"
