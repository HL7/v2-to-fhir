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
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70177 to V3 Confidentiality.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1f8yszYhQYL0muat4Hp3lF5dB9DVPsMJ1BGQn3KC84PQ/edit?gid=0#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0177"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* group[0].element[0].code = #V
* group[0].element[0].display = "Very restricted"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #V
* group[0].element[0].target.display = "very restricted"
* group[0].element[1].code = #R
* group[0].element[1].display = "Restricted"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #R
* group[0].element[1].target.display = "restricted"
* group[0].element[2].code = #PSY
* group[0].element[2].display = "Psychiatric patient"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #PSY
* group[0].element[2].target.display = "psychiatry relate"
* group[0].element[3].code = #AID
* group[0].element[3].display = "AIDS patient"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #HIV
* group[0].element[3].target.display = "HIV related"
* group[0].element[4].code = #HIV
* group[0].element[4].display = "HIV(+) patient"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #HIV
* group[0].element[4].target.display = "HIV related"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0177"
* group[1].target = "http://terminology.hl7.org/CodeSystem/v2-0177"
* group[1].element[0].code = #U
* group[1].element[0].display = "Usual control"
* group[1].element[0].target.equivalence = #equivalent
* group[1].element[0].target.code = #U
* group[1].element[0].target.display = "Usual control"
* group[1].element[1].code = #UWM
* group[1].element[1].display = "Unwed mother"
* group[1].element[1].target.equivalence = #equivalent
* group[1].element[1].target.code = #UWM
* group[1].element[1].target.display = "Unwed mother"
* group[1].element[2].code = #VIP
* group[1].element[2].display = "Very important person or celebrity"
* group[1].element[2].target.equivalence = #equivalent
* group[1].element[2].target.code = #VIP
* group[1].element[2].target.display = "Very important person or celebrity"
* group[2].source = "http://terminology.hl7.org/CodeSystem/v2-0177"
* group[2].target = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* group[2].element[0].code = #EMP
* group[2].element[0].display = "Employee"
* group[2].element[0].target.equivalence = #equivalent
* group[2].element[0].target.code = #EMP
* group[2].element[0].target.display = "employee information sensitivity"
* group[2].element[1].code = #ETH
* group[2].element[1].display = "Alcohol/drug treatment patient"
* group[2].element[1].target.equivalence = #equivalent
* group[2].element[1].target.code = #ETHUD
* group[2].element[1].target.display = "alcohol use disorder information sensitivity"
