// HL7 Data Type - FHIR R4_ XTN[ContactPoint] - Sheet1.csv
Instance: DatatypeXTNToContactPoint
InstanceOf: ConceptMap
Title: "Datatype XTN to ContactPoint Map"
Usage: #definition
* title = "Datatype XTN to ContactPoint Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype XTN to the FHIR ContactPoint Data Type."
* id = "datatype-xtn-to-contactpoint"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-xtn-to-contactpoint"
* name = "DatatypeXTNToContactPoint"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype XTN to ContactPoint.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1g4TA7CC4zHkWmGvGQdskKJ3DrOdVQVS3MooE_iU9CuU/edit#gid=0"
* group[0].element[0].code = #XTN.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Telephone Number"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #value
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "value"
* group[0].element[0].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[0].target.dependsOn[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\") AND XTN.7 NOT VALUED AND XTN.12 NOT VALUED"
* group[0].element[1].code = #XTN.2
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"ID"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 0
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Telecommunication Use Code"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #use
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 1
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[1].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70201-to-contact-point-use"
* group[0].element[1].target.display = "use"
* group[0].element[2].code = #XTN.3
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "type"
* group[0].element[2].extension[0].extension[0].valueCode = #"ID"
* group[0].element[2].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[1].valueInteger = 1
* group[0].element[2].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[2].valueInteger = 1
* group[0].element[2].display = "Telecommunication Equipment Type"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #system
* group[0].element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].target.extension[0].extension[0].url = "type"
* group[0].element[2].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].target.extension[0].extension[1].valueInteger = 1
* group[0].element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].target.extension[0].extension[2].valueInteger = 1
* group[0].element[2].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[2].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70202-to-contact-point-system"
* group[0].element[2].target.display = "system"
* group[0].element[3].code = #XTN.3
* group[0].element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].extension[0].extension[0].url = "type"
* group[0].element[3].extension[0].extension[0].valueCode = #"ID"
* group[0].element[3].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].extension[0].extension[1].valueInteger = 1
* group[0].element[3].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].extension[0].extension[2].valueInteger = 1
* group[0].element[3].display = "Telecommunication Equipment Type"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #system
* group[0].element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].target.extension[0].extension[0].url = "type"
* group[0].element[3].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].target.extension[0].extension[1].valueInteger = 1
* group[0].element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].target.extension[0].extension[2].valueInteger = 1
* group[0].element[3].target.extension[0].extension[3].url = "assignment"
* group[0].element[3].target.extension[0].extension[3].valueString = "\"email\""
* group[0].element[3].target.display = "system"
* group[0].element[3].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[3].target.dependsOn[0].value = "IF XTN.3 NOT VALUED AND XTN.4 VALUED"
* group[0].element[4].code = #XTN.3
* group[0].element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].extension[0].extension[0].url = "type"
* group[0].element[4].extension[0].extension[0].valueCode = #"ID"
* group[0].element[4].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].extension[0].extension[1].valueInteger = 1
* group[0].element[4].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].extension[0].extension[2].valueInteger = 1
* group[0].element[4].display = "Telecommunication Equipment Type"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #system.extension-data-absent-reason
* group[0].element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].target.extension[0].extension[0].url = "type"
* group[0].element[4].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].target.extension[0].extension[1].valueInteger = 1
* group[0].element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].target.extension[0].extension[2].valueInteger = 1
* group[0].element[4].target.extension[0].extension[3].url = "assignment"
* group[0].element[4].target.extension[0].extension[3].valueString = "\"unknown\""
* group[0].element[4].target.display = "system.extension-data-absent-reason"
* group[0].element[4].target.comment = "This element became required in v2.7, before that, it was optional. FHIR has a requirement that system be populated when a value is present. If the source v2 message does not contain an Equipment Type, a default system may be selected based on other information in the XTN instance (eg, if XTN.4 is valued, then the Equipment Type should default to \"email). However, if neither XTN.3 nor XTN.4 are valued then it is unclear what the ContactPoint.system would be, thus the data absent reason would clearly indicate it is \"unknown\"."
* group[0].element[4].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[4].target.dependsOn[0].value = "IF XTN.3 NOT VALUED AND XTN.4  NOT VALUED"
* group[0].element[5].code = #XTN.4
* group[0].element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].extension[0].extension[0].url = "type"
* group[0].element[5].extension[0].extension[0].valueCode = #"ST"
* group[0].element[5].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].extension[0].extension[1].valueInteger = 0
* group[0].element[5].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].extension[0].extension[2].valueInteger = 1
* group[0].element[5].display = "Communication Address"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #value
* group[0].element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].target.extension[0].extension[0].url = "type"
* group[0].element[5].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].target.extension[0].extension[1].valueInteger = 1
* group[0].element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].target.extension[0].extension[2].valueInteger = 1
* group[0].element[5].target.display = "value"
* group[0].element[5].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[5].target.dependsOn[0].value = "IF XTN.3 IN (\"Internet\", \"X.400\")"
* group[0].element[6].code = #XTN.5
* group[0].element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].extension[0].extension[0].url = "type"
* group[0].element[6].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[6].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[6].extension[0].extension[1].valueInteger = 0
* group[0].element[6].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[6].extension[0].extension[2].valueInteger = 1
* group[0].element[6].display = "Country Code"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #extension[1].url
* group[0].element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].target.extension[0].extension[0].url = "type"
* group[0].element[6].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[6].target.extension[0].extension[1].valueInteger = 1
* group[0].element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[6].target.extension[0].extension[2].valueInteger = 1
* group[0].element[6].target.extension[0].extension[3].url = "assignment"
* group[0].element[6].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/contactpoint-country\""
* group[0].element[6].target.display = "extension[1].url"
* group[0].element[7].code = #XTN.5
* group[0].element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].extension[0].extension[0].url = "type"
* group[0].element[7].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[7].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].extension[0].extension[1].valueInteger = 0
* group[0].element[7].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].extension[0].extension[2].valueInteger = 1
* group[0].element[7].display = "Country Code"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #extension[1].valueString
* group[0].element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].target.extension[0].extension[0].url = "type"
* group[0].element[7].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].target.extension[0].extension[1].valueInteger = 1
* group[0].element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].target.extension[0].extension[2].valueInteger = 1
* group[0].element[7].target.display = "extension[1].valueString"
* group[0].element[8].code = #XTN.6
* group[0].element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].extension[0].extension[0].url = "type"
* group[0].element[8].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[8].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].extension[0].extension[1].valueInteger = 0
* group[0].element[8].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].extension[0].extension[2].valueInteger = 1
* group[0].element[8].display = "Area/City Code"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #extension[2].url
* group[0].element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].target.extension[0].extension[0].url = "type"
* group[0].element[8].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].target.extension[0].extension[1].valueInteger = 1
* group[0].element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].target.extension[0].extension[2].valueInteger = 1
* group[0].element[8].target.extension[0].extension[3].url = "assignment"
* group[0].element[8].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/contactpoint-area\""
* group[0].element[8].target.display = "extension[2].url"
* group[0].element[9].code = #XTN.6
* group[0].element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].extension[0].extension[0].url = "type"
* group[0].element[9].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[9].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[9].extension[0].extension[1].valueInteger = 0
* group[0].element[9].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[9].extension[0].extension[2].valueInteger = 1
* group[0].element[9].display = "Area/City Code"
* group[0].element[9].target.equivalence = #equivalent
* group[0].element[9].target.code = #extension[2].valueString
* group[0].element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].target.extension[0].extension[0].url = "type"
* group[0].element[9].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[9].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[9].target.extension[0].extension[1].valueInteger = 1
* group[0].element[9].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[9].target.extension[0].extension[2].valueInteger = 1
* group[0].element[9].target.display = "extension[2].valueString"
* group[0].element[10].code = #XTN.7
* group[0].element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].extension[0].extension[0].url = "type"
* group[0].element[10].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[10].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[10].extension[0].extension[1].valueInteger = 0
* group[0].element[10].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[10].extension[0].extension[2].valueInteger = 1
* group[0].element[10].display = "Local Number"
* group[0].element[10].target.equivalence = #equivalent
* group[0].element[10].target.code = #extension[3].url
* group[0].element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].target.extension[0].extension[0].url = "type"
* group[0].element[10].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[10].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[10].target.extension[0].extension[1].valueInteger = 1
* group[0].element[10].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[10].target.extension[0].extension[2].valueInteger = 1
* group[0].element[10].target.extension[0].extension[3].url = "assignment"
* group[0].element[10].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/contactpoint-local\""
* group[0].element[10].target.display = "extension[3].url"
* group[0].element[10].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[10].target.dependsOn[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\")"
* group[0].element[11].code = #XTN.7
* group[0].element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[11].extension[0].extension[0].url = "type"
* group[0].element[11].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[11].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[11].extension[0].extension[1].valueInteger = 0
* group[0].element[11].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[11].extension[0].extension[2].valueInteger = 1
* group[0].element[11].display = "Local Number"
* group[0].element[11].target.equivalence = #equivalent
* group[0].element[11].target.code = #extension[3].valueString
* group[0].element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[11].target.extension[0].extension[0].url = "type"
* group[0].element[11].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[11].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[11].target.extension[0].extension[1].valueInteger = 1
* group[0].element[11].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[11].target.extension[0].extension[2].valueInteger = 1
* group[0].element[11].target.display = "extension[3].valueString"
* group[0].element[11].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[11].target.dependsOn[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\")"
* group[0].element[12].code = #XTN.7
* group[0].element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[12].extension[0].extension[0].url = "type"
* group[0].element[12].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[12].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[12].extension[0].extension[1].valueInteger = 0
* group[0].element[12].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[12].extension[0].extension[2].valueInteger = 1
* group[0].element[12].display = "Local Number"
* group[0].element[12].target.equivalence = #equivalent
* group[0].element[12].target.code = #value
* group[0].element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[12].target.extension[0].extension[0].url = "type"
* group[0].element[12].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[12].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[12].target.extension[0].extension[1].valueInteger = 1
* group[0].element[12].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[12].target.extension[0].extension[2].valueInteger = 1
* group[0].element[12].target.extension[0].extension[3].url = "assignment"
* group[0].element[12].target.extension[0].extension[3].valueString = "XTN.6+\" \"+XTN.7"
* group[0].element[12].target.display = "value"
* group[0].element[12].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[12].target.dependsOn[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\") AND XTN.5 NOT VALUED AND XTN.6 VALUED AND XTN.7 VALUED AND XTN.8 NOT VALUED"
* group[0].element[13].code = #XTN.7
* group[0].element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[13].extension[0].extension[0].url = "type"
* group[0].element[13].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[13].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[13].extension[0].extension[1].valueInteger = 0
* group[0].element[13].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[13].extension[0].extension[2].valueInteger = 1
* group[0].element[13].display = "Local Number"
* group[0].element[13].target.equivalence = #equivalent
* group[0].element[13].target.code = #value
* group[0].element[13].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[13].target.extension[0].extension[0].url = "type"
* group[0].element[13].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[13].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[13].target.extension[0].extension[1].valueInteger = 1
* group[0].element[13].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[13].target.extension[0].extension[2].valueInteger = 1
* group[0].element[13].target.extension[0].extension[3].url = "assignment"
* group[0].element[13].target.extension[0].extension[3].valueString = "\"+\"+XTN.5+\" \"+XTN.6+\" \"+XTN.7"
* group[0].element[13].target.display = "value"
* group[0].element[13].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[13].target.dependsOn[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\") AND XTN.5  VALUED AND XTN.6 VALUED AND XTN.7 VALUED AND XTN.8 NOT VALUED"
* group[0].element[14].code = #XTN.7
* group[0].element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[14].extension[0].extension[0].url = "type"
* group[0].element[14].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[14].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[14].extension[0].extension[1].valueInteger = 0
* group[0].element[14].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[14].extension[0].extension[2].valueInteger = 1
* group[0].element[14].display = "Local Number"
* group[0].element[14].target.equivalence = #equivalent
* group[0].element[14].target.code = #value
* group[0].element[14].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[14].target.extension[0].extension[0].url = "type"
* group[0].element[14].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[14].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[14].target.extension[0].extension[1].valueInteger = 1
* group[0].element[14].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[14].target.extension[0].extension[2].valueInteger = 1
* group[0].element[14].target.extension[0].extension[3].url = "assignment"
* group[0].element[14].target.extension[0].extension[3].valueString = "\"+\"+XTN.5+\" \"+XTN.6+\" \"+XTN.7+\" X\"+XTN.8"
* group[0].element[14].target.display = "value"
* group[0].element[14].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[14].target.dependsOn[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\") AND XTN.5  VALUED AND XTN.6 VALUED AND XTN.7 VALUED AND XTN.8 VALUED"
* group[0].element[15].code = #XTN.7
* group[0].element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[15].extension[0].extension[0].url = "type"
* group[0].element[15].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[15].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[15].extension[0].extension[1].valueInteger = 0
* group[0].element[15].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[15].extension[0].extension[2].valueInteger = 1
* group[0].element[15].display = "Local Number"
* group[0].element[15].target.equivalence = #equivalent
* group[0].element[15].target.code = #value
* group[0].element[15].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[15].target.extension[0].extension[0].url = "type"
* group[0].element[15].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[15].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[15].target.extension[0].extension[1].valueInteger = 1
* group[0].element[15].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[15].target.extension[0].extension[2].valueInteger = 1
* group[0].element[15].target.extension[0].extension[3].url = "assignment"
* group[0].element[15].target.extension[0].extension[3].valueString = "XTN.6+\" \"+XTN.7+\" X\"+XTN.8"
* group[0].element[15].target.display = "value"
* group[0].element[15].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[15].target.dependsOn[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\") AND XTN.5  NOT VALUED AND XTN.6 VALUED AND XTN.7 VALUED AND XTN.8 VALUED"
* group[0].element[16].code = #XTN.8
* group[0].element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[16].extension[0].extension[0].url = "type"
* group[0].element[16].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[16].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[16].extension[0].extension[1].valueInteger = 0
* group[0].element[16].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[16].extension[0].extension[2].valueInteger = 1
* group[0].element[16].display = "Extension"
* group[0].element[16].target.equivalence = #equivalent
* group[0].element[16].target.code = #extension[4].url
* group[0].element[16].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[16].target.extension[0].extension[0].url = "type"
* group[0].element[16].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[16].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[16].target.extension[0].extension[1].valueInteger = 1
* group[0].element[16].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[16].target.extension[0].extension[2].valueInteger = 1
* group[0].element[16].target.extension[0].extension[3].url = "assignment"
* group[0].element[16].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/contactpoint-extension\""
* group[0].element[16].target.display = "extension[4].url"
* group[0].element[17].code = #XTN.8
* group[0].element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[17].extension[0].extension[0].url = "type"
* group[0].element[17].extension[0].extension[0].valueCode = #"SNM"
* group[0].element[17].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[17].extension[0].extension[1].valueInteger = 0
* group[0].element[17].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[17].extension[0].extension[2].valueInteger = 1
* group[0].element[17].display = "Extension"
* group[0].element[17].target.equivalence = #equivalent
* group[0].element[17].target.code = #extension[4].valueString
* group[0].element[17].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[17].target.extension[0].extension[0].url = "type"
* group[0].element[17].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[17].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[17].target.extension[0].extension[1].valueInteger = 1
* group[0].element[17].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[17].target.extension[0].extension[2].valueInteger = 1
* group[0].element[17].target.display = "extension[4].valueString"
* group[0].element[18].code = #XTN.12
* group[0].element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[18].extension[0].extension[0].url = "type"
* group[0].element[18].extension[0].extension[0].valueCode = #"ST"
* group[0].element[18].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[18].extension[0].extension[1].valueInteger = 0
* group[0].element[18].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[18].extension[0].extension[2].valueInteger = 1
* group[0].element[18].display = "Unformatted Telephone number"
* group[0].element[18].target.equivalence = #equivalent
* group[0].element[18].target.code = #value
* group[0].element[18].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[18].target.extension[0].extension[0].url = "type"
* group[0].element[18].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[18].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[18].target.extension[0].extension[1].valueInteger = 1
* group[0].element[18].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[18].target.extension[0].extension[2].valueInteger = 1
* group[0].element[18].target.display = "value"
* group[0].element[18].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[18].target.dependsOn[0].value = "IF XTN.3 NOT IN (\"Internet\", \"X.400\")"
* group[0].element[19].code = #XTN.13
* group[0].element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[19].extension[0].extension[0].url = "type"
* group[0].element[19].extension[0].extension[0].valueCode = #"DTM"
* group[0].element[19].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[19].extension[0].extension[1].valueInteger = 0
* group[0].element[19].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[19].extension[0].extension[2].valueInteger = 1
* group[0].element[19].display = "Effective Start Date"
* group[0].element[19].target.equivalence = #equivalent
* group[0].element[19].target.code = #period.start
* group[0].element[19].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[19].target.extension[0].extension[0].url = "type"
* group[0].element[19].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[19].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[19].target.extension[0].extension[1].valueInteger = 1
* group[0].element[19].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[19].target.extension[0].extension[2].valueInteger = 1
* group[0].element[19].target.display = "period.start"
* group[0].element[20].code = #XTN.14
* group[0].element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[20].extension[0].extension[0].url = "type"
* group[0].element[20].extension[0].extension[0].valueCode = #"DTM"
* group[0].element[20].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[20].extension[0].extension[1].valueInteger = 0
* group[0].element[20].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[20].extension[0].extension[2].valueInteger = 1
* group[0].element[20].display = "Expiration Date"
* group[0].element[20].target.equivalence = #equivalent
* group[0].element[20].target.code = #period.end
* group[0].element[20].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[20].target.extension[0].extension[0].url = "type"
* group[0].element[20].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[20].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[20].target.extension[0].extension[1].valueInteger = 1
* group[0].element[20].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[20].target.extension[0].extension[2].valueInteger = 1
* group[0].element[20].target.display = "period.end"
* group[0].element[21].code = #XTN.18
* group[0].element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[21].extension[0].extension[0].url = "type"
* group[0].element[21].extension[0].extension[0].valueCode = #"NM"
* group[0].element[21].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[21].extension[0].extension[1].valueInteger = 0
* group[0].element[21].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[21].extension[0].extension[2].valueInteger = 1
* group[0].element[21].display = "Preference Order"
* group[0].element[21].target.equivalence = #equivalent
* group[0].element[21].target.code = #rank
* group[0].element[21].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[21].target.extension[0].extension[0].url = "type"
* group[0].element[21].target.extension[0].extension[0].valueCode = #"positiveInt"
* group[0].element[21].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[21].target.extension[0].extension[1].valueInteger = 1
* group[0].element[21].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[21].target.extension[0].extension[2].valueInteger = 1
* group[0].element[21].target.display = "rank"
