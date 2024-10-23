// HL7 Concept Map_ Relationship - Sheet1.csv
Instance: TableHL70063ToV3RoleCode
InstanceOf: ConceptMap
Title: "Table HL70063 to V3 RoleCode Map"
* title = "Table HL70063 to V3 RoleCode Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70063 to the FHIR V3 RoleCode Value Set."
* id = "table-hl70063-to-v3-rolecode"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70063-to-v3-rolecode"
* version = "1.0"
* name = "TableHL70063ToV3RoleCode"
* status = #active
* experimental = true
* date = "2024-10-23"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70063"
* targetUri = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70063 to V3 RoleCode.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1BDbtJ9kKKpDXIG8GAaRyqpb_iUKBaaU4b0bcxHo0KoI/edit#gid=0"
* group.element[0].code = #SEL
* group.element[0].display = "Self"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #ONESELF
* group.element[0].target.display = "self"
* group.element[1].code = #SPO
* group.element[1].display = "Spouse"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #SPS
* group.element[1].target.display = "spouse"
* group.element[2].code = #DOM
* group.element[2].display = "Life partner"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #SIGOTHR
* group.element[2].target.display = "significant other"
* group.element[3].code = #CHD
* group.element[3].display = "Child"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #CHILD
* group.element[3].target.display = "child"
* group.element[4].code = #GCH
* group.element[4].display = "Grandchild"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #GRNDCHILD
* group.element[4].target.display = "grandchild"
* group.element[5].code = #NCH
* group.element[5].display = "Natural child"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #NCHILD
* group.element[5].target.display = "natural child"
* group.element[6].code = #SCH
* group.element[6].display = "Stepchild"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #STPCHLD
* group.element[6].target.display = "step child"
* group.element[7].code = #FCH
* group.element[7].display = "Foster child"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #CHLDFOST
* group.element[7].target.display = "foster child"
* group.element[8].code = #DEP
* group.element[8].display = "Handicapped dependent"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #DEP
* group.element[8].target.display = "Handicapped dependent"
* group.element[9].code = #WRD
* group.element[9].display = "Ward of court"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #WRD
* group.element[9].target.display = "Ward of court"
* group.element[10].code = #PAR
* group.element[10].display = "Parent"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #PRN
* group.element[10].target.display = "parent"
* group.element[11].code = #MTH
* group.element[11].display = "Mother"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #MTH
* group.element[11].target.display = "mother"
* group.element[12].code = #FTH
* group.element[12].display = "Father"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #FTH
* group.element[12].target.display = "father"
* group.element[13].code = #CGV
* group.element[13].display = "Care giver"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #CGV
* group.element[13].target.display = "Care giver"
* group.element[14].code = #GRD
* group.element[14].display = "Guardian"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #GRD
* group.element[14].target.display = "Guardian"
* group.element[15].code = #GRP
* group.element[15].display = "Grandparent"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #GRPRN
* group.element[15].target.display = "grandparent"
* group.element[16].code = #EXF
* group.element[16].display = "Extended family"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #EXT
* group.element[16].target.display = "extended family member"
* group.element[17].code = #SIB
* group.element[17].display = "Sibling"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #SIB
* group.element[17].target.display = "sibling"
* group.element[18].code = #BRO
* group.element[18].display = "Brother"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #BRO
* group.element[18].target.display = "brother"
* group.element[19].code = #SIS
* group.element[19].display = "Sister"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #SIS
* group.element[19].target.display = "sister"
* group.element[20].code = #FND
* group.element[20].display = "Friend"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #FRND
* group.element[20].target.display = "friend"
* group.element[21].code = #OAD
* group.element[21].display = "Other adult"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #OAD
* group.element[21].target.display = "Other adult"
* group.element[22].code = #EME
* group.element[22].display = "Employee"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #EME
* group.element[22].target.display = "Employee"
* group.element[23].code = #EMR
* group.element[23].display = "Employer"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #E
* group.element[23].target.display = "Employer"
* group.element[24].code = #ASC
* group.element[24].display = "Associate"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #ASC
* group.element[24].target.display = "Associate"
* group.element[25].code = #EMC
* group.element[25].display = "Emergency contact"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #C
* group.element[25].target.display = "Emergency Contact"
* group.element[26].code = #OWN
* group.element[26].display = "Owner"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #OWN
* group.element[26].target.display = "Owner"
* group.element[27].code = #TRA
* group.element[27].display = "Trainer"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #TRA
* group.element[27].target.display = "Trainer"
* group.element[28].code = #MGR
* group.element[28].display = "Manager"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #MGR
* group.element[28].target.display = "Manager"
* group.element[29].code = #NON
* group.element[29].display = "None"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #NON
* group.element[29].target.display = "None"
* group.element[30].code = #UNK
* group.element[30].display = "Unknown"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #U
* group.element[30].target.display = "Unknown"
* group.element[31].code = #OTH
* group.element[31].display = "Other"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #O
* group.element[31].target.display = "Other"
* group.element[32].code = #E
* group.element[32].display = "Employer"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #E
* group.element[32].target.display = "Employer"
* group.element[33].code = #C
* group.element[33].display = "Emergency Contact"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #C
* group.element[33].target.display = "Emergency Contact"
* group.element[34].code = #F
* group.element[34].display = "Federal Agency"
* group.element[34].target.equivalence = #equivalent
* group.element[34].target.code = #F
* group.element[34].target.display = "Federal Agency"
* group.element[35].code = #I
* group.element[35].display = "Insurance Company"
* group.element[35].target.equivalence = #equivalent
* group.element[35].target.code = #I
* group.element[35].target.display = "Insurance Company"
* group.element[36].code = #N
* group.element[36].display = "Next-of-Kin"
* group.element[36].target.equivalence = #equivalent
* group.element[36].target.code = #N
* group.element[36].target.display = "Next-of-Kin"
* group.element[37].code = #S
* group.element[37].display = "State Agency"
* group.element[37].target.equivalence = #equivalent
* group.element[37].target.code = #S
* group.element[37].target.display = "State Agency"
* group.element[38].code = #O
* group.element[38].display = "Other"
* group.element[38].target.equivalence = #equivalent
* group.element[38].target.code = #O
* group.element[38].target.display = "Other"
* group.element[39].code = #U
* group.element[39].display = "Unknown"
* group.element[39].target.equivalence = #equivalent
* group.element[39].target.code = #U
* group.element[39].target.display = "Unknown"
