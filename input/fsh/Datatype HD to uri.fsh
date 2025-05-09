// HL7 Data Type - FHIR R4_ HD[uri] - Sheet1.csv
Instance: DatatypeHDToUri
InstanceOf: ConceptMap
Title: "Datatype HD to uri Map"
Usage: #definition
* title = "Datatype HD to uri Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype HD to the FHIR uri Data Type."
* id = "datatype-hd-to-uri"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-hd-to-uri"
* name = "DatatypeHDToUri"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype HD to uri.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1geX7fy4NBWzKR3gxwYCuG8DtlzY-W8Yp6fu9r2Qnpxo/edit#gid=0"
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
* group.element[0].target.code = #$value
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"url"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "$value"
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
* group.element[1].target.code = #$value
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"url"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.extension[0].extension[3].url = "fixedValue"
* group.element[1].target.extension[0].extension[3].valueString = "\"urn:oid:\"+HD.2"
* group.element[1].target.display = "$value"
* group.element[1].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[1].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[1].target.dependsOn[0].value = "IF HD.1 NOT VALUED AND IF HD-3 = \"ISO\""
* group.element[1].target.dependsOn[0].display = "IF HD.1 NOT VALUED AND IF HD-3 = \"ISO\""
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
* group.element[2].target.code = #$value
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"url"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 1
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = 1
* group.element[2].target.extension[0].extension[3].url = "fixedValue"
* group.element[2].target.extension[0].extension[3].valueString = "\"urn:uuid:\"+HD.2"
* group.element[2].target.display = "$value"
* group.element[2].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[2].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[2].target.dependsOn[0].value = "IF HD.1 NOT VALUED AND IF HD-3 = \"UUID\""
* group.element[2].target.dependsOn[0].display = "IF HD.1 NOT VALUED AND IF HD-3 = \"UUID\""
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
* group.element[3].target.code = #$value
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"url"
* group.element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[1].valueInteger = 1
* group.element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[2].valueInteger = 1
* group.element[3].target.display = "$value"
* group.element[3].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[3].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[3].target.dependsOn[0].value = "IF HD.1 NOT VALUED AND IF HD-3 NOT IN (\"ISO\", \"UUID\")"
* group.element[3].target.dependsOn[0].display = "IF HD.1 NOT VALUED AND IF HD-3 NOT IN (\"ISO\", \"UUID\")"
