// HL7 Concept Map_ PatientClass[EncounterClass] - Sheet1.csv
Instance: TableHL70004ToV3ActCode
InstanceOf: ConceptMap
Title: "Table HL70004 to V3 ActCode Map"
Usage: #definition
* title = "Table HL70004 to V3 ActCode Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70004 to the FHIR V3 ActCode Value Set."
* id = "table-hl70004-to-v3-actcode"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70004-to-v3-actcode"
* name = "TableHL70004ToV3ActCode"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0004"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70004 to V3 ActCode.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1T8Q6rSolB8lh56sXr3SVZ6AAPQGqD8D0zCoxz2dzdkM/edit#gid=0"
* group.element[0].code = #E
* group.element[0].display = "Emergency"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #EMER
* group.element[1].code = #I
* group.element[1].display = "Inpatient"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #IMP
* group.element[2].code = #O
* group.element[2].display = "Outpatient"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #AMB
* group.element[3].code = #P
* group.element[3].display = "Preadmit"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #PRENC
* group.element[4].code = #R
* group.element[4].display = "Recurring patient"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #R
* group.element[5].code = #B
* group.element[5].display = "Obstetrics"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #B
* group.element[6].code = #C
* group.element[6].display = "Commercial Account"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #C
* group.element[7].code = #N
* group.element[7].display = "Not Applicable"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #N
* group.element[8].code = #U
* group.element[8].display = "Unknown"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #U
