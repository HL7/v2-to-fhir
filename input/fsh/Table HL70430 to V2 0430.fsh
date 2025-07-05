// HL7 Concept Map_ ModeOfArrivalCode - Sheet1.csv
Instance: TableHL70430ToV20430
InstanceOf: ConceptMap
Title: "Table HL70430 to V2 0430 Map"
Usage: #definition
* title = "Table HL70430 to V2 0430 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70430 to the FHIR V2 0430 Value Set."
* id = "table-hl70430-to-v2-0430"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70430-to-v2-0430"
* name = "TableHL70430ToV20430"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0430"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0430"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70430 to V2 0430.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1cq-jINNYePVc6dACBzBbFzTv7ry8e6w8ZXgHmmW7WeE/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0430"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0430"
* group[0].element[0].code = #A
* group[0].element[0].display = "Ambulance"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #A
* group[0].element[0].target.display = "Ambulance"
* group[0].element[1].code = #C
* group[0].element[1].display = "Car"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #C
* group[0].element[1].target.display = "Car"
* group[0].element[2].code = #F
* group[0].element[2].display = "On foot"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #F
* group[0].element[2].target.display = "On foot"
* group[0].element[3].code = #H
* group[0].element[3].display = "Helicopter"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #H
* group[0].element[3].target.display = "Helicopter"
* group[0].element[4].code = #P
* group[0].element[4].display = "Public Transport"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #P
* group[0].element[4].target.display = "Public Transport"
* group[0].element[5].code = #O
* group[0].element[5].display = "Other"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #O
* group[0].element[5].target.display = "Other"
* group[0].element[6].code = #U
* group[0].element[6].display = "Unknown"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #U
* group[0].element[6].target.display = "Unknown"
