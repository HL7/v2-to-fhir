// HL7 Data Type - FHIR R4_ FN[HumanName] - Sheet1.csv
Instance: DatatypeFNToHumanName
InstanceOf: ConceptMap
Title: "Datatype FN to HumanName Map"
Usage: #definition
* title = "Datatype FN to HumanName Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype FN to the FHIR HumanName Data Type."
* id = "datatype-fn-to-humanname"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-fn-to-humanname"
* name = "DatatypeFNToHumanName"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype FN to HumanName.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/16_unbJhBhLcdgy0KhkwtNfZiK2RzGOVghUlm6VKjWmc/edit#gid=0"
* group[0].element[0].code = #FN.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Surname"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #family
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "family"
* group[0].element[1].code = #FN.2
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"ST"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 0
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Own Surname Prefix"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #family.extension[1].url
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 1
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.extension[0].extension[3].url = "assignment"
* group[0].element[1].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/humanname-own-prefix\""
* group[0].element[1].target.display = "family.extension[1].url"
* group[0].element[2].code = #FN.2
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "type"
* group[0].element[2].extension[0].extension[0].valueCode = #"ST"
* group[0].element[2].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[1].valueInteger = 0
* group[0].element[2].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[2].valueInteger = 1
* group[0].element[2].display = "Own Surname Prefix"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #family.extension[1].valueString
* group[0].element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].target.extension[0].extension[0].url = "type"
* group[0].element[2].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].target.extension[0].extension[1].valueInteger = 1
* group[0].element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].target.extension[0].extension[2].valueInteger = 1
* group[0].element[2].target.display = "family.extension[1].valueString"
* group[0].element[3].code = #FN.3
* group[0].element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].extension[0].extension[0].url = "type"
* group[0].element[3].extension[0].extension[0].valueCode = #"ST"
* group[0].element[3].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].extension[0].extension[1].valueInteger = 0
* group[0].element[3].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].extension[0].extension[2].valueInteger = 1
* group[0].element[3].display = "Own Surname"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #family.extension[2].url
* group[0].element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].target.extension[0].extension[0].url = "type"
* group[0].element[3].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].target.extension[0].extension[1].valueInteger = 1
* group[0].element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].target.extension[0].extension[2].valueInteger = 1
* group[0].element[3].target.extension[0].extension[3].url = "assignment"
* group[0].element[3].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/humanname-own-name\""
* group[0].element[3].target.display = "family.extension[2].url"
* group[0].element[4].code = #FN.3
* group[0].element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].extension[0].extension[0].url = "type"
* group[0].element[4].extension[0].extension[0].valueCode = #"ST"
* group[0].element[4].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].extension[0].extension[1].valueInteger = 0
* group[0].element[4].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].extension[0].extension[2].valueInteger = 1
* group[0].element[4].display = "Own Surname"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #family.extension[2].valueString
* group[0].element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].target.extension[0].extension[0].url = "type"
* group[0].element[4].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].target.extension[0].extension[1].valueInteger = 1
* group[0].element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].target.extension[0].extension[2].valueInteger = 1
* group[0].element[4].target.display = "family.extension[2].valueString"
* group[0].element[5].code = #FN.4
* group[0].element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].extension[0].extension[0].url = "type"
* group[0].element[5].extension[0].extension[0].valueCode = #"ST"
* group[0].element[5].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].extension[0].extension[1].valueInteger = 0
* group[0].element[5].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].extension[0].extension[2].valueInteger = 1
* group[0].element[5].display = "Surname Prefix from Partner/Spouse"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #family.extension[3].url
* group[0].element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].target.extension[0].extension[0].url = "type"
* group[0].element[5].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].target.extension[0].extension[1].valueInteger = 1
* group[0].element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].target.extension[0].extension[2].valueInteger = 1
* group[0].element[5].target.extension[0].extension[3].url = "assignment"
* group[0].element[5].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/humanname-partner-prefix\""
* group[0].element[5].target.display = "family.extension[3].url"
* group[0].element[6].code = #FN.4
* group[0].element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].extension[0].extension[0].url = "type"
* group[0].element[6].extension[0].extension[0].valueCode = #"ST"
* group[0].element[6].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[6].extension[0].extension[1].valueInteger = 0
* group[0].element[6].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[6].extension[0].extension[2].valueInteger = 1
* group[0].element[6].display = "Surname Prefix from Partner/Spouse"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #family.extension[3].valueString
* group[0].element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].target.extension[0].extension[0].url = "type"
* group[0].element[6].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[6].target.extension[0].extension[1].valueInteger = 1
* group[0].element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[6].target.extension[0].extension[2].valueInteger = 1
* group[0].element[6].target.display = "family.extension[3].valueString"
* group[0].element[7].code = #FN.5
* group[0].element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].extension[0].extension[0].url = "type"
* group[0].element[7].extension[0].extension[0].valueCode = #"ST"
* group[0].element[7].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].extension[0].extension[1].valueInteger = 0
* group[0].element[7].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].extension[0].extension[2].valueInteger = 1
* group[0].element[7].display = "Surname from Partner/Spouse"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #family.extension[3].url
* group[0].element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].target.extension[0].extension[0].url = "type"
* group[0].element[7].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].target.extension[0].extension[1].valueInteger = 1
* group[0].element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].target.extension[0].extension[2].valueInteger = 1
* group[0].element[7].target.extension[0].extension[3].url = "assignment"
* group[0].element[7].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/humanname-partner-name\""
* group[0].element[7].target.display = "family.extension[3].url"
* group[0].element[8].code = #FN.5
* group[0].element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].extension[0].extension[0].url = "type"
* group[0].element[8].extension[0].extension[0].valueCode = #"ST"
* group[0].element[8].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].extension[0].extension[1].valueInteger = 0
* group[0].element[8].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].extension[0].extension[2].valueInteger = 1
* group[0].element[8].display = "Surname from Partner/Spouse"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #family.extension[3].valueString
* group[0].element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].target.extension[0].extension[0].url = "type"
* group[0].element[8].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].target.extension[0].extension[1].valueInteger = 1
* group[0].element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].target.extension[0].extension[2].valueInteger = 1
* group[0].element[8].target.display = "family.extension[3].valueString"
