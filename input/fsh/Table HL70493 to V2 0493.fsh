// HL7 Concept Map_ SpecimenCondition - Sheet1.csv
Instance: TableHL70493ToV20493
InstanceOf: ConceptMap
Title: "Table HL70493 to V2 0493 Map"
Usage: #definition
* title = "Table HL70493 to V2 0493 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70493 to the FHIR V2 0493 Value Set."
* id = "table-hl70493-to-v2-0493"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70493-to-v2-0493"
* name = "TableHL70493ToV20493"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0493"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70493 to V2 0493.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1U7r8bjIN7VdzCVTnWOpxSSTbiCkuwSOqdlUuM6yrMk4/edit?gid=0#gid=0"
* group.element[0].code = #AUT
* group.element[0].display = "Autolyzed"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #AUT
* group.element[0].target.display = "Autolyzed"
* group.element[1].code = #CLOT
* group.element[1].display = "Clotted"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #CLOT
* group.element[1].target.display = "Clotted"
* group.element[2].code = #CON
* group.element[2].display = "Contaminated"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #CON
* group.element[2].target.display = "Contaminated"
* group.element[3].code = #COOL
* group.element[3].display = "Cool"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #COOL
* group.element[3].target.display = "Cool"
* group.element[4].code = #FROZ
* group.element[4].display = "Frozen"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #FROZ
* group.element[4].target.display = "Frozen"
* group.element[5].code = #HEM
* group.element[5].display = "Hemolyzed"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #HEM
* group.element[5].target.display = "Hemolyzed"
* group.element[6].code = #LIVE
* group.element[6].display = "Live"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #LIVE
* group.element[6].target.display = "Live"
* group.element[7].code = #ROOM
* group.element[7].display = "Room temperature"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #ROOM
* group.element[7].target.display = "Room temperature"
* group.element[8].code = #SNR
* group.element[8].display = "Sample not received"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #SNR
* group.element[8].target.display = "Sample not received"
* group.element[9].code = #CFU
* group.element[9].display = "Centrifuged"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #CFU
* group.element[9].target.display = "Centrifuged"
