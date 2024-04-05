// HL7 Segment - FHIR R4_ MSH[Provenance-Transformation] - Sheet1.csv
Instance: SegmentMSHTransformationToProvenance
InstanceOf: ConceptMap
Title: "Segment MSH[Transformation] to Provenance Map"
* title = "Segment MSH[Transformation] to Provenance Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment MSH to the FHIR Provenance Resource."
* id = "segment-msh-transformation-to-provenance"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-msh-transformation-to-provenance"
* version = "1.0"
* name = "SegmentMSHTransformationToProvenance"
* status = #active
* experimental = true
* date = "2024-03-22"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "MSH"
* targetUri = "Provenance"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment MSH[Transformation] to Provenance.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1byfzqOfOvIVdRkHv2Tto5a-a0YMYWWP0eryaZBvibIo/edit#gid=0"
* group.element[0].code = #MSH
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #activity.coding.code
* group.element[0].target.display = "activity.coding.code"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = "\"v2-FHIR transformation\""
* group.element[1].code = #MSH
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #recorded
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[0].valueInteger = 1
* group.element[1].target.extension[0].extension[1].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.display = "recorded"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = "/timestamp of tranformation/"
* group.element[2].code = #MSH
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #policy
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[0].valueInteger = 0
* group.element[2].target.extension[0].extension[1].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[1].valueInteger = -1
* group.element[2].target.display = "policy"
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = "/uri of the policy governing transformation of the v2 to FHIR/"
* group.element[3].code = #MSH
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #agent[1].type.coding.code
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"string"
* group.element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[1].valueInteger = 0
* group.element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[2].valueInteger = 1
* group.element[3].target.display = "agent[1].type.coding.code"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = "\"assembler\""
* group.element[4].code = #MSH
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #agent[1].type.coding.system
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"url"
* group.element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[4].target.extension[0].extension[1].valueInteger = 0
* group.element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[4].target.extension[0].extension[2].valueInteger = 1
* group.element[4].target.display = "agent[1].type.coding.system"
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = "\"http://terminology.hl7.org/CodeSystem/provenance-participant-type\""
* group.element[5].code = #MSH
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #agent[1].who(Organization|Device)
* group.element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].target.extension[0].extension[0].url = "type"
* group.element[5].target.extension[0].extension[0].valueCode = #"Reference(Organization|Device)"
* group.element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[5].target.extension[0].extension[1].valueInteger = 1
* group.element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[5].target.extension[0].extension[2].valueInteger = 1
* group.element[5].target.display = "agent[1].who(Organization|Device)"
* group.element[5].target.dependsOn[0].property = "value"
* group.element[5].target.dependsOn[0].value = "/the organization owning or device performing the transformation by the mapping tool/"
* group.element[6].code = #MSH
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #entity[1].what(DocumentReference.content.attachment.url)
* group.element[6].target.display = "entity[1].what(DocumentReference.content.attachment.url)"
* group.element[6].target.product[0].property = "narrative"
* group.element[6].target.product[0].value = "when you hold on to/persist the v2 message in a data store"
* group.element[7].code = #MSH
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #entity[1].what(DocumentReference.content.attachment.data)
* group.element[7].target.display = "entity[1].what(DocumentReference.content.attachment.data)"
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = "/v2.txt or v2.xml into base 64/"
* group.element[7].target.product[0].property = "narrative"
* group.element[7].target.product[0].value = "when you do not hold on to/persist the v2 message in a data store"
* group.element[8].code = #MSH
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #entity[1].what(DocumentReference.status)
* group.element[8].target.display = "entity[1].what(DocumentReference.status)"
* group.element[8].target.dependsOn[0].property = "value"
* group.element[8].target.dependsOn[0].value = "\"current\""
* group.element[9].code = #MSH
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #entity[1].role
* group.element[9].target.display = "entity[1].role"
* group.element[9].target.dependsOn[0].property = "value"
* group.element[9].target.dependsOn[0].value = "\"source\""
