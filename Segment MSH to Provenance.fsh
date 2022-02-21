// HL7 Segment - FHIR R4_ MSH[Provenance] - R4.csv
Instance: SegmentMSHtoProvenance
InstanceOf: ConceptMap
Title: "Segment MSH to Provenance Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment MSH to the FHIR Provenance Resource."
* id = "segment-msh-to-provenance"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-msh-to-provenance"
* version = "1.0"
* name = "SegmentMSHtoProvenance"
* status = #active
* experimental = true
* date = "2022-02-21"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "MSH"
* targetUri = "Provenance"
* group.element[0].code = #MSH
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #recorded
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[0].valueInteger = 1
* group.element[0].target.extension[0].extension[1].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.display = "recorded"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = "/timestamp of tranformation/"
* group.element[1].code = #MSH
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #policy
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[0].valueInteger = 0
* group.element[1].target.extension[0].extension[1].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[1].valueInteger = -1
* group.element[1].target.display = "policy"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = "/uri of the policy governing transformation of the v2 to FHIR/"
* group.element[2].code = #MSH
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #agent[1].type.coding.code
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[0].valueInteger = 1
* group.element[2].target.extension[0].extension[1].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[1].valueInteger = -1
* group.element[2].target.display = "agent[1].type.coding.code"
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = "\"assembler\""
* group.element[3].code = #MSH
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #agent[1].type.coding.system
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[0].valueInteger = 1
* group.element[3].target.extension[0].extension[1].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[1].valueInteger = -1
* group.element[3].target.display = "agent[1].type.coding.system"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = "\"http://terminology.hl7.org/CodeSystem/provenance-participant-type\""
* group.element[4].code = #MSH
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #entity[1].what(DocumentReference.content.attachment.data)
* group.element[4].target.display = "entity[1].what(DocumentReference.content.attachment.data)"
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = "/v2.txt or v2.xml into base 64/"
* group.element[5].code = #MSH
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #entity[1].what(DocumentReference.status)
* group.element[5].target.display = "entity[1].what(DocumentReference.status)"
* group.element[5].target.dependsOn[0].property = "value"
* group.element[5].target.dependsOn[0].value = "\"current\""
* group.element[6].code = #MSH
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #entity[1].role
* group.element[6].target.display = "entity[1].role"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = "\"source\""
* group.element[7].code = #MSH-3
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"HD"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Sending Application"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #agent[2].who(Device)
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"Reference(Device)"
* group.element[7].target.display = "agent[2].who(Device)"
* group.element[7].target.dependsOn[0].property = "data-type-map"
* group.element[7].target.dependsOn[0].value = "HD[Device]"
* group.element[7].target.product[0].property = "antlr"
* group.element[7].target.product[0].value = "IF MSH-3 AND MSH-24 VALUED"
* group.element[8].code = #MSH-4
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"HD"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = 1
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = 1
* group.element[8].display = "Sending Facility"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #agent[3].who(Organization)
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"Reference(Organization)"
* group.element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[8].target.extension[0].extension[1].valueInteger = 1
* group.element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[8].target.extension[0].extension[2].valueInteger = 1
* group.element[8].target.display = "agent[3].who(Organization)"
* group.element[8].target.dependsOn[0].property = "data-type-map"
* group.element[8].target.dependsOn[0].value = "HD[Organization]"
* group.element[8].target.product[0].property = "antlr"
* group.element[8].target.product[0].value = "IF MSH-22 NOT VALUED"
* group.element[9].code = #MSH-4
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"HD"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = 1
* group.element[9].display = "Sending Facility"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #agent[3].type.coding.code
* group.element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].target.extension[0].extension[0].url = "type"
* group.element[9].target.extension[0].extension[0].valueCode = #"code"
* group.element[9].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[9].target.extension[0].extension[1].valueInteger = 0
* group.element[9].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[9].target.extension[0].extension[2].valueInteger = 1
* group.element[9].target.display = "agent[3].type.coding.code"
* group.element[9].target.dependsOn[0].property = "value"
* group.element[9].target.dependsOn[0].value = "\"author\""
* group.element[9].target.product[0].property = "antlr"
* group.element[9].target.product[0].value = "IF MSH-22 NOT VALUED"
* group.element[10].code = #MSH-4
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"HD"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = 1
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = 1
* group.element[10].display = "Sending Facility"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #agent[3].type.coding.system
* group.element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].target.extension[0].extension[0].url = "type"
* group.element[10].target.extension[0].extension[0].valueCode = #"uri"
* group.element[10].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[10].target.extension[0].extension[1].valueInteger = 0
* group.element[10].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[10].target.extension[0].extension[2].valueInteger = 1
* group.element[10].target.display = "agent[3].type.coding.system"
* group.element[10].target.dependsOn[0].property = "value"
* group.element[10].target.dependsOn[0].value = "\"http://terminology.hl7.org/CodeSystem/provenance-participant-type\""
* group.element[10].target.product[0].property = "antlr"
* group.element[10].target.product[0].value = "IF MSH-22 NOT VALUED"
* group.element[11].code = #MSH-5
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "type"
* group.element[11].extension[0].extension[0].valueCode = #"HD"
* group.element[11].extension[0].extension[1].url = "cardinalityMin"
* group.element[11].extension[0].extension[1].valueInteger = 1
* group.element[11].extension[0].extension[2].url = "cardinalityMax"
* group.element[11].extension[0].extension[2].valueInteger = 1
* group.element[11].display = "Receiving Application"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #agent[4].type.coding.code
* group.element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].target.extension[0].extension[0].url = "type"
* group.element[11].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[11].target.display = "agent[4].type.coding.code"
* group.element[11].target.dependsOn[0].property = "value"
* group.element[11].target.dependsOn[0].value = "MessageHeader.id"
* group.element[11].target.product[0].property = "antlr"
* group.element[11].target.product[0].value = "IF MSH-5 AND MSH-25 VALUED"
* group.element[12].code = #MSH-7
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"DTM"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = 1
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = 1
* group.element[12].display = "Date/Time of Message"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #occuredDateTime
* group.element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].target.extension[0].extension[0].url = "type"
* group.element[12].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[12].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[12].target.extension[0].extension[1].valueInteger = 0
* group.element[12].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[12].target.extension[0].extension[2].valueInteger = 1
* group.element[12].target.display = "occuredDateTime"
* group.element[13].code = #MSH-22
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "type"
* group.element[13].extension[0].extension[0].valueCode = #"XON"
* group.element[13].extension[0].extension[1].url = "cardinalityMin"
* group.element[13].extension[0].extension[1].valueInteger = 1
* group.element[13].extension[0].extension[2].url = "cardinalityMax"
* group.element[13].extension[0].extension[2].valueInteger = 1
* group.element[13].display = "Sending Responsible Organization"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #agent[5].who(Organization)
* group.element[13].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].target.extension[0].extension[0].url = "type"
* group.element[13].target.extension[0].extension[0].valueCode = #"Reference(Organization)"
* group.element[13].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[13].target.extension[0].extension[1].valueInteger = 1
* group.element[13].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[13].target.extension[0].extension[2].valueInteger = 1
* group.element[13].target.display = "agent[5].who(Organization)"
* group.element[13].target.dependsOn[0].property = "data-type-map"
* group.element[13].target.dependsOn[0].value = "XON[Organization]"
* group.element[14].code = #MSH-22
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "type"
* group.element[14].extension[0].extension[0].valueCode = #"XON"
* group.element[14].extension[0].extension[1].url = "cardinalityMin"
* group.element[14].extension[0].extension[1].valueInteger = 1
* group.element[14].extension[0].extension[2].url = "cardinalityMax"
* group.element[14].extension[0].extension[2].valueInteger = 1
* group.element[14].display = "Sending Responsible Organization"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #agent[5].type.coding.code
* group.element[14].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].target.extension[0].extension[0].url = "type"
* group.element[14].target.extension[0].extension[0].valueCode = #"code"
* group.element[14].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[14].target.extension[0].extension[1].valueInteger = 0
* group.element[14].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[14].target.extension[0].extension[2].valueInteger = 1
* group.element[14].target.display = "agent[5].type.coding.code"
* group.element[14].target.dependsOn[0].property = "value"
* group.element[14].target.dependsOn[0].value = "\"author\""
* group.element[15].code = #MSH-22
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "type"
* group.element[15].extension[0].extension[0].valueCode = #"XON"
* group.element[15].extension[0].extension[1].url = "cardinalityMin"
* group.element[15].extension[0].extension[1].valueInteger = 1
* group.element[15].extension[0].extension[2].url = "cardinalityMax"
* group.element[15].extension[0].extension[2].valueInteger = 1
* group.element[15].display = "Sending Responsible Organization"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #agent[5].type.coding.system
* group.element[15].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].target.extension[0].extension[0].url = "type"
* group.element[15].target.extension[0].extension[0].valueCode = #"uri"
* group.element[15].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[15].target.extension[0].extension[1].valueInteger = 0
* group.element[15].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[15].target.extension[0].extension[2].valueInteger = 1
* group.element[15].target.display = "agent[5].type.coding.system"
* group.element[15].target.dependsOn[0].property = "value"
* group.element[15].target.dependsOn[0].value = "\"http://terminology.hl7.org/CodeSystem/provenance-participant-type\""