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
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0493"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70493 to V2 0493.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1U7r8bjIN7VdzCVTnWOpxSSTbiCkuwSOqdlUuM6yrMk4/edit?gid=0#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0493"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0493"
* group[0].element[0].code = #AUT
* group[0].element[0].display = "Autolyzed"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #AUT
* group[0].element[0].target.display = "Autolyzed"
* group[0].element[1].code = #CLOT
* group[0].element[1].display = "Clotted"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #CLOT
* group[0].element[1].target.display = "Clotted"
* group[0].element[2].code = #CON
* group[0].element[2].display = "Contaminated"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #CON
* group[0].element[2].target.display = "Contaminated"
* group[0].element[3].code = #COOL
* group[0].element[3].display = "Cool"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #COOL
* group[0].element[3].target.display = "Cool"
* group[0].element[4].code = #FROZ
* group[0].element[4].display = "Frozen"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #FROZ
* group[0].element[4].target.display = "Frozen"
* group[0].element[5].code = #HEM
* group[0].element[5].display = "Hemolyzed"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #HEM
* group[0].element[5].target.display = "Hemolyzed"
* group[0].element[6].code = #LIVE
* group[0].element[6].display = "Live"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #LIVE
* group[0].element[6].target.display = "Live"
* group[0].element[7].code = #ROOM
* group[0].element[7].display = "Room temperature"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #ROOM
* group[0].element[7].target.display = "Room temperature"
* group[0].element[8].code = #SNR
* group[0].element[8].display = "Sample not received"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #SNR
* group[0].element[8].target.display = "Sample not received"
* group[0].element[9].code = #CFU
* group[0].element[9].display = "Centrifuged"
* group[0].element[9].target.equivalence = #equivalent
* group[0].element[9].target.code = #CFU
* group[0].element[9].target.display = "Centrifuged"
