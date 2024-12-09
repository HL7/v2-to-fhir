// HL7 Concept Map_ Participation - Sheet1.csv
Instance: TableHL70912ToPractitionerRole
InstanceOf: ConceptMap
Title: "Table HL70912 to Practitioner Role Map"
* title = "Table HL70912 to Practitioner Role Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70912 to the FHIR Practitioner Role Value Set."
* id = "table-hl70912-to-practitioner-role"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70912-to-practitioner-role"
* version = "1.0"
* name = "TableHL70912ToPractitionerRole"
* status = #active
* experimental = true
* date = "2024-12-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70912"
* targetUri = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70912 to Practitioner Role.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1rbjK6-XxY2BoCpVRWy_Mrvkl9PTk_8zw0GIeng8zz-4/edit#gid=0"
* group.element[0].code = #PH
* group.element[0].display = "Pharmacist (not sure how to dissect Pharmacist/Treatment Supplier's Verifier ID)"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #pharmacist
* group.element[0].target.display = "Pharmacist"
* group.element[1].code = #AAP
* group.element[1].display = "Alert Acknowledging Provider"
* group.element[1].target.equivalence = #unmatched
* group.element[2].code = #AC
* group.element[2].display = "Administration Cosigner"
* group.element[2].target.equivalence = #unmatched
* group.element[3].code = #AD
* group.element[3].display = "Admitting Provider"
* group.element[3].target.equivalence = #unmatched
* group.element[4].code = #AI
* group.element[4].display = "Assistant/Alternate Interpreter"
* group.element[4].target.equivalence = #unmatched
* group.element[5].code = #AP
* group.element[5].display = "Administering Provider"
* group.element[5].target.equivalence = #unmatched
* group.element[6].code = #ARI
* group.element[6].display = "Assistant Result Interpreter"
* group.element[6].target.equivalence = #unmatched
* group.element[7].code = #AT
* group.element[7].display = "Attending Provider"
* group.element[7].target.equivalence = #unmatched
* group.element[8].code = #AUT
* group.element[8].display = "AUT Author/Event Initiator"
* group.element[8].target.equivalence = #unmatched
* group.element[9].code = #CP
* group.element[9].display = "Consulting Provider"
* group.element[9].target.equivalence = #unmatched
* group.element[10].code = #DP
* group.element[10].display = "Dispensing Provider"
* group.element[10].target.equivalence = #unmatched
* group.element[11].code = #EP
* group.element[11].display = "Entering Provider (probably not the same as transcriptionist)"
* group.element[11].target.equivalence = #unmatched
* group.element[12].code = #EQUIP
* group.element[12].display = "Equipment"
* group.element[12].target.equivalence = #unmatched
* group.element[13].code = #FHCP
* group.element[13].display = "Family Health Care Professional"
* group.element[13].target.equivalence = #unmatched
* group.element[14].code = #MDIR
* group.element[14].display = "Medical Director"
* group.element[14].target.equivalence = #unmatched
* group.element[15].code = #OP
* group.element[15].display = "Ordering Provider"
* group.element[15].target.equivalence = #unmatched
* group.element[16].code = #OS
* group.element[16].display = "Outside Site(s) Where Observation May Be Performed"
* group.element[16].target.equivalence = #unmatched
* group.element[17].code = #PB
* group.element[17].display = "Packed by"
* group.element[17].target.equivalence = #unmatched
* group.element[18].code = #PI
* group.element[18].display = "Primary Interpreter"
* group.element[18].target.equivalence = #unmatched
* group.element[19].code = #PO
* group.element[19].display = "Performing Organization"
* group.element[19].target.equivalence = #unmatched
* group.element[20].code = #POMD
* group.element[20].display = "Performing Organization Medical Director"
* group.element[20].target.equivalence = #unmatched
* group.element[21].code = #PP
* group.element[21].display = "Primary Care Provider"
* group.element[21].target.equivalence = #unmatched
* group.element[22].code = #PRI
* group.element[22].display = "Principal Result Interpreter"
* group.element[22].target.equivalence = #unmatched
* group.element[23].code = #RCT
* group.element[23].display = "Results Copies To"
* group.element[23].target.equivalence = #unmatched
* group.element[24].code = #RO
* group.element[24].display = "Responsible Observer"
* group.element[24].target.equivalence = #unmatched
* group.element[25].code = #RP
* group.element[25].display = "Referring Provider"
* group.element[25].target.equivalence = #unmatched
* group.element[26].code = #RT
* group.element[26].display = "Referred to Provider"
* group.element[26].target.equivalence = #unmatched
* group.element[27].code = #SB
* group.element[27].display = "Send by"
* group.element[27].target.equivalence = #unmatched
* group.element[28].code = #SC
* group.element[28].display = "Specimen Collector"
* group.element[28].target.equivalence = #unmatched
* group.element[29].code = #TN
* group.element[29].display = "Technician"
* group.element[29].target.equivalence = #unmatched
* group.element[30].code = #TR
* group.element[30].display = "Transcriptionist"
* group.element[30].target.equivalence = #unmatched
* group.element[31].code = #VP
* group.element[31].display = "Verifying Provider"
* group.element[31].target.equivalence = #unmatched
* group.element[32].code = #VPS
* group.element[32].display = "Verifying Pharmaceutical Supplier (not sure how to dissect Pharmacist/Treatment Supplier's Verifier ID)"
* group.element[32].target.equivalence = #unmatched
* group.element[33].code = #VTS
* group.element[33].display = "Verifying Treatment Supplier (not sure how to dissect Pharmacist/Treatment Supplier's Verifier ID)"
* group.element[33].target.equivalence = #unmatched
* group.element[34].code = #WAY
* group.element[34].display = "Waypoint"
* group.element[34].target.equivalence = #unmatched
* group.element[35].code = #WAYR
* group.element[35].display = "Waypoint Recipient"
* group.element[35].target.equivalence = #unmatched
