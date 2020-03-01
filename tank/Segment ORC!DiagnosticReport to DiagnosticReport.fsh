Instance: SegmentORC!DiagnosticReporttoDiagnosticReport
InstanceOf: ConceptMap
Title: "Segment ORC!DiagnosticReport to DiagnosticReport Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 ORC!DiagnosticReport Segment to the FHIR DiagnosticReport Resource representing that segment."
* id = "segment-orc-diagnosticreport-to-diagnosticreport"
* url = "http://hl7.org/fhir/v2-tofhir"
* version = "1.0"
* name = "Segment_ORC!DiagnosticReport_Map"
* status = #active
* experimental = true
* date = "2020-03-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "https://www.hl7.org/v2"
* targetUri = "https://www.hl7.org/fhir"
* group.element[0].code = #ORC-2
* group.element[0].display = "Placer Order Number"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #DiagnosticReport.identifier[1]
* group.element[1].code = #ORC-2
* group.element[1].display = "Placer Order Number"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #DiagnosticReport.identifier[1].type.coding.code
* group.element[1].target.display = "= \"PLAC\""
* group.element[2].code = #ORC-2
* group.element[2].display = "Placer Order Number"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #DiagnosticReport.identifier[1].type.coding.system
* group.element[2].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[3].code = #ORC-2
* group.element[3].display = "Placer Order Number"
* group.element[3].target.comment = "The Placer Order Number may be used to find the ServiceRequest with the same ID to link the ServiceRequest and the DiagnosticReport which fulfills the order.
Ideally, DiagnosticReport.identifier will be unique. Depending on how the resulting system populates the Filler ID, it may be desirable to concatenate the Filler ID with the procedure code and/or date/time to create a unique identifier."
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #DiagnosticReport.basedOn(ServiceRequest)
* group.element[3].target.comment = "The Placer Order Number may be used to find the ServiceRequest with the same ID to link the ServiceRequest and the DiagnosticReport which fulfills the order.
Ideally, DiagnosticReport.identifier will be unique. Depending on how the resulting system populates the Filler ID, it may be desirable to concatenate the Filler ID with the procedure code and/or date/time to create a unique identifier."
* group.element[4].code = #ORC-3
* group.element[4].display = "Filler Order Number"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #DiagnosticReport.identifier[2]
* group.element[5].code = #ORC-3
* group.element[5].display = "Filler Order Number"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #DiagnosticReport.identifier[2].type.coding.code
* group.element[5].target.display = "= \"FILL\""
* group.element[6].code = #ORC-3
* group.element[6].display = "Filler Order Number"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #DiagnosticReport.identifier[2].type.coding.system
* group.element[6].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[7].code = #ORC-4
* group.element[7].display = "Placer Group Number"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #DiagnosticReport.identifier[3]
* group.element[8].code = #ORC-4
* group.element[8].display = "Placer Group Number"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #DiagnosticReport.identifier[3].type.coding.code
* group.element[8].target.display = "= \"PGN\""
* group.element[9].code = #ORC-4
* group.element[9].display = "Placer Group Number"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #DiagnosticReport.identifier[3].type.coding.system
* group.element[9].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[10].code = #ORC-9
* group.element[10].display = "Date/Time of Transaction"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #DiagnosticReport.effectiveDateTime
* group.element[11].code = #ORC-16
* group.element[11].display = "Order Control Code Reason"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #DiagnosticReport.extension-event-statusReason
