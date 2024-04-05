// HL7 Segment - FHIR R4_ IN1[Coverage] - Sheet1.csv
Instance: SegmentIN1ToCoverage
InstanceOf: ConceptMap
Title: "Segment IN1 to Coverage Map"
* title = "Segment IN1 to Coverage Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment IN1 to the FHIR Coverage Resource."
* id = "segment-in1-to-coverage"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-in1-to-coverage"
* version = "1.0"
* name = "SegmentIN1ToCoverage"
* status = #active
* experimental = true
* date = "2024-03-22"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "IN1"
* targetUri = "Coverage"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment IN1 to Coverage.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1-8U35_8X9wQTQAchyVAujF4TFrbcjyDeloU2gpHT2_o/edit#gid=0"
* group.element[0].code = #IN1-4
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"XON"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = -1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = -1
* group.element[0].display = "Insurance Company Name"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #payor[1](Organization)
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"Reference"
* group.element[0].target.display = "payor[1](Organization)"
* group.element[0].target.dependsOn[0].property = "data-type-map"
* group.element[0].target.dependsOn[0].value = "XON[Organization]"
* group.element[1].code = #IN1-5
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"XAD"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = -1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = -1
* group.element[1].display = "Insurance Company Address"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #payer[1](Organization.address)
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"Reference"
* group.element[1].target.display = "payer[1](Organization.address)"
* group.element[1].target.dependsOn[0].property = "data-type-map"
* group.element[1].target.dependsOn[0].value = "XAD[Address]"
* group.element[2].code = #IN1-10
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"CX"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = -1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = -1
* group.element[2].display = "Insured's Group Emp ID"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #extension[1].url
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"uri"
* group.element[2].target.display = "extension[1].url"
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = "\"http://hl7.org/fhir/R5/StructureDefinition/extension-subscriberId\""
* group.element[2].target.product[0].property = "antlr"
* group.element[2].target.product[0].value = "IF CX.5 IS \"SN\""
* group.element[3].code = #IN1-10
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"CX"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = -1
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = -1
* group.element[3].display = "Insured's Group Emp ID"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #extension[1].valueIdentifier
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"Identifier"
* group.element[3].target.display = "extension[1].valueIdentifier"
* group.element[3].target.dependsOn[0].property = "data-type-map"
* group.element[3].target.dependsOn[0].value = "CX[Identifier]"
* group.element[3].target.product[0].property = "antlr"
* group.element[3].target.product[0].value = "IF CX.5 IS \"SN\""
* group.element[4].code = #IN1-11
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"XON"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = -1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = -1
* group.element[4].display = "Insured's Group Emp Name"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #policyHolder(Organization)
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"Reference"
* group.element[4].target.display = "policyHolder(Organization)"
* group.element[4].target.dependsOn[0].property = "data-type-map"
* group.element[4].target.dependsOn[0].value = "XON[Organization]"
* group.element[5].code = #IN1-12
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"DT"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 1
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Plan Effective Date"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #period.start
* group.element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].target.extension[0].extension[0].url = "type"
* group.element[5].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[5].target.display = "period.start"
* group.element[6].code = #IN1-13
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"DT"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = 1
* group.element[6].display = "Plan Expiration Date"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #period.end
* group.element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].target.extension[0].extension[0].url = "type"
* group.element[6].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[6].target.display = "period.end"
* group.element[7].code = #IN1-15
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"CWE"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Plan Type"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #type
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[7].target.display = "type"
* group.element[7].target.dependsOn[0].property = "data-type-map"
* group.element[7].target.dependsOn[0].value = "CWE[CodeableConcept]"
* group.element[7].target.dependsOn[1].property = "vocabulary-map"
* group.element[7].target.dependsOn[1].value = "PlanId"
* group.element[8].code = #IN1-16
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"XPN"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = -1
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = -1
* group.element[8].display = "Name Of Insured"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #subscriber(RelatedPerson)
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"Reference"
* group.element[8].target.display = "subscriber(RelatedPerson)"
* group.element[8].target.product[0].property = "antlr"
* group.element[8].target.product[0].value = "IF IN1-17 IS NOT 'patient'"
* group.element[9].code = #IN1-16
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"XPN"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = -1
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = -1
* group.element[9].display = "Name Of Insured"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #subscriber(Patient)
* group.element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].target.extension[0].extension[0].url = "type"
* group.element[9].target.extension[0].extension[0].valueCode = #"Reference"
* group.element[9].target.display = "subscriber(Patient)"
* group.element[9].target.product[0].property = "antlr"
* group.element[9].target.product[0].value = "IF IN1-17 IS 'patient'"
* group.element[10].code = #IN1-17
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"CWE"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = 1
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = 1
* group.element[10].display = "Insured's Relationship To Patient"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #relationship
* group.element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].target.extension[0].extension[0].url = "type"
* group.element[10].target.extension[0].extension[0].valueCode = #"CondeableConcept"
* group.element[10].target.display = "relationship"
* group.element[10].target.dependsOn[0].property = "data-type-map"
* group.element[10].target.dependsOn[0].value = "CWE[CodeableConcept]"
* group.element[10].target.dependsOn[1].property = "vocabulary-map"
* group.element[10].target.dependsOn[1].value = "Relationship"
* group.element[11].code = #IN1-49
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "type"
* group.element[11].extension[0].extension[0].valueCode = #"CX"
* group.element[11].extension[0].extension[1].url = "cardinalityMin"
* group.element[11].extension[0].extension[1].valueInteger = -1
* group.element[11].extension[0].extension[2].url = "cardinalityMax"
* group.element[11].extension[0].extension[2].valueInteger = -1
* group.element[11].display = "Insured's ID Number"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #extension[1].url
* group.element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].target.extension[0].extension[0].url = "type"
* group.element[11].target.extension[0].extension[0].valueCode = #"uri"
* group.element[11].target.display = "extension[1].url"
* group.element[11].target.dependsOn[0].property = "value"
* group.element[11].target.dependsOn[0].value = "\"http://hl7.org/fhir/R5/StructureDefinition/extension-subscriberId\""
* group.element[12].code = #IN1-49
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"CX"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = -1
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = -1
* group.element[12].display = "Insured's ID Number"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #extension[1].valueIdentifier
* group.element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].target.extension[0].extension[0].url = "type"
* group.element[12].target.extension[0].extension[0].valueCode = #"Identifier"
* group.element[12].target.display = "extension[1].valueIdentifier"
* group.element[12].target.dependsOn[0].property = "data-type-map"
* group.element[12].target.dependsOn[0].value = "CX[Identifier]"
