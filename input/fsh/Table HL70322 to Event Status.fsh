// HL7 Concept Map_ CompletionStatus - Sheet1.csv
Instance: TableHL70322ToEventStatus
InstanceOf: ConceptMap
Title: "Table HL70322 to Event Status Map"
Usage: #definition
* title = "Table HL70322 to Event Status Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70322 to the FHIR Event Status Value Set."
* id = "table-hl70322-to-event-status"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70322-to-event-status"
* name = "TableHL70322ToEventStatus"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0322"
* targetUri = "http://hl7.org/fhir/ValueSet/event-status"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70322 to Event Status.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1H1xwOSKaUkI5J7JUPiWR01WWFOnEQzwxwGLizknf0V4/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0322"
* group[0].target = "http://hl7.org/fhir/event-status"
* group[0].element[0].code = #CP
* group[0].element[0].display = "Complete"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #completed
* group[0].element[0].target.display = "Completed"
* group[0].element[1].code = #RE
* group[0].element[1].display = "Refused"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #not-done
* group[0].element[1].target.display = "Not Done"
* group[0].element[2].code = #NA
* group[0].element[2].display = "Not Administered"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #not-done
* group[0].element[2].target.display = "Not Done"
* group[0].element[3].code = #PA
* group[0].element[3].display = "Partially Administered"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #completed
* group[0].element[3].target.display = "Completed"
