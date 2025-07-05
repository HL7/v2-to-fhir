// HL7 Concept Map_ AdministrationMethod - Sheet1.csv
Instance: TableHL70165ToSct
InstanceOf: ConceptMap
Title: "Table HL70165 to Sct Map"
Usage: #definition
* title = "Table HL70165 to Sct Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70165 to the FHIR Sct Value Set."
* id = "table-hl70165-to-sct"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70165-to-sct"
* name = "TableHL70165ToSct"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0165"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70165 to Sct.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1hCWNjv3S_VkWTC5U7QFbWJIvF-3sm1Vlj12rFkMcPGc/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0165"
* group[0].target = "http://snomed.info/sct"
* group[0].element[0].code = #CH
* group[0].element[0].display = "Chew"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #419747000
* group[0].element[0].target.display = "Chew"
* group[0].element[1].code = #DI
* group[0].element[1].display = "Dissolve"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #421682005
* group[0].element[1].target.display = "Dissolve"
* group[0].element[2].code = #IS
* group[0].element[2].display = "Insert"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #421257003
* group[0].element[2].target.display = "Insert"
* group[0].element[3].code = #SH
* group[0].element[3].display = "Shampoo"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #420606003
* group[0].element[3].target.display = "Shampoo"
* group[0].element[4].code = #WA
* group[0].element[4].display = "Wash"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #422152000
* group[0].element[4].target.display = "Wash"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0165"
* group[1].element[0].code = #DU
* group[1].element[0].display = "Dust"
* group[1].element[0].target.equivalence = #unmatched
* group[1].element[1].code = #IF
* group[1].element[1].display = "Infiltrate"
* group[1].element[1].target.equivalence = #unmatched
* group[1].element[2].code = #IR
* group[1].element[2].display = "Irrigate"
* group[1].element[2].target.equivalence = #unmatched
* group[1].element[3].code = #IVPB
* group[1].element[3].display = "IV Piggyback"
* group[1].element[3].target.equivalence = #unmatched
* group[1].element[4].code = #IVP
* group[1].element[4].display = "IV Push"
* group[1].element[4].target.equivalence = #unmatched
* group[1].element[5].code = #NB
* group[1].element[5].display = "Nebulized"
* group[1].element[5].target.equivalence = #unmatched
* group[1].element[6].code = #PT
* group[1].element[6].display = "Paint"
* group[1].element[6].target.equivalence = #unmatched
* group[1].element[7].code = #PF
* group[1].element[7].display = "Perfuse"
* group[1].element[7].target.equivalence = #unmatched
* group[1].element[8].code = #SO
* group[1].element[8].display = "Soak"
* group[1].element[8].target.equivalence = #unmatched
* group[1].element[9].code = #WI
* group[1].element[9].display = "Wipe"
* group[1].element[9].target.equivalence = #unmatched
