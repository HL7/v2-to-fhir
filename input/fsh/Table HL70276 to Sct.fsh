// HL7 Concept Map_ AppointmentReasonCodes - Sheet1.csv
Instance: TableHL70276ToSct
InstanceOf: ConceptMap
Title: "Table HL70276 to Sct Map"
Usage: #definition
* title = "Table HL70276 to Sct Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70276 to the FHIR Sct Value Set."
* id = "table-hl70276-to-sct"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70276-to-sct"
* name = "TableHL70276ToSct"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0276"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70276 to Sct.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/13B4B6YFRgukI2tipC7QOJ1J8i4iNJ2aYzQRuirCyFBg/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0276"
* group[0].target = "http://snomed.info/sct"
* group[0].element[0].code = #ROUTINE
* group[0].element[0].display = "Routine appointment - default if not valued"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #3780001
* group[0].element[0].target.display = "Routine patient disposition, no follow-up planned"
* group[0].element[1].code = #CHECKUP
* group[0].element[1].display = "A routine check-up, such as an annual physical"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #866149003
* group[0].element[1].target.display = "Annual visit (procedure)"
* group[0].element[2].code = #FOLLOWUP
* group[0].element[2].display = "A follow up visit from a previous appointment"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #185389009
* group[0].element[2].target.display = "Follow-up visit (procedure)"
* group[0].element[3].code = #EMERGENCY
* group[0].element[3].display = "Emergency appointment"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #373110003
* group[0].element[3].target.display = "Emergency procedure (procedure)"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0276"
* group[1].element[0].code = #WALKIN
* group[1].element[0].display = "A previously unscheduled walk-in visit"
* group[1].element[0].target.equivalence = #unmatched
