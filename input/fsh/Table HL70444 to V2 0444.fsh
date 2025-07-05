// HL7 Concept Map_ NameAssemblyOrder - Sheet1.csv
Instance: TableHL70444ToV20444
InstanceOf: ConceptMap
Title: "Table HL70444 to V2 0444 Map"
Usage: #definition
* title = "Table HL70444 to V2 0444 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70444 to the FHIR V2 0444 Value Set."
* id = "table-hl70444-to-v2-0444"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70444-to-v2-0444"
* name = "TableHL70444ToV20444"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0444"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0444"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70444 to V2 0444.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1d1PTZpzWZPTQ6Ke3fJeirYxfuQu9t1BetnUHq26UDgA/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0444"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0444"
* group[0].element[0].code = #G
* group[0].element[0].display = "Prefix Given Middle Family Suffix"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #G
* group[0].element[0].target.display = "Prefix Given Family Suffix"
* group[0].element[1].code = #F
* group[0].element[1].display = "Prefix Family Middle Given Suffix"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #F
* group[0].element[1].target.display = "Prefix Family Given Suffix"
