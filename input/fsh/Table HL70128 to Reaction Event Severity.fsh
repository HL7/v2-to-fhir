// HL7 Concept Map_ AllergySeverity[AllergyIntolerance.reaction.severity] - Sheet1.csv
Instance: TableHL70128ToReactionEventSeverity
InstanceOf: ConceptMap
Title: "Table HL70128 to Reaction Event Severity Map"
Usage: #definition
* title = "Table HL70128 to Reaction Event Severity Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70128 to the FHIR Reaction Event Severity Value Set."
* id = "table-hl70128-to-reaction-event-severity"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70128-to-reaction-event-severity"
* name = "TableHL70128ToReactionEventSeverity"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0128"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70128 to Reaction Event Severity.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1sMIR0cGVDt34suaYtk-yH0DA6lVdpV3yrthqOcZLOKg/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0128"
* group[0].target = "http://hl7.org/fhir/reaction-event-severity"
* group[0].element[0].code = #SV
* group[0].element[0].display = "Severe"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #severe
* group[0].element[0].target.display = "Severe"
* group[0].element[1].code = #MO
* group[0].element[1].display = "Moderate"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #moderate
* group[0].element[1].target.display = "Moderate"
* group[0].element[2].code = #MI
* group[0].element[2].display = "Mild"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #mild
* group[0].element[2].target.display = "Mild"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0128"
* group[1].element[0].code = #U
* group[1].element[0].display = "Unknown"
* group[1].element[0].target.equivalence = #unmatched
