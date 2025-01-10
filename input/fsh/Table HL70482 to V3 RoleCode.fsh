// HL7 Concept Map_ OrderType - Sheet1.csv
Instance: TableHL70482ToV3RoleCode
InstanceOf: ConceptMap
Title: "Table HL70482 to V3 RoleCode Map"
Usage: #definition
* title = "Table HL70482 to V3 RoleCode Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70482 to the FHIR V3 RoleCode Value Set."
* id = "table-hl70482-to-v3-rolecode"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70482-to-v3-rolecode"
* name = "TableHL70482ToV3RoleCode"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0482"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70482 to V3 RoleCode.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1uTlF1ZBSs6GIksOREp3pcBLGNphcpxOrn5NBBEiRTd4/edit#gid=0"
* group.element[0].code = #I
* group.element[0].display = "Inpatient Order"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #HOSP
* group.element[0].target.display = "Hospital"
* group.element[1].code = #O
* group.element[1].display = "Outpatient Order"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #OF
* group.element[1].target.display = "Outpatient facility"
