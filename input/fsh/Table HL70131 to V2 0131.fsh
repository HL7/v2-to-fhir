// HL7 Concept Map_ ContactRole - Sheet1.csv
Instance: TableHL70131ToV20131
InstanceOf: ConceptMap
Title: "Table HL70131 to V2 0131 Map"
Usage: #definition
* title = "Table HL70131 to V2 0131 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70131 to the FHIR V2 0131 Value Set."
* id = "table-hl70131-to-v2-0131"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70131-to-v2-0131"
* name = "TableHL70131ToV20131"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0131"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70131 to V2 0131.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1IKIju2kedkokH5NGLWUlR1_Xsbdcplfb3wInd-W2lFE/edit#gid=0"
* group.element[0].code = #E
* group.element[0].display = "Employer"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #E
* group.element[0].target.display = "Employer"
* group.element[1].code = #C
* group.element[1].display = "Emergency Contact"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #C
* group.element[1].target.display = "Emergency Contact"
* group.element[2].code = #F
* group.element[2].display = "Federal Agency"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #F
* group.element[2].target.display = "Federal Agency"
* group.element[3].code = #I
* group.element[3].display = "Insurance Company"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #I
* group.element[3].target.display = "Insurance Company"
* group.element[4].code = #N
* group.element[4].display = "Next-of-Kin"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #N
* group.element[4].target.display = "Next-of-Kin"
* group.element[5].code = #S
* group.element[5].display = "State Agency"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #S
* group.element[5].target.display = "State Agency"
* group.element[6].code = #O
* group.element[6].display = "Other"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #O
* group.element[6].target.display = "Other"
* group.element[7].code = #U
* group.element[7].display = "Unknown"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #U
* group.element[7].target.display = "Unknown"
