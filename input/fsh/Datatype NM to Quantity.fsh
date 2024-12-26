// HL7 Data Type - FHIR R4_ NM[Quantity] - Sheet1.csv
Instance: DatatypeNMToQuantity
InstanceOf: ConceptMap
Title: "Datatype NM to Quantity Map"
* title = "Datatype NM to Quantity Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype NM to the FHIR Quantity Data Type."
* id = "datatype-nm-to-quantity"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-nm-to-quantity"
* version = "1.0"
* name = "DatatypeNMToQuantity"
* status = #active
* experimental = true
* date = "2024-12-26"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "NM"
* targetUri = "Quantity"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype NM to Quantity.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1g4uO4eRFeRsOhiR5G_PIqMs8rTMIxjF1qk9izKcunnI/edit#gid=0"
* group.element[0].code = #NM.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].display = "Numeric"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #$value
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"decimal"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "$value"
