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
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70002 to V3 MaritalStatus.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1HfYIHuf_CVC28fRhy3wgGSRZ5XtWKSERNNrcR45wSkA/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0002"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* group[0].element[0].code = #A
* group[0].element[0].display = "Separated"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #L
* group[0].element[0].target.display = "Legally Separated"
* group[0].element[1].code = #D
* group[0].element[1].display = "Divorced"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #D
* group[0].element[1].target.display = "Divorced"
* group[0].element[2].code = #M
* group[0].element[2].display = "Married"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #M
* group[0].element[2].target.display = "Married"
* group[0].element[3].code = #S
* group[0].element[3].display = "Single"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #S
* group[0].element[3].target.display = "Never Married"
* group[0].element[4].code = #W
* group[0].element[4].display = "Widowed"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #W
* group[0].element[4].target.display = "Widowed"
* group[0].element[5].code = #C
* group[0].element[5].display = "Common law"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #C
* group[0].element[5].target.display = "Common Law"
* group[0].element[6].code = #G
* group[0].element[6].display = "Living together"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #T
* group[0].element[6].target.display = "Domestic partner"
* group[0].element[7].code = #P
* group[0].element[7].display = "Domestic partner"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #T
* group[0].element[7].target.display = "Domestic partner"
* group[0].element[8].code = #R
* group[0].element[8].display = "Registered domestic partner"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #T
* group[0].element[8].target.display = "Domestic partner"
* group[0].element[9].code = #E
* group[0].element[9].display = "Legally Separated"
* group[0].element[9].target.equivalence = #equivalent
* group[0].element[9].target.code = #L
* group[0].element[9].target.display = "Legally Separated"
* group[0].element[10].code = #N
* group[0].element[10].display = "Annulled"
* group[0].element[10].target.equivalence = #equivalent
* group[0].element[10].target.code = #A
* group[0].element[10].target.display = "Annulled"
* group[0].element[11].code = #I
* group[0].element[11].display = "Interlocutory"
* group[0].element[11].target.equivalence = #equivalent
* group[0].element[11].target.code = #I
* group[0].element[11].target.display = "Interlocutory"
* group[0].element[12].code = #B
* group[0].element[12].display = "Unmarried"
* group[0].element[12].target.equivalence = #equivalent
* group[0].element[12].target.code = #U
* group[0].element[12].target.display = "unmarried"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0002"
* group[1].target = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[1].element[0].code = #U
* group[1].element[0].display = "Unknown"
* group[1].element[0].target.equivalence = #equivalent
* group[1].element[0].target.code = #UNK
* group[1].element[0].target.display = "Unknown"
* group[1].element[1].code = #O
* group[1].element[1].display = "Other"
* group[1].element[1].target.equivalence = #equivalent
* group[1].element[1].target.code = #OTH
* group[1].element[1].target.display = "Other"
* group[1].element[2].code = #T
* group[1].element[2].display = "Unreported"
* group[1].element[2].target.equivalence = #equivalent
* group[1].element[2].target.code = #NAVU
* group[1].element[2].target.display = "Not available"
