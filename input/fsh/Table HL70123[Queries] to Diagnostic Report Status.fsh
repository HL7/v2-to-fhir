// HL7 Concept Map_ ResultStatus[Non-Queries] - Sheet1.csv
Instance: TableHL70123QueriesToDiagnosticReportStatus
InstanceOf: ConceptMap
Title: "Table HL70123 [Queries] to Diagnostic Report Status Map"
Usage: #definition
* title = "Table HL70123 [Queries] to Diagnostic Report Status Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70123 to the FHIR Diagnostic Report Status Value Set."
* id = "table-hl70123-queries-to-diagnostic-report-status"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70123-queries-to-diagnostic-report-status"
* name = "TableHL70123QueriesToDiagnosticReportStatus"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0123"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70123[Queries] to Diagnostic Report Status.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1PZzztfsx_yRfvrl3i9on8Tc-yXZCzbK1wnVgts-SxSQ/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0123"
* group[0].target = "http://hl7.org/fhir/diagnostic-report-status"
* group[0].element[0].code = #O
* group[0].element[0].display = "Order received; specimen not yet received"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #registered
* group[0].element[0].target.display = "Registered"
* group[0].element[1].code = #I
* group[0].element[1].display = "No results available; specimen received, procedure incomplete"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #registered
* group[0].element[1].target.display = "Registered"
* group[0].element[2].code = #S
* group[0].element[2].display = "No results available; procedure scheduled, but not done"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #registered
* group[0].element[2].target.display = "Registered"
* group[0].element[3].code = #P
* group[0].element[3].display = "Preliminary"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #preliminary
* group[0].element[3].target.display = "Preliminary"
* group[0].element[4].code = #C
* group[0].element[4].display = "Corrected, final"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #corrected
* group[0].element[4].target.display = "Corrected"
* group[0].element[5].code = #R
* group[0].element[5].display = "Results stored; not yet verified"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #partial
* group[0].element[5].target.display = "Partial"
* group[0].element[6].code = #F
* group[0].element[6].display = "Final results"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #final
* group[0].element[6].target.display = "Final"
* group[0].element[7].code = #X
* group[0].element[7].display = "No results available; Order canceled"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #cancelled
* group[0].element[7].target.display = "Cancelled"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0123"
* group[1].element[0].code = #A
* group[1].element[0].display = "Some, but not all, results available"
* group[1].element[0].target.equivalence = #unmatched
* group[1].element[1].code = #Y
* group[1].element[1].display = "No order on record for this test"
* group[1].element[1].target.equivalence = #unmatched
* group[1].element[2].code = #Z
* group[1].element[2].display = "No record of this patient"
* group[1].element[2].target.equivalence = #unmatched
* group[1].element[3].code = #M
* group[1].element[3].display = "Corrected, not final"
* group[1].element[3].target.equivalence = #unmatched
* group[1].element[4].code = #N
* group[1].element[4].display = "Procedure completed, results pending"
* group[1].element[4].target.equivalence = #unmatched
