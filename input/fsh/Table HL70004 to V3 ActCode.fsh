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
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70004 to V3 ActCode.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1T8Q6rSolB8lh56sXr3SVZ6AAPQGqD8D0zCoxz2dzdkM/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0004"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* group[0].element[0].code = #E
* group[0].element[0].display = "Emergency"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #EMER
* group[0].element[1].code = #I
* group[0].element[1].display = "Inpatient"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #IMP
* group[0].element[2].code = #O
* group[0].element[2].display = "Outpatient"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #AMB
* group[0].element[3].code = #P
* group[0].element[3].display = "Preadmit"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #PRENC
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0004"
* group[1].target = "http://terminology.hl7.org/CodeSystem/v2-0004"
* group[1].element[0].code = #R
* group[1].element[0].display = "Recurring patient"
* group[1].element[0].target.equivalence = #equivalent
* group[1].element[0].target.code = #R
* group[1].element[1].code = #B
* group[1].element[1].display = "Obstetrics"
* group[1].element[1].target.equivalence = #equivalent
* group[1].element[1].target.code = #B
* group[1].element[2].code = #C
* group[1].element[2].display = "Commercial Account"
* group[1].element[2].target.equivalence = #equivalent
* group[1].element[2].target.code = #C
* group[1].element[3].code = #N
* group[1].element[3].display = "Not Applicable"
* group[1].element[3].target.equivalence = #equivalent
* group[1].element[3].target.code = #N
* group[1].element[4].code = #U
* group[1].element[4].display = "Unknown"
* group[1].element[4].target.equivalence = #equivalent
* group[1].element[4].target.code = #U
