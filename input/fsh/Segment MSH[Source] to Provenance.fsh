// HL7 Segment - FHIR R4_ MSH[Provenance-Source] - R4.csv
Instance: SegmentMSHSourceToProvenance
InstanceOf: ConceptMap
Title: "Segment MSH to Provenance Map"
* title = "Segment MSH to Provenance Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment MSH to the FHIR Provenance Resource."
* id = "segment-msh-source-to-provenance"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-msh-source-to-provenance"
* version = "1.0"
* name = "SegmentMSHSourceToProvenance"
* status = #active
* experimental = true
* date = "2024-12-20"
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
* extension[0].extension[1].valueString = "Segment MSH[Source] to Provenance.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1F5aYk6tFCYTQd_qEaEc5G85ZcCm98R5B-sq2JGqUagk/edit#gid=0"
* group.element[0].code = #MSH
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #entity[1].what(DocumentReference.content.attachment.url)
* group.element[0].target.display = "entity[1].what(DocumentReference.content.attachment.url)"
* group.element[0].target.comment = "If there is an interest in holding to the original message by the recipient"
* group.element[1].code = #MSH
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #entity[1].what(DocumentReference.content.attachment.data)
* group.element[1].target.display = "entity[1].what(DocumentReference.content.attachment.data)"
* group.element[1].target.comment = "If there is an interest in holding to the original message by the recipient"
* group.element[2].code = #MSH
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #entity[1].what(DocumentReference.status)
* group.element[2].target.display = "entity[1].what(DocumentReference.status)"
* group.element[2].target.comment = "If there is an interest in holding to the original message by the recipient"
* group.element[3].code = #MSH
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #entity[1].role
* group.element[3].target.display = "entity[1].role"
* group.element[4].code = #MSH-3
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"HD"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Sending Application"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #entity[2].what(Device.identifier)
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"Reference(Device)"
* group.element[4].target.display = "entity[2].what(Device.identifier)"
* group.element[5].code = #MSH-3
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"HD"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 1
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Sending Application"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #entity[2].role
* group.element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].target.extension[0].extension[0].url = "type"
* group.element[5].target.extension[0].extension[0].valueCode = #"code"
* group.element[5].target.display = "entity[2].role"
* group.element[6].code = #MSH-4
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"HD"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = 1
* group.element[6].display = "Sending Facility"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #agent[1].who(Organization)
* group.element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].target.extension[0].extension[0].url = "type"
* group.element[6].target.extension[0].extension[0].valueCode = #"Reference(Organization)"
* group.element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[6].target.extension[0].extension[1].valueInteger = 1
* group.element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[6].target.extension[0].extension[2].valueInteger = 1
* group.element[6].target.display = "agent[1].who(Organization)"
* group.element[7].code = #MSH-4
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"HD"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Sending Facility"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #agent[1].type.coding.code
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"code"
* group.element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[7].target.extension[0].extension[1].valueInteger = 0
* group.element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[7].target.extension[0].extension[2].valueInteger = 1
* group.element[7].target.display = "agent[1].type.coding.code"
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
* group.element[8].target.code = #agent[1].type.coding.system
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"uri"
* group.element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[8].target.extension[0].extension[1].valueInteger = 0
* group.element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[8].target.extension[0].extension[2].valueInteger = 1
* group.element[8].target.display = "agent[1].type.coding.system"
* group.element[9].code = #MSH-7
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"DTM"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = 1
* group.element[9].display = "Date/Time of Message"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #recorded
* group.element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].target.extension[0].extension[0].url = "cardinalityMin"
* group.element[9].target.extension[0].extension[0].valueInteger = 1
* group.element[9].target.extension[0].extension[1].url = "cardinalityMax"
* group.element[9].target.extension[0].extension[1].valueInteger = 1
* group.element[9].target.display = "recorded"
* group.element[9].target.comment = "We note that this could have been mapped to the Provenance.occurred[x] attribute, but since Provenance.recorded is required and these two times are virtually the same, we opted to map to Provenance.recorded."
* group.element[10].code = #MSH-7
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"DTM"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = 1
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = 1
* group.element[10].display = "Date/Time of Message"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #occurred
* group.element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].target.extension[0].extension[0].url = "cardinalityMin"
* group.element[10].target.extension[0].extension[0].valueInteger = 0
* group.element[10].target.extension[0].extension[1].url = "cardinalityMax"
* group.element[10].target.extension[0].extension[1].valueInteger = 1
* group.element[10].target.display = "occurred"
* group.element[11].code = #MSH-9
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "type"
* group.element[11].extension[0].extension[0].valueCode = #"MSG"
* group.element[11].extension[0].extension[1].url = "cardinalityMin"
* group.element[11].extension[0].extension[1].valueInteger = 1
* group.element[11].extension[0].extension[2].url = "cardinalityMax"
* group.element[11].extension[0].extension[2].valueInteger = 1
* group.element[11].display = "Message Type"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #activity.coding.display
* group.element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].target.extension[0].extension[0].url = "type"
* group.element[11].target.extension[0].extension[0].valueCode = #"string"
* group.element[11].target.display = "activity.coding.display"
* group.element[12].code = #MSH-22
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"XON"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = 1
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = 1
* group.element[12].display = "Sending Responsible Organization"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #agent[2].who(Organization)
* group.element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].target.extension[0].extension[0].url = "type"
* group.element[12].target.extension[0].extension[0].valueCode = #"Reference(Organization)"
* group.element[12].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[12].target.extension[0].extension[1].valueInteger = 1
* group.element[12].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[12].target.extension[0].extension[2].valueInteger = 1
* group.element[12].target.display = "agent[2].who(Organization)"
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
* group.element[13].target.code = #agent[2].type.coding.code
* group.element[13].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].target.extension[0].extension[0].url = "type"
* group.element[13].target.extension[0].extension[0].valueCode = #"code"
* group.element[13].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[13].target.extension[0].extension[1].valueInteger = 0
* group.element[13].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[13].target.extension[0].extension[2].valueInteger = 1
* group.element[13].target.display = "agent[2].type.coding.code"
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
* group.element[14].target.code = #agent[2].type.coding.system
* group.element[14].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].target.extension[0].extension[0].url = "type"
* group.element[14].target.extension[0].extension[0].valueCode = #"uri"
* group.element[14].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[14].target.extension[0].extension[1].valueInteger = 0
* group.element[14].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[14].target.extension[0].extension[2].valueInteger = 1
* group.element[14].target.display = "agent[2].type.coding.system"
