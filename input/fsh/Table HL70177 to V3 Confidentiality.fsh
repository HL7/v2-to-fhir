// HL7 Concept Map_ ConfidentialityCode - Sheet1.csv
Instance: TableHL70177ToV3Confidentiality
InstanceOf: ConceptMap
Title: "Table HL70177 to V3 Confidentiality Map"
Usage: #definition
* title = "Table HL70177 to V3 Confidentiality Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70177 to the FHIR V3 Confidentiality Value Set."
* id = "table-hl70177-to-v3-confidentiality"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70177-to-v3-confidentiality"
* name = "TableHL70177ToV3Confidentiality"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0177"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70177 to V3 Confidentiality.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1f8yszYhQYL0muat4Hp3lF5dB9DVPsMJ1BGQn3KC84PQ/edit?gid=0#gid=0"
* group.element[0].code = #V
* group.element[0].display = "Very restricted"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #V
* group.element[0].target.display = "very restricted"
* group.element[1].code = #R
* group.element[1].display = "Restricted"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #R
* group.element[1].target.display = "restricted"
* group.element[2].code = #U
* group.element[2].display = "Usual control"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #U
* group.element[2].target.display = "Usual control"
* group.element[3].code = #EMP
* group.element[3].display = "Employee"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #EMP
* group.element[3].target.display = "employee information sensitivity"
* group.element[4].code = #UWM
* group.element[4].display = "Unwed mother"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #UWM
* group.element[4].target.display = "Unwed mother"
* group.element[5].code = #VIP
* group.element[5].display = "Very important person or celebrity"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #VIP
* group.element[5].target.display = "Very important person or celebrity"
* group.element[6].code = #PSY
* group.element[6].display = "Psychiatric patient"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #PSY
* group.element[6].target.display = "psychiatry disorder information sensitivity"
* group.element[7].code = #AID
* group.element[7].display = "AIDS patient"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #HIV
* group.element[7].target.display = "HIV/AIDS information sensitivity"
* group.element[8].code = #HIV
* group.element[8].display = "HIV(+) patient"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #HIV
* group.element[8].target.display = "HIV/AIDS information sensitivity"
* group.element[9].code = #ETH
* group.element[9].display = "Alcohol/drug treatment patient"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #ETHUD
* group.element[9].target.display = "alcohol use disorder information sensitivity"
