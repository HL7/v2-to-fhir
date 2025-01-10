// HL7 Concept Map_ AllowSubstitution - Sheet1.csv
Instance: TableHL70161ToV20161
InstanceOf: ConceptMap
Title: "Table HL70161 to V2 0161 Map"
Usage: #definition
* title = "Table HL70161 to V2 0161 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70161 to the FHIR V2 0161 Value Set."
* id = "table-hl70161-to-v2-0161"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70161-to-v2-0161"
* name = "TableHL70161ToV20161"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0161"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70161 to V2 0161.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1giNdFr1kWkyyBeotwZ_o92J5HFKa440vbF8k48mFCcY/edit#gid=0"
* group.element[0].code = #N
* group.element[0].display = "Substitutions are NOT authorized. (This is the default - null.)"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #N
* group.element[0].target.display = "Substitutions are NOT authorized. (This is the default - null.)"
* group.element[1].code = #G
* group.element[1].display = "Allow generic substitutions."
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #G
* group.element[1].target.display = "Allow generic substitutions."
* group.element[2].code = #T
* group.element[2].display = "Allow therapeutic substitutions"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #T
* group.element[2].target.display = "Allow therapeutic substitutions"
