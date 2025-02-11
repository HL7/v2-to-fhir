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
* targetUri = "http://hl7.org/fhir/ValueSet/request-priority"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70485 to Request Priority.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1fGyQTjdnP2McZispMSnCjbNoCkcPvw9F4tLIw-5AXJU/edit#gid=0"
* group.element[0].code = #S
* group.element[0].display = "Stat"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #stat
* group.element[0].target.display = "STAT"
* group.element[1].code = #A
* group.element[1].display = "ASAP"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #asap
* group.element[1].target.display = "ASAP"
* group.element[2].code = #R
* group.element[2].display = "Routine"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #routine
* group.element[2].target.display = "Routine"
* group.element[3].code = #P
* group.element[3].display = "Preop"
* group.element[3].target.equivalence = #unmatched
* group.element[4].code = #C
* group.element[4].display = "Callback"
* group.element[4].target.equivalence = #unmatched
* group.element[5].code = #T
* group.element[5].display = "Timing critical"
* group.element[5].target.equivalence = #unmatched
* group.element[6].code = #TS<integer>
* group.element[6].display = "Timing critical within <integer> seconds."
* group.element[6].target.equivalence = #unmatched
* group.element[7].code = #TM<integer>
* group.element[7].display = "Timing critical within <integer> minutes."
* group.element[7].target.equivalence = #unmatched
* group.element[8].code = #TH<integer>
* group.element[8].display = "Timing critical within <integer> hours."
* group.element[8].target.equivalence = #unmatched
* group.element[9].code = #TD<integer>
* group.element[9].display = "Timing critical within <integer> days."
* group.element[9].target.equivalence = #unmatched
* group.element[10].code = #TW<integer>
* group.element[10].display = "Timing critical within <integer> weeks."
* group.element[10].target.equivalence = #unmatched
* group.element[11].code = #TL<integer>
* group.element[11].display = "Timing critical within <integer> months."
* group.element[11].target.equivalence = #unmatched
* group.element[12].code = #PRN
* group.element[12].display = "As needed"
* group.element[12].target.equivalence = #unmatched
