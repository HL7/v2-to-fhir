// HL7 Concept Map_ PreferredMethodOfContact - Sheet1.csv
Instance: TableHL70185ToV20185
InstanceOf: ConceptMap
Title: "Table HL70185 to V2 0185 Map"
Usage: #definition
* title = "Table HL70185 to V2 0185 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70185 to the FHIR V2 0185 Value Set."
* id = "table-hl70185-to-v2-0185"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70185-to-v2-0185"
* name = "TableHL70185ToV20185"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0185"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0185"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70185 to V2 0185.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1L_AfyPgHtp2gKwuLLUtqYwT7FZPpqtfQaxaJAkLqj04/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0185"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0185"
* group[0].element[0].code = #B
* group[0].element[0].display = "Beeper Number"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #B
* group[0].element[0].target.display = "Beeper Number"
* group[0].element[1].code = #C
* group[0].element[1].display = "Cellular Phone Number"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #C
* group[0].element[1].target.display = "Cellular Phone Number"
* group[0].element[2].code = #E
* group[0].element[2].display = "E-Mail Address (for backward compatibility)"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #E
* group[0].element[2].target.display = "E-Mail Address (for backward compatibility)"
* group[0].element[3].code = #F
* group[0].element[3].display = "FAX Number"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #F
* group[0].element[3].target.display = "FAX Number"
* group[0].element[4].code = #H
* group[0].element[4].display = "Home Phone Number"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #H
* group[0].element[4].target.display = "Home Phone Number"
* group[0].element[5].code = #O
* group[0].element[5].display = "Office Phone Number"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #O
* group[0].element[5].target.display = "Office Phone Number"
