// HL7 Concept Map_ NatureOfAbnormalTesting - Sheet1.csv
Instance: TableHL70080ToV20080
InstanceOf: ConceptMap
Title: "Table HL70080 to V2 0080 Map"
Usage: #definition
* title = "Table HL70080 to V2 0080 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70080 to the FHIR V2 0080 Value Set."
* id = "table-hl70080-to-v2-0080"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70080-to-v2-0080"
* name = "TableHL70080ToV20080"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0080"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70080 to V2 0080.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1xwKH-TZTVdS5-CrBlJ6nPE-EvH2bUlYPpeoT-v794q8/edit#gid=0"
* group.element[0].code = #A
* group.element[0].display = "An age-based population"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #A
* group.element[0].target.display = "An age-based population"
* group.element[1].code = #N
* group.element[1].display = "None – generic normal range"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #N
* group.element[1].target.display = "None – generic normal range"
* group.element[2].code = #R
* group.element[2].display = "A race-based population"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #R
* group.element[2].target.display = "A race-based population"
* group.element[3].code = #S
* group.element[3].display = "A sex-based population"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #S
* group.element[3].target.display = "A sex-based population"
* group.element[4].code = #SP
* group.element[4].display = "Species"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #SP
* group.element[4].target.display = "Species"
* group.element[5].code = #B
* group.element[5].display = "Breed"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #B
* group.element[5].target.display = "Breed"
* group.element[6].code = #ST
* group.element[6].display = "Strain"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #ST
* group.element[6].target.display = "Strain"
