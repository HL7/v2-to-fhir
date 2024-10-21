// HL7 Data Type - FHIR R4_ XTN[ContactPoint] - Sheet1.csv
Instance: DatatypeXTNToContactPoint
InstanceOf: ConceptMap
Title: "Datatype XTNnull to ContactPoint Map"
* title = "Datatype XTNnull to ContactPoint Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype XTN to the FHIR ContactPoint Data Type."
* id = "datatype-xtn-to-contactpoint"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-xtn-to-contactpoint"
* version = "1.0"
* name = "DatatypeXTNToContactPoint"
* status = #active
* experimental = true
* date = "2024-10-21"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "XTN"
* targetUri = "ContactPoint"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype XTN to ContactPoint.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1g4TA7CC4zHkWmGvGQdskKJ3DrOdVQVS3MooE_iU9CuU/edit#gid=0"
* group.element[0].code = #XTN.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Telephone Number"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #value
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"string"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "value"
* group.element[0].target.product[0].property = "antlr"
* group.element[0].target.product[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\") AND XTN.7 NOT VALUED AND XTN.12 NOT VALUED"
* group.element[1].code = #XTN.2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"ID"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 0
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Telecommunication Use Code"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #use
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"code"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.display = "use"
* group.element[1].target.dependsOn[0].property = "data-type-map"
* group.element[1].target.dependsOn[0].value = "ID[Code]"
* group.element[1].target.dependsOn[1].property = "vocabulary-map"
* group.element[1].target.dependsOn[1].value = "TelecomUseCode"
* group.element[2].code = #XTN.3
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ID"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Telecommunication Equipment Type"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #system
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"code"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 1
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = 1
* group.element[2].target.display = "system"
* group.element[2].target.dependsOn[0].property = "data-type-map"
* group.element[2].target.dependsOn[0].value = "ID[Code]"
* group.element[2].target.dependsOn[1].property = "vocabulary-map"
* group.element[2].target.dependsOn[1].value = "TelecomEquipmentType"
* group.element[3].code = #XTN.3
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"ID"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Telecommunication Equipment Type"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #system
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"code"
* group.element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[1].valueInteger = 1
* group.element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[2].valueInteger = 1
* group.element[3].target.display = "system"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = "\"email\""
* group.element[3].target.dependsOn[1].property = "data-type-map"
* group.element[3].target.dependsOn[1].value = "ID[Code]"
* group.element[3].target.product[0].property = "antlr"
* group.element[3].target.product[0].value = "IF XTN.3 NOT VALUED AND XTN.4 VALUED"
* group.element[4].code = #XTN.3
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"ID"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Telecommunication Equipment Type"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #system.extension-data-absent-reason
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"code"
* group.element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[4].target.extension[0].extension[1].valueInteger = 1
* group.element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[4].target.extension[0].extension[2].valueInteger = 1
* group.element[4].target.display = "system.extension-data-absent-reason"
* group.element[4].target.comment = "This element became required in v2.7, before that, it was optional. FHIR has a requirement that system be populated when a value is present. If the source v2 message does not contain an Equipment Type, a default system may be selected based on other information in the XTN instance (eg, if XTN.4 is valued, then the Equipment Type should default to \"email). However, if neither XTN.3 nor XTN.4 are valued then it is unclear what the ContactPoint.system would be, thus the data absent reason would clearly indicate it is \"unknown\"."
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = "\"unknown\""
* group.element[4].target.dependsOn[1].property = "data-type-map"
* group.element[4].target.dependsOn[1].value = "ID[Code]"
* group.element[4].target.product[0].property = "antlr"
* group.element[4].target.product[0].value = "IF XTN.3 NOT VALUED AND XTN.4  NOT VALUED"
* group.element[5].code = #XTN.4
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"ST"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 0
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Communication Address"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #value
* group.element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].target.extension[0].extension[0].url = "type"
* group.element[5].target.extension[0].extension[0].valueCode = #"string"
* group.element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[5].target.extension[0].extension[1].valueInteger = 1
* group.element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[5].target.extension[0].extension[2].valueInteger = 1
* group.element[5].target.display = "value"
* group.element[5].target.product[0].property = "antlr"
* group.element[5].target.product[0].value = "IF XTN.3 IN (\"Internet\", \"X.400\")"
* group.element[6].code = #XTN.5
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"SNM"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = 0
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = 1
* group.element[6].display = "Country Code"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #extension[1].url
* group.element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].target.extension[0].extension[0].url = "type"
* group.element[6].target.extension[0].extension[0].valueCode = #"uri"
* group.element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[6].target.extension[0].extension[1].valueInteger = 1
* group.element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[6].target.extension[0].extension[2].valueInteger = 1
* group.element[6].target.display = "extension[1].url"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = "\"http://hl7.org/fhir/StructureDefinition/contactpoint-country\""
* group.element[7].code = #XTN.5
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"SNM"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 0
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Country Code"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #extension[1].valueString
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"string"
* group.element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[7].target.extension[0].extension[1].valueInteger = 1
* group.element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[7].target.extension[0].extension[2].valueInteger = 1
* group.element[7].target.display = "extension[1].valueString"
* group.element[8].code = #XTN.6
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"SNM"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = 0
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = 1
* group.element[8].display = "Area/City Code"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #extension[2].url
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"uri"
* group.element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[8].target.extension[0].extension[1].valueInteger = 1
* group.element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[8].target.extension[0].extension[2].valueInteger = 1
* group.element[8].target.display = "extension[2].url"
* group.element[8].target.dependsOn[0].property = "value"
* group.element[8].target.dependsOn[0].value = "\"http://hl7.org/fhir/StructureDefinition/contactpoint-area\""
* group.element[9].code = #XTN.6
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"SNM"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = 0
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = 1
* group.element[9].display = "Area/City Code"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #extension[2].valueString
* group.element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].target.extension[0].extension[0].url = "type"
* group.element[9].target.extension[0].extension[0].valueCode = #"string"
* group.element[9].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[9].target.extension[0].extension[1].valueInteger = 1
* group.element[9].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[9].target.extension[0].extension[2].valueInteger = 1
* group.element[9].target.display = "extension[2].valueString"
* group.element[10].code = #XTN.7
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"SNM"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = 0
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = 1
* group.element[10].display = "Local Number"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #extension[3].url
* group.element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].target.extension[0].extension[0].url = "type"
* group.element[10].target.extension[0].extension[0].valueCode = #"uri"
* group.element[10].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[10].target.extension[0].extension[1].valueInteger = 1
* group.element[10].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[10].target.extension[0].extension[2].valueInteger = 1
* group.element[10].target.display = "extension[3].url"
* group.element[10].target.dependsOn[0].property = "value"
* group.element[10].target.dependsOn[0].value = "\"http://hl7.org/fhir/StructureDefinition/contactpoint-local\""
* group.element[10].target.product[0].property = "antlr"
* group.element[10].target.product[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\")"
* group.element[11].code = #XTN.7
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "type"
* group.element[11].extension[0].extension[0].valueCode = #"SNM"
* group.element[11].extension[0].extension[1].url = "cardinalityMin"
* group.element[11].extension[0].extension[1].valueInteger = 0
* group.element[11].extension[0].extension[2].url = "cardinalityMax"
* group.element[11].extension[0].extension[2].valueInteger = 1
* group.element[11].display = "Local Number"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #extension[3].valueString
* group.element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].target.extension[0].extension[0].url = "type"
* group.element[11].target.extension[0].extension[0].valueCode = #"string"
* group.element[11].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[11].target.extension[0].extension[1].valueInteger = 1
* group.element[11].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[11].target.extension[0].extension[2].valueInteger = 1
* group.element[11].target.display = "extension[3].valueString"
* group.element[11].target.product[0].property = "antlr"
* group.element[11].target.product[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\")"
* group.element[12].code = #XTN.7
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"SNM"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = 0
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = 1
* group.element[12].display = "Local Number"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #value
* group.element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].target.extension[0].extension[0].url = "type"
* group.element[12].target.extension[0].extension[0].valueCode = #"string"
* group.element[12].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[12].target.extension[0].extension[1].valueInteger = 1
* group.element[12].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[12].target.extension[0].extension[2].valueInteger = 1
* group.element[12].target.display = "value"
* group.element[12].target.dependsOn[0].property = "value"
* group.element[12].target.dependsOn[0].value = "XTN.6+\" \"+XTN.7"
* group.element[12].target.product[0].property = "antlr"
* group.element[12].target.product[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\") AND XTN.5 NOT VALUED AND XTN.6 VALUED AND XTN.7 VALUED AND XTN.8 NOT VALUED"
* group.element[13].code = #XTN.7
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "type"
* group.element[13].extension[0].extension[0].valueCode = #"SNM"
* group.element[13].extension[0].extension[1].url = "cardinalityMin"
* group.element[13].extension[0].extension[1].valueInteger = 0
* group.element[13].extension[0].extension[2].url = "cardinalityMax"
* group.element[13].extension[0].extension[2].valueInteger = 1
* group.element[13].display = "Local Number"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #value
* group.element[13].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].target.extension[0].extension[0].url = "type"
* group.element[13].target.extension[0].extension[0].valueCode = #"string"
* group.element[13].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[13].target.extension[0].extension[1].valueInteger = 1
* group.element[13].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[13].target.extension[0].extension[2].valueInteger = 1
* group.element[13].target.display = "value"
* group.element[13].target.dependsOn[0].property = "value"
* group.element[13].target.dependsOn[0].value = "\"+\"+XTN.5+\" \"+XTN.6+\" \"+XTN.7"
* group.element[13].target.product[0].property = "antlr"
* group.element[13].target.product[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\") AND XTN.5  VALUED AND XTN.6 VALUED AND XTN.7 VALUED AND XTN.8 NOT VALUED"
* group.element[14].code = #XTN.7
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "type"
* group.element[14].extension[0].extension[0].valueCode = #"SNM"
* group.element[14].extension[0].extension[1].url = "cardinalityMin"
* group.element[14].extension[0].extension[1].valueInteger = 0
* group.element[14].extension[0].extension[2].url = "cardinalityMax"
* group.element[14].extension[0].extension[2].valueInteger = 1
* group.element[14].display = "Local Number"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #value
* group.element[14].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].target.extension[0].extension[0].url = "type"
* group.element[14].target.extension[0].extension[0].valueCode = #"string"
* group.element[14].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[14].target.extension[0].extension[1].valueInteger = 1
* group.element[14].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[14].target.extension[0].extension[2].valueInteger = 1
* group.element[14].target.display = "value"
* group.element[14].target.dependsOn[0].property = "value"
* group.element[14].target.dependsOn[0].value = "\"+\"+XTN.5+\" \"+XTN.6+\" \"+XTN.7+\" X\"+XTN.8"
* group.element[14].target.product[0].property = "antlr"
* group.element[14].target.product[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\") AND XTN.5  VALUED AND XTN.6 VALUED AND XTN.7 VALUED AND XTN.8 VALUED"
* group.element[15].code = #XTN.7
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "type"
* group.element[15].extension[0].extension[0].valueCode = #"SNM"
* group.element[15].extension[0].extension[1].url = "cardinalityMin"
* group.element[15].extension[0].extension[1].valueInteger = 0
* group.element[15].extension[0].extension[2].url = "cardinalityMax"
* group.element[15].extension[0].extension[2].valueInteger = 1
* group.element[15].display = "Local Number"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #value
* group.element[15].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].target.extension[0].extension[0].url = "type"
* group.element[15].target.extension[0].extension[0].valueCode = #"string"
* group.element[15].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[15].target.extension[0].extension[1].valueInteger = 1
* group.element[15].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[15].target.extension[0].extension[2].valueInteger = 1
* group.element[15].target.display = "value"
* group.element[15].target.dependsOn[0].property = "value"
* group.element[15].target.dependsOn[0].value = "XTN.6+\" \"+XTN.7+\" X\"+XTN.8"
* group.element[15].target.product[0].property = "antlr"
* group.element[15].target.product[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\") AND XTN.5  NOT VALUED AND XTN.6 VALUED AND XTN.7 VALUED AND XTN.8 VALUED"
* group.element[16].code = #XTN.8
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "type"
* group.element[16].extension[0].extension[0].valueCode = #"SNM"
* group.element[16].extension[0].extension[1].url = "cardinalityMin"
* group.element[16].extension[0].extension[1].valueInteger = 0
* group.element[16].extension[0].extension[2].url = "cardinalityMax"
* group.element[16].extension[0].extension[2].valueInteger = 1
* group.element[16].display = "Extension"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #extension[4].url
* group.element[16].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].target.extension[0].extension[0].url = "type"
* group.element[16].target.extension[0].extension[0].valueCode = #"uri"
* group.element[16].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[16].target.extension[0].extension[1].valueInteger = 1
* group.element[16].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[16].target.extension[0].extension[2].valueInteger = 1
* group.element[16].target.display = "extension[4].url"
* group.element[16].target.dependsOn[0].property = "value"
* group.element[16].target.dependsOn[0].value = "\"http://hl7.org/fhir/StructureDefinition/contactpoint-extension\""
* group.element[17].code = #XTN.8
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "type"
* group.element[17].extension[0].extension[0].valueCode = #"SNM"
* group.element[17].extension[0].extension[1].url = "cardinalityMin"
* group.element[17].extension[0].extension[1].valueInteger = 0
* group.element[17].extension[0].extension[2].url = "cardinalityMax"
* group.element[17].extension[0].extension[2].valueInteger = 1
* group.element[17].display = "Extension"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #extension[4].valueString
* group.element[17].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].target.extension[0].extension[0].url = "type"
* group.element[17].target.extension[0].extension[0].valueCode = #"string"
* group.element[17].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[17].target.extension[0].extension[1].valueInteger = 1
* group.element[17].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[17].target.extension[0].extension[2].valueInteger = 1
* group.element[17].target.display = "extension[4].valueString"
* group.element[18].code = #XTN.12
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "type"
* group.element[18].extension[0].extension[0].valueCode = #"ST"
* group.element[18].extension[0].extension[1].url = "cardinalityMin"
* group.element[18].extension[0].extension[1].valueInteger = 0
* group.element[18].extension[0].extension[2].url = "cardinalityMax"
* group.element[18].extension[0].extension[2].valueInteger = 1
* group.element[18].display = "Unformatted Telephone number"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #value
* group.element[18].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].target.extension[0].extension[0].url = "type"
* group.element[18].target.extension[0].extension[0].valueCode = #"string"
* group.element[18].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[18].target.extension[0].extension[1].valueInteger = 1
* group.element[18].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[18].target.extension[0].extension[2].valueInteger = 1
* group.element[18].target.display = "value"
* group.element[18].target.product[0].property = "antlr"
* group.element[18].target.product[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\")"
* group.element[19].code = #XTN.13
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "type"
* group.element[19].extension[0].extension[0].valueCode = #"DTM"
* group.element[19].extension[0].extension[1].url = "cardinalityMin"
* group.element[19].extension[0].extension[1].valueInteger = 0
* group.element[19].extension[0].extension[2].url = "cardinalityMax"
* group.element[19].extension[0].extension[2].valueInteger = 1
* group.element[19].display = "Effective Start Date"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #period.start
* group.element[19].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].target.extension[0].extension[0].url = "type"
* group.element[19].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[19].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[19].target.extension[0].extension[1].valueInteger = 1
* group.element[19].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[19].target.extension[0].extension[2].valueInteger = 1
* group.element[19].target.display = "period.start"
* group.element[19].target.dependsOn[0].property = "data-type-map"
* group.element[19].target.dependsOn[0].value = "DTM[DateTime]"
* group.element[20].code = #XTN.14
* group.element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "type"
* group.element[20].extension[0].extension[0].valueCode = #"DTM"
* group.element[20].extension[0].extension[1].url = "cardinalityMin"
* group.element[20].extension[0].extension[1].valueInteger = 0
* group.element[20].extension[0].extension[2].url = "cardinalityMax"
* group.element[20].extension[0].extension[2].valueInteger = 1
* group.element[20].display = "Expiration Date"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #period.end
* group.element[20].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].target.extension[0].extension[0].url = "type"
* group.element[20].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[20].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[20].target.extension[0].extension[1].valueInteger = 1
* group.element[20].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[20].target.extension[0].extension[2].valueInteger = 1
* group.element[20].target.display = "period.end"
* group.element[20].target.dependsOn[0].property = "data-type-map"
* group.element[20].target.dependsOn[0].value = "DTM[DateTime]"
* group.element[21].code = #XTN.18
* group.element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "type"
* group.element[21].extension[0].extension[0].valueCode = #"NM"
* group.element[21].extension[0].extension[1].url = "cardinalityMin"
* group.element[21].extension[0].extension[1].valueInteger = 0
* group.element[21].extension[0].extension[2].url = "cardinalityMax"
* group.element[21].extension[0].extension[2].valueInteger = 1
* group.element[21].display = "Preference Order"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #rank
* group.element[21].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].target.extension[0].extension[0].url = "type"
* group.element[21].target.extension[0].extension[0].valueCode = #"positiveInt"
* group.element[21].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[21].target.extension[0].extension[1].valueInteger = 1
* group.element[21].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[21].target.extension[0].extension[2].valueInteger = 1
* group.element[21].target.display = "rank"
* group.element[21].target.dependsOn[0].property = "data-type-map"
* group.element[21].target.dependsOn[0].value = "NM[PositiveInt]"
