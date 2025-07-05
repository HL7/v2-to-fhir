// HL7 Concept Map_ ExtendedPriorityCodes - Sheet1.csv
Instance: TableHL70485ToRequestPriority
InstanceOf: ConceptMap
Title: "Table HL70485 to Request Priority Map"
Usage: #definition
* title = "Table HL70485 to Request Priority Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70485 to the FHIR Request Priority Value Set."
* id = "table-hl70485-to-request-priority"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70485-to-request-priority"
* name = "TableHL70485ToRequestPriority"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0485"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70485 to Request Priority.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1fGyQTjdnP2McZispMSnCjbNoCkcPvw9F4tLIw-5AXJU/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0485"
* group[0].target = "http://hl7.org/fhir/request-priority"
* group[0].element[0].code = #S
* group[0].element[0].display = "Stat"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #stat
* group[0].element[0].target.display = "STAT"
* group[0].element[1].code = #A
* group[0].element[1].display = "ASAP"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #asap
* group[0].element[1].target.display = "ASAP"
* group[0].element[2].code = #R
* group[0].element[2].display = "Routine"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #routine
* group[0].element[2].target.display = "Routine"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0485"
* group[1].element[0].code = #P
* group[1].element[0].display = "Preop"
* group[1].element[0].target.equivalence = #unmatched
* group[1].element[1].code = #C
* group[1].element[1].display = "Callback"
* group[1].element[1].target.equivalence = #unmatched
* group[1].element[2].code = #T
* group[1].element[2].display = "Timing critical"
* group[1].element[2].target.equivalence = #unmatched
* group[1].element[3].code = #TS<integer>
* group[1].element[3].display = "Timing critical within <integer> seconds."
* group[1].element[3].target.equivalence = #unmatched
* group[1].element[4].code = #TM<integer>
* group[1].element[4].display = "Timing critical within <integer> minutes."
* group[1].element[4].target.equivalence = #unmatched
* group[1].element[5].code = #TH<integer>
* group[1].element[5].display = "Timing critical within <integer> hours."
* group[1].element[5].target.equivalence = #unmatched
* group[1].element[6].code = #TD<integer>
* group[1].element[6].display = "Timing critical within <integer> days."
* group[1].element[6].target.equivalence = #unmatched
* group[1].element[7].code = #TW<integer>
* group[1].element[7].display = "Timing critical within <integer> weeks."
* group[1].element[7].target.equivalence = #unmatched
* group[1].element[8].code = #TL<integer>
* group[1].element[8].display = "Timing critical within <integer> months."
* group[1].element[8].target.equivalence = #unmatched
* group[1].element[9].code = #PRN
* group[1].element[9].display = "As needed"
* group[1].element[9].target.equivalence = #unmatched
