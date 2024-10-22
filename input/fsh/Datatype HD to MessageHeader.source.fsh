// HL7 Data Type - FHIR R4_ HD[MessageHeader.source] - Sheet1.csv
Instance: DatatypeHDToMessageHeaderSource
InstanceOf: ConceptMap
Title: "Datatype HDnull to MessageHeader.source Map"
* title = "Datatype HDnull to MessageHeader.source Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype HD to the FHIR MessageHeader.source Data Type."
* id = "datatype-hd-to-messageheader-source"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-hd-to-messageheader-source"
* version = "1.0"
* name = "DatatypeHDToMessageHeaderSource"
* status = #active
* experimental = true
* date = "2024-10-21"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HD"
* targetUri = "MessageHeader.source"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype HD to MessageHeader.source.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/18o2QLSHQPkRr1S0vax7G4tuuXQnhE9wJl0n1kjupS7U/edit#gid=0"
* group.element[0].code = #HD.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"IS"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Namespace ID"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #name
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"string"
* group.element[0].target.display = "name"
* group.element[0].target.product[0].property = "antlr"
* group.element[0].target.product[0].value = "IF HD.2 NOT VALUED AND (HD-3 NOT IN (\"ISO\", \"UUID\", \"DNS\", \"URI\"))"
* group.element[1].code = #HD.2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"ST"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 0
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Universal ID"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #endpoint
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"uri"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.display = "endpoint"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = "\"urn:oid:\"+HD.2"
* group.element[1].target.product[0].property = "antlr"
* group.element[1].target.product[0].value = "IF HD-3 = \"ISO\""
* group.element[2].code = #HD.2
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ST"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 0
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Universal ID"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #endpoint
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"uri"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 1
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = 1
* group.element[2].target.display = "endpoint"
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = "\"urn:uuid:\"+HD.2"
* group.element[2].target.product[0].property = "antlr"
* group.element[2].target.product[0].value = "IF HD-3 = \"UUID\""
* group.element[3].code = #HD.2
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"ST"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 0
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Universal ID"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #endpoint
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"uri"
* group.element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[1].valueInteger = 1
* group.element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[2].valueInteger = 1
* group.element[3].target.display = "endpoint"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = "\"urn:dns:\"+HD.2"
* group.element[3].target.product[0].property = "antlr"
* group.element[3].target.product[0].value = "IF HD-3 = \"DNS\""
* group.element[4].code = #HD.2
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"ST"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 0
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Universal ID"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #endpoint
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"uri"
* group.element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[4].target.extension[0].extension[1].valueInteger = 1
* group.element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[4].target.extension[0].extension[2].valueInteger = 1
* group.element[4].target.display = "endpoint"
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = "\"urn:uri:\"+HD.2"
* group.element[4].target.product[0].property = "antlr"
* group.element[4].target.product[0].value = "IF HD-3 = \"URI\""
* group.element[5].code = #HD.2
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"ST"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 0
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Universal ID"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #name
* group.element[5].target.display = "name"
* group.element[5].target.dependsOn[0].property = "value"
* group.element[5].target.dependsOn[0].value = "HD.1+\" - \"+HD.3+\":\"+HD.2"
* group.element[5].target.product[0].property = "antlr"
* group.element[5].target.product[0].value = "IF HD-3 NOT IN (\"ISO\", \"UUID\", \"DNS\", \"URI\")"
* group.element[6].code = #HD.3
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"ST"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = 0
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = 1
* group.element[6].display = "Univeral ID Type"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #endpoint.extension[1].url
* group.element[6].target.display = "endpoint.extension[1].url"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = "\"http://hl7.org/fhir/R4/extension-data-absent-reason.html\""
* group.element[6].target.product[0].property = "antlr"
* group.element[6].target.product[0].value = "IF NOT VALUED OR NOT IN (\"ISO\", \"UUID\", \"DNS\", \"URI\")"
* group.element[7].code = #HD.3
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"ST"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 0
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Univeral ID Type"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #endpoint.extension[1].valueCode
* group.element[7].target.display = "endpoint.extension[1].valueCode"
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = "\"unknown\""
* group.element[7].target.product[0].property = "antlr"
* group.element[7].target.product[0].value = "IF NOT VALUED OR NOT IN (\"ISO\", \"UUID\", \"DNS\", \"URI\")"
