// HL7 Concept Map_ BedStatus - Sheet1.csv
Instance: TableHL70116ToV20116
InstanceOf: ConceptMap
Title: "Table HL70116 to V2 0116 Map"
Usage: #definition
* title = "Table HL70116 to V2 0116 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70116 to the FHIR V2 0116 Value Set."
* id = "table-hl70116-to-v2-0116"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70116-to-v2-0116"
* name = "TableHL70116ToV20116"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0116"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0116"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70116 to V2 0116.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1xkkG9vSa4C5vAbTLvPT0BHYBWEiOtus8BHVrr7fU1xc/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0116"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0116"
* group[0].element[0].code = #C
* group[0].element[0].display = "Closed"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #C
* group[0].element[0].target.display = "Closed"
* group[0].element[1].code = #H
* group[0].element[1].display = "Housekeeping"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #H
* group[0].element[1].target.display = "Housekeeping"
* group[0].element[2].code = #O
* group[0].element[2].display = "Occupied"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #O
* group[0].element[2].target.display = "Occupied"
* group[0].element[3].code = #U
* group[0].element[3].display = "Unoccupied"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #U
* group[0].element[3].target.display = "Unoccupied"
* group[0].element[4].code = #K
* group[0].element[4].display = "Contaminated"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #K
* group[0].element[4].target.display = "Contaminated"
* group[0].element[5].code = #I
* group[0].element[5].display = "Isolated"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #I
* group[0].element[5].target.display = "Isolated"
