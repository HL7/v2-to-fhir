// HL7 Concept Map_ Religion - Sheet1.csv
Instance: TableHL70006toV3ReligiousAffiliation
InstanceOf: ConceptMap
Title: "Table HL70006 to V3 ReligiousAffiliation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70006 to the FHIR V3 ReligiousAffiliation Value Set."
* id = "table-hl70006-to-v3-religiousaffiliation"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70006-to-v3-religiousaffiliation"
* version = "1.0"
* name = "TableHL70006toV3ReligiousAffiliation"
* status = #active
* experimental = true
* date = "2022-02-28"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70006"
* targetUri = "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70006 to V3 ReligiousAffiliation.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1y4Y1YDT48qL5Rqdob7hoyghJx70ks0qp68-hcOrdgcs/edit#gid=0"
* group.element[0].code = #A
* group.element[0].display = "Atheist"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #1007
* group.element[0].target.display = "Atheism"
* group.element[1].code = #B
* group.element[1].display = "Baptist"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #1009
* group.element[1].target.display = "Baptist"
* group.element[2].code = #C
* group.element[2].display = "Catholic"
* group.element[2].target.equivalence = #unmatched
* group.element[3].code = #E
* group.element[3].display = "Episcopalian"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #1069
* group.element[3].target.display = "Episcopalian"
* group.element[4].code = #J
* group.element[4].display = "Judaism"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #1026
* group.element[4].target.display = "Judaism"
* group.element[5].code = #L
* group.element[5].display = "Lutheran"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #1028
* group.element[5].target.display = "Lutheran"
* group.element[6].code = #M
* group.element[6].display = "Church of Latter Day Saints (Mormon)"
* group.element[6].target.equivalence = #unmatched
* group.element[7].code = #N
* group.element[7].display = "Hindu"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #1020
* group.element[7].target.display = "Hinduism"
* group.element[8].code = #P
* group.element[8].display = "Protestant"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #1077
* group.element[8].target.display = "Protestant"
* group.element[9].code = #AGN
* group.element[9].display = "Agnostic"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #1004
* group.element[9].target.display = "Agnosticism"
* group.element[10].code = #ATH
* group.element[10].display = "Atheist"
* group.element[10].target.equivalence = #unmatched
* group.element[11].code = #BAH
* group.element[11].display = "Baha'i"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #1008
* group.element[11].target.display = "Babi & Baha'I faiths"
* group.element[12].code = #BRE
* group.element[12].display = "Brethren"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #1062
* group.element[12].target.display = "Brethren"
* group.element[13].code = #BUD
* group.element[13].display = "Buddhist"
* group.element[13].target.equivalence = #unmatched
* group.element[14].code = #BMA
* group.element[14].display = "Buddhist: Mahayana"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #1029
* group.element[14].target.display = "Mahayana"
* group.element[15].code = #BTH
* group.element[15].display = "Buddhist: Theravada"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #1051
* group.element[15].target.display = "Theravada"
* group.element[16].code = #BTA
* group.element[16].display = "Buddhist: Tantrayana"
* group.element[16].target.equivalence = #unmatched
* group.element[17].code = #BOT
* group.element[17].display = "Buddhist: Other"
* group.element[17].target.equivalence = #unmatched
* group.element[18].code = #CFR
* group.element[18].display = "Chinese Folk Religionist"
* group.element[18].target.equivalence = #unmatched
* group.element[19].code = #CHR
* group.element[19].display = "Christian"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #1013
* group.element[19].target.display = "Christian (non-Catholic, non-specific)"
* group.element[20].code = #ABC
* group.element[20].display = "Christian: American Baptist Church"
* group.element[20].target.equivalence = #unmatched
* group.element[21].code = #AMT
* group.element[21].display = "Christian: African Methodist Episcopal"
* group.element[21].target.equivalence = #unmatched
* group.element[22].code = #AME
* group.element[22].display = "Christian: African Methodist Episcopal Zion"
* group.element[22].target.equivalence = #unmatched
* group.element[23].code = #ANG
* group.element[23].display = "Christian: Anglican"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #1005
* group.element[23].target.display = "Anglican"
* group.element[24].code = #AOG
* group.element[24].display = "Christian: Assembly of God"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #1061
* group.element[24].target.display = "Assembly of God"
* group.element[25].code = #BAP
* group.element[25].display = "Christian: Baptist"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #1009
* group.element[25].target.display = "Baptist"
* group.element[26].code = #CRR
* group.element[26].display = "Christian: Christian Reformed"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #1079
* group.element[26].target.display = "Reformed"
* group.element[27].code = #CHS
* group.element[27].display = "Christian: Christian Science"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #1063
* group.element[27].target.display = "Christian Scientist"
* group.element[28].code = #CMA
* group.element[28].display = "Christian: Christian Missionary Alliance"
* group.element[28].target.equivalence = #unmatched
* group.element[29].code = #COC
* group.element[29].display = "Christian: Church of Christ"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #1064
* group.element[29].target.display = "Church of Christ"
* group.element[30].code = #COG
* group.element[30].display = "Christian: Church of God"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #1065
* group.element[30].target.display = "Church of God"
* group.element[31].code = #COI
* group.element[31].display = "Christian: Church of God in Christ"
* group.element[31].target.equivalence = #unmatched
* group.element[32].code = #COM
* group.element[32].display = "Christian: Community"
* group.element[32].target.equivalence = #unmatched
* group.element[33].code = #COL
* group.element[33].display = "Christian: Congregational"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #1066
* group.element[33].target.display = "Congregational"
* group.element[34].code = #EOT
* group.element[34].display = "Christian: Eastern Orthodox"
* group.element[34].target.equivalence = #equivalent
* group.element[34].target.code = #1068
* group.element[34].target.display = "Eastern Orthodox"
* group.element[35].code = #EVC
* group.element[35].display = "Christian: Evangelical Church"
* group.element[35].target.equivalence = #unmatched
* group.element[36].code = #EPI
* group.element[36].display = "Christian: Episcopalian"
* group.element[36].target.equivalence = #equivalent
* group.element[36].target.code = #1069
* group.element[36].target.display = "Episcopalian"
* group.element[37].code = #FWB
* group.element[37].display = "Christian: Free Will Baptist"
* group.element[37].target.equivalence = #unmatched
* group.element[38].code = #FRQ
* group.element[38].display = "Christian: Friends"
* group.element[38].target.equivalence = #equivalent
* group.element[38].target.code = #1071
* group.element[38].target.display = "Friends"
* group.element[39].code = #FUL
* group.element[39].display = "Christian: Full Gospel"
* group.element[39].target.equivalence = #equivalent
* group.element[39].target.code = #1072
* group.element[39].target.display = "Full Gospel"
* group.element[40].code = #GRE
* group.element[40].display = "Christian: Greek Orthodox"
* group.element[40].target.equivalence = #unmatched
* group.element[41].code = #JWN
* group.element[41].display = "Christian: Jehovah's Witness"
* group.element[41].target.equivalence = #equivalent
* group.element[41].target.code = #1025
* group.element[41].target.display = "Jehovah's Witnesses"
* group.element[42].code = #MOM
* group.element[42].display = "Christian: Latter-day Saints"
* group.element[42].target.equivalence = #equivalent
* group.element[42].target.code = #1027
* group.element[42].target.display = "Latter Day Saints"
* group.element[43].code = #LUT
* group.element[43].display = "Christian: Lutheran"
* group.element[43].target.equivalence = #equivalent
* group.element[43].target.code = #1028
* group.element[43].target.display = "Lutheran"
* group.element[44].code = #LMS
* group.element[44].display = "Christian: Lutheran Missouri Synod"
* group.element[44].target.equivalence = #unmatched
* group.element[45].code = #MEN
* group.element[45].display = "Christian: Mennonite"
* group.element[45].target.equivalence = #unmatched
* group.element[46].code = #MET
* group.element[46].display = "Christian: Methodist"
* group.element[46].target.equivalence = #equivalent
* group.element[46].target.code = #1073
* group.element[46].target.display = "Methodist"
* group.element[47].code = #NAZ
* group.element[47].display = "Christian: Church of the Nazarene"
* group.element[47].target.equivalence = #equivalent
* group.element[47].target.code = #1075
* group.element[47].target.display = "Nazarene"
* group.element[48].code = #ORT
* group.element[48].display = "Christian: Orthodox"
* group.element[48].target.equivalence = #equivalent
* group.element[48].target.code = #1036
* group.element[48].target.display = "Orthodox"
* group.element[49].code = #PEN
* group.element[49].display = "Christian: Pentecostal"
* group.element[49].target.equivalence = #equivalent
* group.element[49].target.code = #1038
* group.element[49].target.display = "Pentecostal"
* group.element[50].code = #COP
* group.element[50].display = "Christian: Other Pentecostal"
* group.element[50].target.equivalence = #unmatched
* group.element[51].code = #PRE
* group.element[51].display = "Christian: Presbyterian"
* group.element[51].target.equivalence = #equivalent
* group.element[51].target.code = #1076
* group.element[51].target.display = "Presbyterian"
* group.element[52].code = #PRO
* group.element[52].display = "Christian: Protestant"
* group.element[52].target.equivalence = #equivalent
* group.element[52].target.code = #1077
* group.element[52].target.display = "Protestant"
* group.element[53].code = #PRC
* group.element[53].display = "Christian: Other Protestant"
* group.element[53].target.equivalence = #equivalent
* group.element[53].target.code = #1078
* group.element[53].target.display = "Protestant, No Denomination"
* group.element[54].code = #QUA
* group.element[54].display = "Christian: Friends"
* group.element[54].target.equivalence = #equivalent
* group.element[54].target.code = #1071
* group.element[54].target.display = "Friends"
* group.element[55].code = #REC
* group.element[55].display = "Christian: Reformed Church"
* group.element[55].target.equivalence = #equivalent
* group.element[55].target.code = #1079
* group.element[55].target.display = "Reformed"
* group.element[56].code = #REO
* group.element[56].display = "Christian: Reorganized Church of Jesus Christ-LDS"
* group.element[56].target.equivalence = #unmatched
* group.element[57].code = #CAT
* group.element[57].display = "Christian: Roman Catholic"
* group.element[57].target.equivalence = #equivalent
* group.element[57].target.code = #1041
* group.element[57].target.display = "Roman Catholic Church"
* group.element[58].code = #SAA
* group.element[58].display = "Christian: Salvation Army"
* group.element[58].target.equivalence = #equivalent
* group.element[58].target.code = #1080
* group.element[58].target.display = "Salvation Army"
* group.element[59].code = #SEV
* group.element[59].display = "Christian: Seventh Day Adventist"
* group.element[59].target.equivalence = #equivalent
* group.element[59].target.code = #1001
* group.element[59].target.display = "Adventist"
* group.element[60].code = #SOU
* group.element[60].display = "Christian: Southern Baptist"
* group.element[60].target.equivalence = #unmatched
* group.element[61].code = #UCC
* group.element[61].display = "Christian: United Church of Christ"
* group.element[61].target.equivalence = #equivalent
* group.element[61].target.code = #1082
* group.element[61].target.display = "United Church of Christ"
* group.element[62].code = #UMD
* group.element[62].display = "Christian: United Methodist"
* group.element[62].target.equivalence = #unmatched
* group.element[63].code = #UNI
* group.element[63].display = "Christian: Unitarian"
* group.element[63].target.equivalence = #equivalent
* group.element[63].target.code = #1052
* group.element[63].target.display = "Unitarian-Universalism"
* group.element[64].code = #UNU
* group.element[64].display = "Christian: Unitarian Universalist"
* group.element[64].target.equivalence = #equivalent
* group.element[64].target.code = #1081
* group.element[64].target.display = "Unitarian Universalist"
* group.element[65].code = #WES
* group.element[65].display = "Christian: Wesleyan"
* group.element[65].target.equivalence = #unmatched
* group.element[66].code = #WMC
* group.element[66].display = "Christian: Wesleyan Methodist"
* group.element[66].target.equivalence = #unmatched
* group.element[67].code = #COT
* group.element[67].display = "Christian: Other"
* group.element[67].target.equivalence = #unmatched
* group.element[68].code = #CNF
* group.element[68].display = "Confucian"
* group.element[68].target.equivalence = #equivalent
* group.element[68].target.code = #1014
* group.element[68].target.display = "Confucianism"
* group.element[69].code = #DOC
* group.element[69].display = "Disciples of Christ"
* group.element[69].target.equivalence = #equivalent
* group.element[69].target.code = #1067
* group.element[69].target.display = "Disciples of Christ"
* group.element[70].code = #ERL
* group.element[70].display = "Ethnic Religionist"
* group.element[70].target.equivalence = #unmatched
* group.element[71].code = #HIN
* group.element[71].display = "Hindu"
* group.element[71].target.equivalence = #unmatched
* group.element[72].code = #HSH
* group.element[72].display = "Hindu: Shaivites"
* group.element[72].target.equivalence = #equivalent
* group.element[72].target.code = #1020
* group.element[72].target.display = "Hinduism"
* group.element[73].code = #HVA
* group.element[73].display = "Hindu: Vaishnavites"
* group.element[73].target.equivalence = #equivalent
* group.element[73].target.code = #1020
* group.element[73].target.display = "Hinduism"
* group.element[74].code = #HOT
* group.element[74].display = "Hindu: Other"
* group.element[74].target.equivalence = #equivalent
* group.element[74].target.code = #1020
* group.element[74].target.display = "Hinduism"
* group.element[75].code = #JAI
* group.element[75].display = "Jain"
* group.element[75].target.equivalence = #equivalent
* group.element[75].target.code = #1024
* group.element[75].target.display = "Jainism"
* group.element[76].code = #JEW
* group.element[76].display = "Jewish"
* group.element[76].target.equivalence = #unmatched
* group.element[77].code = #JCO
* group.element[77].display = "Jewish: Conservative"
* group.element[77].target.equivalence = #unmatched
* group.element[78].code = #JOR
* group.element[78].display = "Jewish: Orthodox"
* group.element[78].target.equivalence = #unmatched
* group.element[79].code = #JRC
* group.element[79].display = "Jewish: Reconstructionist"
* group.element[79].target.equivalence = #unmatched
* group.element[80].code = #JRF
* group.element[80].display = "Jewish: Reform"
* group.element[80].target.equivalence = #unmatched
* group.element[81].code = #JRN
* group.element[81].display = "Jewish: Renewal"
* group.element[81].target.equivalence = #unmatched
* group.element[82].code = #JOT
* group.element[82].display = "Jewish: Other"
* group.element[82].target.equivalence = #unmatched
* group.element[83].code = #MOS
* group.element[83].display = "Muslim"
* group.element[83].target.equivalence = #equivalent
* group.element[83].target.code = #1023
* group.element[83].target.display = "Islam"
* group.element[84].code = #MSH
* group.element[84].display = "Muslim: Shiite"
* group.element[84].target.equivalence = #equivalent
* group.element[84].target.code = #1045
* group.element[84].target.display = "Shiite (Islam)"
* group.element[85].code = #MSU
* group.element[85].display = "Muslim: Sunni"
* group.element[85].target.equivalence = #equivalent
* group.element[85].target.code = #1049
* group.element[85].target.display = "Sunni (Islam)"
* group.element[86].code = #MOT
* group.element[86].display = "Muslim: Other"
* group.element[86].target.equivalence = #unmatched
* group.element[87].code = #NAM
* group.element[87].display = "Native American"
* group.element[87].target.equivalence = #equivalent
* group.element[87].target.code = #1074
* group.element[87].target.display = "Native American"
* group.element[88].code = #NRL
* group.element[88].display = "New Religionist"
* group.element[88].target.equivalence = #unmatched
* group.element[89].code = #NOE
* group.element[89].display = "Nonreligious"
* group.element[89].target.equivalence = #unmatched
* group.element[90].code = #SHN
* group.element[90].display = "Shintoist"
* group.element[90].target.equivalence = #equivalent
* group.element[90].target.code = #1046
* group.element[90].target.display = "Shinto"
* group.element[91].code = #SIK
* group.element[91].display = "Sikh"
* group.element[91].target.equivalence = #unmatched
* group.element[92].code = #SPI
* group.element[92].display = "Spiritist"
* group.element[92].target.equivalence = #equivalent
* group.element[92].target.code = #1048
* group.element[92].target.display = "Spiritualism"
* group.element[93].code = #OTH
* group.element[93].display = "Other"
* group.element[93].target.equivalence = #unmatched
* group.element[94].code = #VAR
* group.element[94].display = "Unknown"
* group.element[94].target.equivalence = #unmatched
