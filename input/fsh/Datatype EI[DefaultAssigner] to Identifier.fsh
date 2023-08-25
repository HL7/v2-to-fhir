// HL7 Data Type - FHIR R4_ EI[Identifier-DefaultAssigner] - Sheet1.csv
Instance: DatatypeEIDefaultAssignerToIdentifier
InstanceOf: ConceptMap
Title: "Datatype EI[DefaultAssigner] to Identifier Map"
* title = "Datatype EI[DefaultAssigner] to Identifier Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype EI to the FHIR Identifier Data Type."
* id = "datatype-ei-defaultassigner-to-identifier"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-ei-defaultassigner-to-identifier"
* version = "1.0"
* name = "DatatypeEIDefaultAssignerToIdentifier"
* status = #active
* experimental = true
* date = "2023-08-25"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "EI"
* targetUri = "Identifier"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype EI[DefaultAssigner] to Identifier.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1P-B_L7iPadbO4VD2zcyjUGfEeXtjlYqgUNTd7idvohE/edit#gid=0"
* group.element[0].code = #EI.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Entity Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #value
* group.element[0].target.display = "value"
