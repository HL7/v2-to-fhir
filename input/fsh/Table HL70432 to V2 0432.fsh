// HL7 Concept Map_ AdmissionLevelOfCareCode - Sheet1.csv
Instance: TableHL70432ToV20432
InstanceOf: ConceptMap
Title: "Table HL70432 to V2 0432 Map"
Usage: #definition
* title = "Table HL70432 to V2 0432 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70432 to the FHIR V2 0432 Value Set."
* id = "table-hl70432-to-v2-0432"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70432-to-v2-0432"
* name = "TableHL70432ToV20432"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0432"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0432"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70432 to V2 0432.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1Va5F4KJWOsdZ02fAh_LpIR_FBhHn99uJnNqxGoaFcnc/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0432"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0432"
* group[0].element[0].code = #AC
* group[0].element[0].display = "Acute"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #AC
* group[0].element[0].target.display = "Acute"
* group[0].element[1].code = #CH
* group[0].element[1].display = "Chronic"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #CH
* group[0].element[1].target.display = "Chronic"
* group[0].element[2].code = #CO
* group[0].element[2].display = "Comatose"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #CO
* group[0].element[2].target.display = "Comatose"
* group[0].element[3].code = #CR
* group[0].element[3].display = "Critical"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #CR
* group[0].element[3].target.display = "Critical"
* group[0].element[4].code = #IM
* group[0].element[4].display = "Improved"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #IM
* group[0].element[4].target.display = "Improved"
* group[0].element[5].code = #MO
* group[0].element[5].display = "Moribund"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #MO
* group[0].element[5].target.display = "Moribund"
