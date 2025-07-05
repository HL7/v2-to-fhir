// HL7 Concept Map_ TelecommunicationEquipmentType - Sheet1.csv
Instance: TableHL70202ToContactPointSystem
InstanceOf: ConceptMap
Title: "Table HL70202 to Contact Point System Map"
Usage: #definition
* title = "Table HL70202 to Contact Point System Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70202 to the FHIR Contact Point System Value Set."
* id = "table-hl70202-to-contact-point-system"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70202-to-contact-point-system"
* name = "TableHL70202ToContactPointSystem"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0202"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70202 to Contact Point System.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1FhoR5oxEWdHmpR5S0_wYPstdy1lwv7rL-JWJu_DE_Vs/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0202"
* group[0].target = "http://hl7.org/fhir/contact-point-system"
* group[0].element[0].code = #PH
* group[0].element[0].display = "Telephone"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #phone
* group[0].element[0].target.display = "Phone"
* group[0].element[1].code = #FX
* group[0].element[1].display = "Fax"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #fax
* group[0].element[1].target.display = "Fax"
* group[0].element[2].code = #MD
* group[0].element[2].display = "Modem"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #other
* group[0].element[2].target.display = "Other"
* group[0].element[3].code = #SAT
* group[0].element[3].display = "Satellite Phone"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #other
* group[0].element[3].target.display = "Other"
* group[0].element[4].code = #BP
* group[0].element[4].display = "Beeper"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #pager
* group[0].element[4].target.display = "Pager"
* group[0].element[5].code = #Internet
* group[0].element[5].display = "Internet Address"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #email
* group[0].element[5].target.display = "email"
* group[0].element[6].code = #X.400
* group[0].element[6].display = "X.400 email address"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #email
* group[0].element[6].target.display = "email"
* group[0].element[7].code = #TDD
* group[0].element[7].display = "Telecommunications Device for the Deaf"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #other
* group[0].element[7].target.display = "Other"
* group[0].element[8].code = #TTY
* group[0].element[8].display = "Teletypewriter"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #other
* group[0].element[8].target.display = "Other"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0202"
* group[1].target = "http://hl7.org/fhir/contact-point-use"
* group[1].element[0].code = #CP
* group[1].element[0].display = "Cellular or Mobile Phone"
* group[1].element[0].target.equivalence = #equivalent
* group[1].element[0].target.code = #mobile
* group[1].element[0].target.display = "Mobile"
