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
* targetUri = "http://hl7.org/fhir/ValueSet/contact-point-system"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70202 to Contact Point System.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1FhoR5oxEWdHmpR5S0_wYPstdy1lwv7rL-JWJu_DE_Vs/edit#gid=0"
* group.element[0].code = #PH
* group.element[0].display = "Telephone"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #phone
* group.element[0].target.display = "Phone"
* group.element[1].code = #FX
* group.element[1].display = "Fax"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #fax
* group.element[1].target.display = "Fax"
* group.element[2].code = #MD
* group.element[2].display = "Modem"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #other
* group.element[2].target.display = "Other"
* group.element[3].code = #CP
* group.element[3].display = "Cellular or Mobile Phone"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #mobile
* group.element[3].target.display = "Mobile"
* group.element[4].code = #SAT
* group.element[4].display = "Satellite Phone"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #other
* group.element[4].target.display = "Other"
* group.element[5].code = #BP
* group.element[5].display = "Beeper"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #pager
* group.element[5].target.display = "Pager"
* group.element[6].code = #Internet
* group.element[6].display = "Internet Address"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #email
* group.element[6].target.display = "email"
* group.element[7].code = #X.400
* group.element[7].display = "X.400 email address"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #email
* group.element[7].target.display = "email"
* group.element[8].code = #TDD
* group.element[8].display = "Telecommunications Device for the Deaf"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #other
* group.element[8].target.display = "Other"
* group.element[9].code = #TTY
* group.element[9].display = "Teletypewriter"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #other
* group.element[9].target.display = "Other"
