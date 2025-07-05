// HL7 Concept Map_ TelecommunicationUseCode - Sheet1.csv
Instance: TableHL70201ToContactPointUse
InstanceOf: ConceptMap
Title: "Table HL70201 to Contact Point Use Map"
Usage: #definition
* title = "Table HL70201 to Contact Point Use Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70201 to the FHIR Contact Point Use Value Set."
* id = "table-hl70201-to-contact-point-use"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70201-to-contact-point-use"
* name = "TableHL70201ToContactPointUse"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0201"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70201 to Contact Point Use.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1EE3a5UIGXLi8wMDr49fWTEVx8QS2GFqYgitE3vLOQTQ/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0201"
* group[0].target = "http://hl7.org/fhir/contact-point-use"
* group[0].element[0].code = #PRN
* group[0].element[0].display = "Primary Residence Number"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #home
* group[0].element[0].target.display = "Home"
* group[0].element[1].code = #WPN
* group[0].element[1].display = "Work Number"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #work
* group[0].element[1].target.display = "Work"
* group[0].element[2].code = #PRS
* group[0].element[2].display = "Personal"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #mobile
* group[0].element[2].target.display = "Mobile"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0201"
* group[1].element[0].code = #ORN
* group[1].element[0].display = "Other Residence Number"
* group[1].element[0].target.equivalence = #unmatched
* group[1].element[1].code = #VHN
* group[1].element[1].display = "Vacation Home Number"
* group[1].element[1].target.equivalence = #unmatched
* group[1].element[2].code = #ASN
* group[1].element[2].display = "Answering Service Number"
* group[1].element[2].target.equivalence = #unmatched
* group[1].element[3].code = #EMR
* group[1].element[3].display = "Emergency Number"
* group[1].element[3].target.equivalence = #unmatched
* group[1].element[4].code = #NET
* group[1].element[4].display = "Network (email) Address"
* group[1].element[4].target.equivalence = #unmatched
* group[1].element[5].code = #BPN
* group[1].element[5].display = "Beeper Number"
* group[1].element[5].target.equivalence = #unmatched
