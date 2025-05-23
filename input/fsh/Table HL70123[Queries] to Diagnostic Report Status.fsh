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
* targetUri = "http://hl7.org/fhir/ValueSet/diagnostic-report-status"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70123[Queries] to Diagnostic Report Status.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1PZzztfsx_yRfvrl3i9on8Tc-yXZCzbK1wnVgts-SxSQ/edit#gid=0"
* group.element[0].code = #O
* group.element[0].display = "Order received; specimen not yet received"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #registered
* group.element[0].target.display = "Registered"
* group.element[1].code = #I
* group.element[1].display = "No results available; specimen received, procedure incomplete"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #registered
* group.element[1].target.display = "Registered"
* group.element[2].code = #S
* group.element[2].display = "No results available; procedure scheduled,but not done"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #registered
* group.element[2].target.display = "Registered"
* group.element[3].code = #A
* group.element[3].display = "Some, but not all, results available"
* group.element[3].target.equivalence = #unmatched
* group.element[4].code = #P
* group.element[4].display = "Preliminary: A verified early result is available, final results not yet obtained"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #preliminary
* group.element[4].target.display = "Preliminary"
* group.element[5].code = #C
* group.element[5].display = "Correction to results"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #corrected
* group.element[5].target.display = "Corrected"
* group.element[6].code = #R
* group.element[6].display = "Results stored; not yet verified"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #partial
* group.element[6].target.display = "Partial"
* group.element[7].code = #F
* group.element[7].display = "Final results; results stored and verified.Can only be changed with a corrected result."
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #final
* group.element[7].target.display = "Final"
* group.element[8].code = #X
* group.element[8].display = "No results available; Order canceled."
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #cancelled
* group.element[8].target.display = "Cancelled"
* group.element[9].code = #Y
* group.element[9].display = "No order on record for this test.(Used only on queries)"
* group.element[9].target.equivalence = #unmatched
* group.element[10].code = #Z
* group.element[10].display = "No record of this patient. (Used only on queries)"
* group.element[10].target.equivalence = #unmatched
* group.element[11].code = #M
* group.element[11].display = "Corrected, not final"
* group.element[11].target.equivalence = #unmatched
* group.element[12].code = #N
* group.element[12].display = "Procedure completed, results pending"
* group.element[12].target.equivalence = #unmatched
