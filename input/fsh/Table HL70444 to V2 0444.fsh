// HL7 Concept Map_ NameAssemblyOrder - Sheet1.csv
Instance: TableHL70444ToV20444
InstanceOf: ConceptMap
Title: "Table HL70444 to V2 0444 Map"
* title = "Table HL70444 to V2 0444 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70444 to the FHIR V2 0444 Value Set."
* id = "table-hl70444-to-v2-0444"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70444-to-v2-0444"
* version = "1.0"
* name = "TableHL70444ToV20444"
* status = #active
* experimental = true
* date = "2024-04-24"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70444"
* targetUri = "http://terminology.hl7.org/CodeSystem/v2-0444"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70444 to V2 0444.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1d1PTZpzWZPTQ6Ke3fJeirYxfuQu9t1BetnUHq26UDgA/edit#gid=0"
* group.element[0].code = #G
* group.element[0].display = "Prefix Given Middle Family Suffix"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #G
* group.element[0].target.display = "Prefix Given Family Suffix"
* group.element[1].code = #F
* group.element[1].display = "Prefix Family Middle Given Suffix"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #F
* group.element[1].target.display = "Prefix Family Given Suffix"
