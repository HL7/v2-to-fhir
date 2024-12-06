// HL7 Concept Map_ BedStatus - Sheet1.csv
Instance: TableHL70116ToV20116
InstanceOf: ConceptMap
Title: "Table HL70116 to V2 0116 Map"
* title = "Table HL70116 to V2 0116 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70116 to the FHIR V2 0116 Value Set."
* id = "table-hl70116-to-v2-0116"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70116-to-v2-0116"
* version = "1.0"
* name = "TableHL70116ToV20116"
* status = #active
* experimental = true
* date = "2024-12-06"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70116"
* targetUri = "http://terminology.hl7.org/CodeSystem/v2-0116"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70116 to V2 0116.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1xkkG9vSa4C5vAbTLvPT0BHYBWEiOtus8BHVrr7fU1xc/edit#gid=0"
* group.element[0].code = #C
* group.element[0].display = "Closed"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #C
* group.element[0].target.display = "Closed"
* group.element[1].code = #H
* group.element[1].display = "Housekeeping"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #H
* group.element[1].target.display = "Housekeeping"
* group.element[2].code = #O
* group.element[2].display = "Occupied"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #O
* group.element[2].target.display = "Occupied"
* group.element[3].code = #U
* group.element[3].display = "Unoccupied"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #U
* group.element[3].target.display = "Unoccupied"
* group.element[4].code = #K
* group.element[4].display = "Contaminated"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #K
* group.element[4].target.display = "Contaminated"
* group.element[5].code = #I
* group.element[5].display = "Isolated"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #I
* group.element[5].target.display = "Isolated"
