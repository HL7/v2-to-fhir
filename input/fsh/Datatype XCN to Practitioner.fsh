// HL7 Data Type - FHIR R4_ XCN[Practitioner] - Sheet1.csv
Instance: DatatypeXCNToPractitioner
InstanceOf: ConceptMap
Title: "Datatype XCN to Practitioner Map"
* title = "Datatype XCN to Practitioner Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype XCN to the FHIR Practitioner Resource."
* id = "datatype-xcn-to-practitioner"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-xcn-to-practitioner"
* version = "1.0"
* name = "DatatypeXCNToPractitioner"
* status = #active
* experimental = true
* date = "2023-10-03"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "XCN"
* targetUri = "Practitioner"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype XCN to Practitioner.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1hp-FZG0jKhKmxbVddilKKCc24RLAvum6g14q8o-3frk/edit#gid=0"
* group.element[0].code = #XCN.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Person Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #identifier[1].value
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"string"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "identifier[1].value"
* group.element[1].code = #XCN.2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"FN"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 0
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Family Name"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #name
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"HumanName"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = -1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = -1
* group.element[1].target.display = "name"
* group.element[1].target.dependsOn[0].property = "data-type-map"
* group.element[1].target.dependsOn[0].value = "FN[HumanName]"
* group.element[2].code = #XCN.3
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ST"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 0
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Given Name"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #name.given[1]
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"string"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = -1
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = -1
* group.element[2].target.display = "name.given[1]"
* group.element[3].code = #XCN.4
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"ST"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 0
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Second and Further Given Names or Initials Thereof"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #name.given[2]
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"string"
* group.element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[1].valueInteger = -1
* group.element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[2].valueInteger = -1
* group.element[3].target.display = "name.given[2]"
* group.element[4].code = #XCN.5
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"ST"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 0
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Suffix (e.g., JR or III)"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #name.suffix[1]
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"string"
* group.element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[4].target.extension[0].extension[1].valueInteger = -1
* group.element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[4].target.extension[0].extension[2].valueInteger = -1
* group.element[4].target.display = "name.suffix[1]"
* group.element[5].code = #XCN.6
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"ST"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 0
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Prefix (e.g., DR)"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #name.prefix
* group.element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].target.extension[0].extension[0].url = "type"
* group.element[5].target.extension[0].extension[0].valueCode = #"string"
* group.element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[5].target.extension[0].extension[1].valueInteger = -1
* group.element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[5].target.extension[0].extension[2].valueInteger = -1
* group.element[5].target.display = "name.prefix"
* group.element[6].code = #XCN.7
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "cardinalityMin"
* group.element[6].extension[0].extension[0].valueInteger = 0
* group.element[6].extension[0].extension[1].url = "cardinalityMax"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].display = "Degree (e.g., MD)"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #name.suffix[2}
* group.element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].target.extension[0].extension[0].url = "type"
* group.element[6].target.extension[0].extension[0].valueCode = #"string"
* group.element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[6].target.extension[0].extension[1].valueInteger = -1
* group.element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[6].target.extension[0].extension[2].valueInteger = -1
* group.element[6].target.display = "name.suffix[2}"
* group.element[7].code = #XCN.9
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"HD"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 0
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Assigning Authority"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #identifier[1].assigner(Organization)
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"Reference(Organization)"
* group.element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[7].target.extension[0].extension[1].valueInteger = 1
* group.element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[7].target.extension[0].extension[2].valueInteger = 1
* group.element[7].target.display = "identifier[1].assigner(Organization)"
* group.element[7].target.dependsOn[0].property = "data-type-map"
* group.element[7].target.dependsOn[0].value = "HD[Organization]"
* group.element[7].target.product[0].property = "narrative"
* group.element[7].target.product[0].value = "If organization"
* group.element[8].code = #XCN.9
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"HD"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = 0
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = 1
* group.element[8].display = "Assigning Authority"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #identifier[1].system
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"uri"
* group.element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[8].target.extension[0].extension[1].valueInteger = 1
* group.element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[8].target.extension[0].extension[2].valueInteger = 1
* group.element[8].target.display = "identifier[1].system"
* group.element[8].target.dependsOn[0].property = "data-type-map"
* group.element[8].target.dependsOn[0].value = "HD[uri]"
* group.element[8].target.product[0].property = "narrative"
* group.element[8].target.product[0].value = "If system"
* group.element[9].code = #XCN.10
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"ID"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = 0
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = 1
* group.element[9].display = "Name Type Code"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #name.use
* group.element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].target.extension[0].extension[0].url = "type"
* group.element[9].target.extension[0].extension[0].valueCode = #"code"
* group.element[9].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[9].target.extension[0].extension[1].valueInteger = 1
* group.element[9].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[9].target.extension[0].extension[2].valueInteger = 1
* group.element[9].target.display = "name.use"
* group.element[9].target.dependsOn[0].property = "vocabulary-map"
* group.element[9].target.dependsOn[0].value = "NameType"
* group.element[10].code = #XCN.13
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"ID"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = 0
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = 1
* group.element[10].display = "Identifier Type Code"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #identifier[1].type.coding.code
* group.element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].target.extension[0].extension[0].url = "type"
* group.element[10].target.extension[0].extension[0].valueCode = #"code"
* group.element[10].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[10].target.extension[0].extension[1].valueInteger = 1
* group.element[10].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[10].target.extension[0].extension[2].valueInteger = 1
* group.element[10].target.display = "identifier[1].type.coding.code"
* group.element[10].target.dependsOn[0].property = "vocabulary-map"
* group.element[10].target.dependsOn[0].value = "IDType"
* group.element[11].code = #XCN.17
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "cardinalityMin"
* group.element[11].extension[0].extension[0].valueInteger = 0
* group.element[11].extension[0].extension[1].url = "cardinalityMax"
* group.element[11].extension[0].extension[1].valueInteger = 1
* group.element[11].display = "Name Validity Range"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #name.period
* group.element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].target.extension[0].extension[0].url = "type"
* group.element[11].target.extension[0].extension[0].valueCode = #"Period"
* group.element[11].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[11].target.extension[0].extension[1].valueInteger = 1
* group.element[11].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[11].target.extension[0].extension[2].valueInteger = 1
* group.element[11].target.display = "name.period"
* group.element[11].target.dependsOn[0].property = "data-type-map"
* group.element[11].target.dependsOn[0].value = "DR[Period]"
* group.element[11].target.product[0].property = "antlr"
* group.element[11].target.product[0].value = "IF XCN.19 DOES NOT EXIST AND IF XCN.20 DOES NOT EXIST"
* group.element[12].code = #XCN.18
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"ID"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = 0
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = 1
* group.element[12].display = "Name Assembly Order"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #name.family.extension.url
* group.element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].target.extension[0].extension[0].url = "type"
* group.element[12].target.extension[0].extension[0].valueCode = #"uri"
* group.element[12].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[12].target.extension[0].extension[1].valueInteger = 1
* group.element[12].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[12].target.extension[0].extension[2].valueInteger = 1
* group.element[12].target.display = "name.family.extension.url"
* group.element[12].target.dependsOn[0].property = "value"
* group.element[12].target.dependsOn[0].value = "\"http://hl7.org/fhir/R4/extension-humanname-assembly-order.html\""
* group.element[13].code = #XCN.18
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "type"
* group.element[13].extension[0].extension[0].valueCode = #"ID"
* group.element[13].extension[0].extension[1].url = "cardinalityMin"
* group.element[13].extension[0].extension[1].valueInteger = 0
* group.element[13].extension[0].extension[2].url = "cardinalityMax"
* group.element[13].extension[0].extension[2].valueInteger = 1
* group.element[13].display = "Name Assembly Order"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #name.family.extension.valueCode
* group.element[13].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].target.extension[0].extension[0].url = "type"
* group.element[13].target.extension[0].extension[0].valueCode = #"code"
* group.element[13].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[13].target.extension[0].extension[1].valueInteger = 1
* group.element[13].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[13].target.extension[0].extension[2].valueInteger = 1
* group.element[13].target.display = "name.family.extension.valueCode"
* group.element[13].target.dependsOn[0].property = "vocabulary-map"
* group.element[13].target.dependsOn[0].value = "NameAssemblyOrder"
* group.element[14].code = #XCN.19
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "type"
* group.element[14].extension[0].extension[0].valueCode = #"DTM"
* group.element[14].extension[0].extension[1].url = "cardinalityMin"
* group.element[14].extension[0].extension[1].valueInteger = 0
* group.element[14].extension[0].extension[2].url = "cardinalityMax"
* group.element[14].extension[0].extension[2].valueInteger = 1
* group.element[14].display = "Effective Date"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #name.period.start
* group.element[14].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].target.extension[0].extension[0].url = "type"
* group.element[14].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[14].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[14].target.extension[0].extension[1].valueInteger = 1
* group.element[14].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[14].target.extension[0].extension[2].valueInteger = 1
* group.element[14].target.display = "name.period.start"
* group.element[15].code = #XCN.20
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "type"
* group.element[15].extension[0].extension[0].valueCode = #"DTM"
* group.element[15].extension[0].extension[1].url = "cardinalityMin"
* group.element[15].extension[0].extension[1].valueInteger = 0
* group.element[15].extension[0].extension[2].url = "cardinalityMax"
* group.element[15].extension[0].extension[2].valueInteger = 1
* group.element[15].display = "Expiration Date"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #name.period.end
* group.element[15].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].target.extension[0].extension[0].url = "type"
* group.element[15].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[15].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[15].target.extension[0].extension[1].valueInteger = 1
* group.element[15].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[15].target.extension[0].extension[2].valueInteger = 1
* group.element[15].target.display = "name.period.end"
* group.element[16].code = #XCN.21
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "type"
* group.element[16].extension[0].extension[0].valueCode = #"ST"
* group.element[16].extension[0].extension[1].url = "cardinalityMin"
* group.element[16].extension[0].extension[1].valueInteger = 0
* group.element[16].extension[0].extension[2].url = "cardinalityMax"
* group.element[16].extension[0].extension[2].valueInteger = 1
* group.element[16].display = "Professional Suffix"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #name.suffix
* group.element[16].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].target.extension[0].extension[0].url = "type"
* group.element[16].target.extension[0].extension[0].valueCode = #"string"
* group.element[16].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[16].target.extension[0].extension[1].valueInteger = -1
* group.element[16].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[16].target.extension[0].extension[2].valueInteger = -1
* group.element[16].target.display = "name.suffix"
