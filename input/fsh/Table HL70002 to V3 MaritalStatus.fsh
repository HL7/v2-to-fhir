// HL7 Concept Map_ MaritalStatus - Sheet1.csv
Instance: TableHL70002ToV3MaritalStatus
InstanceOf: ConceptMap
Title: "Table HL70002 to V3 MaritalStatus Map"
Usage: #definition
* title = "Table HL70002 to V3 MaritalStatus Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70002 to the FHIR V3 MaritalStatus Value Set."
* id = "table-hl70002-to-v3-maritalstatus"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70002-to-v3-maritalstatus"
* name = "TableHL70002ToV3MaritalStatus"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0002"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70002 to V3 MaritalStatus.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1HfYIHuf_CVC28fRhy3wgGSRZ5XtWKSERNNrcR45wSkA/edit#gid=0"
* group.element[0].code = #A
* group.element[0].display = "Separated"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #L
* group.element[0].target.display = "Legally Separated"
* group.element[1].code = #D
* group.element[1].display = "Divorced"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #D
* group.element[1].target.display = "Divorced"
* group.element[2].code = #M
* group.element[2].display = "Married"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #M
* group.element[2].target.display = "Married"
* group.element[3].code = #S
* group.element[3].display = "Single"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #S
* group.element[3].target.display = "Never Married"
* group.element[4].code = #W
* group.element[4].display = "Widowed"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #W
* group.element[4].target.display = "Widowed"
* group.element[5].code = #C
* group.element[5].display = "Common law"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #C
* group.element[5].target.display = "Common Law"
* group.element[6].code = #G
* group.element[6].display = "Living together"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #T
* group.element[6].target.display = "Domestic partner"
* group.element[7].code = #P
* group.element[7].display = "Domestic partner"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #T
* group.element[7].target.display = "Domestic partner"
* group.element[8].code = #R
* group.element[8].display = "Registered domestic partner"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #T
* group.element[8].target.display = "Domestic partner"
* group.element[9].code = #E
* group.element[9].display = "Legally Separated"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #L
* group.element[9].target.display = "Legally Separated"
* group.element[10].code = #N
* group.element[10].display = "Annulled"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #A
* group.element[10].target.display = "Annulled"
* group.element[11].code = #I
* group.element[11].display = "Interlocutory"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #I
* group.element[11].target.display = "Interlocutory"
* group.element[12].code = #B
* group.element[12].display = "Unmarried"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #U
* group.element[12].target.display = "unmarried"
* group.element[13].code = #U
* group.element[13].display = "Unknown"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #UNK
* group.element[13].target.display = "Unknown"
* group.element[14].code = #O
* group.element[14].display = "Other"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #OTH
* group.element[14].target.display = "Other"
* group.element[15].code = #T
* group.element[15].display = "Unreported"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #NAVU
* group.element[15].target.display = "Not available"
