// HL7 Concept Map_ OrganizationalNameType - Sheet1.csv
Instance: TableHL70204ToV20204
InstanceOf: ConceptMap
Title: "Table HL70204 to V2 0204 Map"
Usage: #definition
* title = "Table HL70204 to V2 0204 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70204 to the FHIR V2 0204 Value Set."
* id = "table-hl70204-to-v2-0204"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70204-to-v2-0204"
* name = "TableHL70204ToV20204"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0204"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0204"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70204 to V2 0204.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/16h7s6tlvAS0vjsbTxHUdAhojioKgK7Jmxxu1rFaDHDc/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0204"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0204"
* group[0].element[0].code = #A
* group[0].element[0].display = "Alias name"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #A
* group[0].element[0].target.display = "Alias name"
* group[0].element[1].code = #L
* group[0].element[1].display = "Legal name"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #L
* group[0].element[1].target.display = "Legal name"
* group[0].element[2].code = #D
* group[0].element[2].display = "Display name"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #D
* group[0].element[2].target.display = "Display name"
* group[0].element[3].code = #SL
* group[0].element[3].display = "Stock exchange listing name"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #SL
* group[0].element[3].target.display = "Stock exchange listing name"
