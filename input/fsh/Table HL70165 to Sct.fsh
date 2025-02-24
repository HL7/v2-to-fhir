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
* group.element[0].code = #CH
* group.element[0].display = "Chew"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #419747000
* group.element[0].target.display = "Chew"
* group.element[1].code = #DI
* group.element[1].display = "Dissolve"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #421682005
* group.element[1].target.display = "Dissolve"
* group.element[2].code = #DU
* group.element[2].display = "Dust"
* group.element[2].target.equivalence = #unmatched
* group.element[3].code = #IF
* group.element[3].display = "Infiltrate"
* group.element[3].target.equivalence = #unmatched
* group.element[4].code = #IS
* group.element[4].display = "Insert"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #421257003
* group.element[4].target.display = "Insert"
* group.element[5].code = #IR
* group.element[5].display = "Irrigate"
* group.element[5].target.equivalence = #unmatched
* group.element[6].code = #IVPB
* group.element[6].display = "IV Piggyback"
* group.element[6].target.equivalence = #unmatched
* group.element[7].code = #IVP
* group.element[7].display = "IV Push"
* group.element[7].target.equivalence = #unmatched
* group.element[8].code = #NB
* group.element[8].display = "Nebulized"
* group.element[8].target.equivalence = #unmatched
* group.element[9].code = #PT
* group.element[9].display = "Paint"
* group.element[9].target.equivalence = #unmatched
* group.element[10].code = #PF
* group.element[10].display = "Perfuse"
* group.element[10].target.equivalence = #unmatched
* group.element[11].code = #SH
* group.element[11].display = "Shampoo"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #420606003
* group.element[11].target.display = "Shampoo"
* group.element[12].code = #SO
* group.element[12].display = "Soak"
* group.element[12].target.equivalence = #unmatched
* group.element[13].code = #WA
* group.element[13].display = "Wash"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #422152000
* group.element[13].target.display = "Wash"
* group.element[14].code = #WI
* group.element[14].display = "Wipe"
* group.element[14].target.equivalence = #unmatched
