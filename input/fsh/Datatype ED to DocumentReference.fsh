// HL7 Data Type - FHIR R4_ ED[DocumentReference] - Sheet1.csv
Instance: DatatypeEDToDocumentReference
InstanceOf: ConceptMap
Title: "Datatype EDnull to DocumentReference Map"
* title = "Datatype EDnull to DocumentReference Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype ED to the FHIR DocumentReference Resource."
* id = "datatype-ed-to-documentreference"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-ed-to-documentreference"
* version = "1.0"
* name = "DatatypeEDToDocumentReference"
* status = #active
* experimental = true
* date = "2024-07-28"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ED"
* targetUri = "DocumentReference"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype ED to DocumentReference.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1LnY0-HZxstOum6gIlV73mLi2z_7p06HkiEwI8myaN6w/edit#gid=0"
* group.element[0].code = #ED.2
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ID"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Type of Data"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #content.attachment.extension[1].url
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"uri"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "content.attachment.extension[1].url"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = "\"https://hl7.org/fhir/StructureDefinition/alternate-codes\""
* group.element[0].target.product[0].property = "antlr"
* group.element[0].target.product[0].value = "IF ED.3 NOT VALUED"
* group.element[1].code = #ED.2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"ID"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Type of Data"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #content.attachment.extension[1].valueCodeableConcept
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.display = "content.attachment.extension[1].valueCodeableConcept"
* group.element[1].target.product[0].property = "antlr"
* group.element[1].target.product[0].value = "IF ED.3 NOT VALUED"
* group.element[2].code = #ED.3
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ID"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 0
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Data Subtype"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #content.attachment.contentType
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"code"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 1
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = 1
* group.element[2].target.display = "content.attachment.contentType"
* group.element[3].code = #ED.5
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"TX"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Data"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #content.attachment.data
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"base64Binary"
* group.element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[1].valueInteger = 1
* group.element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[2].valueInteger = 1
* group.element[3].target.display = "content.attachment.data"
* group.element[3].target.comment = "Implementations are not always accurate, so to be safe you may want to always assess OBX-5.5 to determine the correct .contentType."
* group.element[3].target.product[0].property = "antlr"
* group.element[3].target.product[0].value = "IF ED.4 IN (\"Base64\")"
* group.element[4].code = #ED.5
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"TX"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Data"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #content.attachment.data
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"base64Binary"
* group.element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[4].target.extension[0].extension[1].valueInteger = 1
* group.element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[4].target.extension[0].extension[2].valueInteger = 1
* group.element[4].target.display = "content.attachment.data"
* group.element[4].target.comment = "Implementations are not always accurate, so to be safe you may want to always assess OBX-5.5 to determine the correct .contentType."
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = "/convert from A or HEX to binary64/"
* group.element[4].target.product[0].property = "antlr"
* group.element[4].target.product[0].value = "IF ED.4 IN (\"A\", (HEX\")"
