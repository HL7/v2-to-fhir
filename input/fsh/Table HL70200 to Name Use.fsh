// HL7 Concept Map_ NameType - Sheet1.csv
Instance: TableHL70200ToNameUse
InstanceOf: ConceptMap
Title: "Table HL70200 to Name Use Map"
* title = "Table HL70200 to Name Use Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70200 to the FHIR Name Use Value Set."
* id = "table-hl70200-to-name-use"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70200-to-name-use"
* version = "1.0"
* name = "TableHL70200ToNameUse"
* status = #active
* experimental = true
* date = "2024-12-29"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70200"
* targetUri = "http://hl7.org/fhir/name-use"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70200 to Name Use.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1pK0Uutb8ppFiPxR_Mnwh5-N5WINCwTyWtgbwLBgZfGg/edit#gid=0"
* group.element[0].code = #BAD
* group.element[0].display = "Bad Name"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #old
* group.element[0].target.display = "Old"
* group.element[1].code = #A
* group.element[1].display = "Assigned"
* group.element[1].target.equivalence = #unmatched
* group.element[2].code = #B
* group.element[2].display = "Birth name"
* group.element[2].target.equivalence = #unmatched
* group.element[3].code = #C
* group.element[3].display = "Adopted Name"
* group.element[3].target.equivalence = #unmatched
* group.element[4].code = #D
* group.element[4].display = "Customary Name"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #usual
* group.element[4].target.display = "Usual"
* group.element[5].code = #F
* group.element[5].display = "Fathers Name"
* group.element[5].target.equivalence = #unmatched
* group.element[6].code = #I
* group.element[6].display = "Licensing Name"
* group.element[6].target.equivalence = #unmatched
* group.element[7].code = #K
* group.element[7].display = "Business name"
* group.element[7].target.equivalence = #unmatched
* group.element[8].code = #L
* group.element[8].display = "Official Registry Name"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #official
* group.element[8].target.display = "Official"
* group.element[9].code = #M
* group.element[9].display = "Maiden Name"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #maiden
* group.element[9].target.display = "Maiden"
* group.element[10].code = #MSK
* group.element[10].display = "Masked"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #anonymous
* group.element[10].target.display = "Anonymous"
* group.element[11].code = #N
* group.element[11].display = "Nickname"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #nickname
* group.element[11].target.display = "Nickname"
* group.element[12].code = #NAV
* group.element[12].display = "Temporarily Unavailable"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #temp
* group.element[12].target.display = "temp"
* group.element[13].code = #NB
* group.element[13].display = "Newborn Name"
* group.element[13].target.equivalence = #unmatched
* group.element[14].code = #NOUSE
* group.element[14].display = "No Longer To Be Used"
* group.element[14].target.equivalence = #unmatched
* group.element[15].code = #P
* group.element[15].display = "Name of Partner/Spouse"
* group.element[15].target.equivalence = #unmatched
* group.element[16].code = #R
* group.element[16].display = "Registered Name"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #official
* group.element[16].target.display = "Official"
* group.element[17].code = #REL
* group.element[17].display = "Religious"
* group.element[17].target.equivalence = #unmatched
* group.element[18].code = #S
* group.element[18].display = "Pseudonym"
* group.element[18].target.equivalence = #unmatched
* group.element[19].code = #T
* group.element[19].display = "Indigenous/Tribal"
* group.element[19].target.equivalence = #unmatched
* group.element[20].code = #TEMP
* group.element[20].display = "Temporary Name"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #temp
* group.element[20].target.display = "Temp"
* group.element[21].code = #U
* group.element[21].display = "Unknown"
* group.element[21].target.equivalence = #unmatched
