// HL7 Concept Map_ InterpretationCodes - Sheet1.csv
Instance: TableHL70078toV3ObservationInterpretation
InstanceOf: ConceptMap
Title: "Table HL70078 to V3 ObservationInterpretation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70078 to the FHIR V3 ObservationInterpretation Value Set."
* id = "table-hl70078-to-v3-observationinterpretation"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70078-to-v3-observationinterpretation"
* version = "1.0"
* name = "TableHL70078toV3ObservationInterpretation"
* status = #active
* experimental = true
* date = "2022-02-28"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70078"
* targetUri = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70078 to V3 ObservationInterpretation.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1mxMfcCgpRM2gH6QBOxndzjZcy22MzlskspqEmNADLp8/edit#gid=0"
* group.element[0].code = #< 
* group.element[0].display = "Off scale low"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #<
* group.element[0].target.display = "Off scale low"
* group.element[1].code = #> 
* group.element[1].display = "Off scale high"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #>
* group.element[1].target.display = "Off scale high"
* group.element[2].code = #A
* group.element[2].display = "Abnormal"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #A
* group.element[2].target.display = "Abnormal"
* group.element[3].code = #AA
* group.element[3].display = "Critically abnormal"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #AA
* group.element[3].target.display = "Critical abnormal"
* group.element[4].code = #AC
* group.element[4].display = "Anti-complementary substances present"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #AC
* group.element[4].target.display = "Anti-complementary substances present"
* group.element[5].code = #B
* group.element[5].display = "Better"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #B
* group.element[5].target.display = "Better"
* group.element[6].code = #CAR
* group.element[6].display = "Carrier"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #CAR
* group.element[6].target.display = "Carrier"
* group.element[7].code = #D
* group.element[7].display = "Significant change down"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #D
* group.element[7].target.display = "Significant change down"
* group.element[8].code = #DET
* group.element[8].display = "Detected"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #DET
* group.element[8].target.display = "Detected"
* group.element[9].code = #E
* group.element[9].display = "Equivocal"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #E
* group.element[9].target.display = "Equivocal"
* group.element[10].code = #EX
* group.element[10].display = "outside threshold"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #EX
* group.element[10].target.display = "outside threshold"
* group.element[11].code = #EXP
* group.element[11].display = "Expected"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #EXP
* group.element[11].target.display = "Expected"
* group.element[12].code = #H
* group.element[12].display = "High"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #H
* group.element[12].target.display = "High"
* group.element[13].code = #HH
* group.element[13].display = "Critically high"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #HH
* group.element[13].target.display = "Critical high"
* group.element[14].code = #HM
* group.element[14].display = "Hold for Medical Review"
* group.element[14].target.equivalence = #unmatched
* group.element[15].code = #HU
* group.element[15].display = "Very high"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #HU
* group.element[15].target.display = "Significantly high"
* group.element[16].code = #I
* group.element[16].display = "Intermediate"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #I
* group.element[16].target.display = "Intermediate"
* group.element[17].code = #IE
* group.element[17].display = "Insufficient evidence"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #IE
* group.element[17].target.display = "Insufficient evidence"
* group.element[18].code = #IND
* group.element[18].display = "Indeterminate"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #IND
* group.element[18].target.display = "Indeterminate"
* group.element[19].code = #L
* group.element[19].display = "Low"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #L
* group.element[19].target.display = "Low"
* group.element[20].code = #LL
* group.element[20].display = "Critically low"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #LL
* group.element[20].target.display = "Critical low"
* group.element[21].code = #LU
* group.element[21].display = "Very low"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #LU
* group.element[21].target.display = "Significantly low"
* group.element[22].code = #MS
* group.element[22].display = "Moderately susceptible. Indicates for microbiology susceptibilities only."
* group.element[22].target.equivalence = #unmatched
* group.element[23].code = #N
* group.element[23].display = "Normal"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #N
* group.element[23].target.display = "Normal"
* group.element[24].code = #NCL
* group.element[24].display = "No CLSI defined breakpoint"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #NCL
* group.element[24].target.display = "No CLSI defined breakpoint"
* group.element[25].code = #ND
* group.element[25].display = "Not Detected"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #ND
* group.element[25].target.display = "Not detected"
* group.element[26].code = #NEG
* group.element[26].display = "Negative"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #NEG
* group.element[26].target.display = "Negative"
* group.element[27].code = #NR
* group.element[27].display = "Non-reactive"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #NR
* group.element[27].target.display = "Non-reactive"
* group.element[28].code = #NS
* group.element[28].display = "Non-susceptible"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #NS
* group.element[28].target.display = "Non-susceptible"
* group.element[29].code = #null
* group.element[29].display = "No range defined, or normal ranges don’t apply"
* group.element[29].target.equivalence = #unmatched
* group.element[30].code = #OBX
* group.element[30].display = "Interpretation qualifiers in separate OBX segments"
* group.element[30].target.equivalence = #unmatched
* group.element[31].code = #POS
* group.element[31].display = "Positive"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #POS
* group.element[31].target.display = "Positive"
* group.element[32].code = #QCF
* group.element[32].display = "Quality Control Failure"
* group.element[32].target.equivalence = #unmatched
* group.element[33].code = #R
* group.element[33].display = "Resistant"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #R
* group.element[33].target.display = "Resistant"
* group.element[34].code = #RR
* group.element[34].display = "Reactive"
* group.element[34].target.equivalence = #equivalent
* group.element[34].target.code = #RR
* group.element[34].target.display = "Reactive"
* group.element[35].code = #S
* group.element[35].display = "Susceptible"
* group.element[35].target.equivalence = #equivalent
* group.element[35].target.code = #S
* group.element[35].target.display = "Susceptible"
* group.element[36].code = #SDD
* group.element[36].display = "Susceptible-dose dependent"
* group.element[36].target.equivalence = #equivalent
* group.element[36].target.code = #SDD
* group.element[36].target.display = "Susceptible-dose dependent"
* group.element[37].code = #SYN-R
* group.element[37].display = "Synergy – resistant"
* group.element[37].target.equivalence = #equivalent
* group.element[37].target.code = #SYN-R
* group.element[37].target.display = "Synergy - resistant"
* group.element[38].code = #SYN-S
* group.element[38].display = "Synergy – susceptible"
* group.element[38].target.equivalence = #equivalent
* group.element[38].target.code = #SYN-S
* group.element[38].target.display = "Synergy - susceptible"
* group.element[39].code = #TOX
* group.element[39].display = "Cytotoxic substance present"
* group.element[39].target.equivalence = #unmatched
* group.element[40].code = #U
* group.element[40].display = "Significant change up"
* group.element[40].target.equivalence = #equivalent
* group.element[40].target.code = #U
* group.element[40].target.display = "Significant change up"
* group.element[41].code = #VS
* group.element[41].display = "Very susceptible. Indicates for microbiology susceptibilities only."
* group.element[41].target.equivalence = #unmatched
* group.element[42].code = #UNE
* group.element[42].display = "Unexpected"
* group.element[42].target.equivalence = #equivalent
* group.element[42].target.code = #UNE
* group.element[42].target.display = "Unexpected"
* group.element[43].code = #W
* group.element[43].display = "Worse"
* group.element[43].target.equivalence = #equivalent
* group.element[43].target.code = #W
* group.element[43].target.display = "Worse"
* group.element[44].code = #WR
* group.element[44].display = "Weakly reactive"
* group.element[44].target.equivalence = #equivalent
* group.element[44].target.code = #WR
* group.element[44].target.display = "Weakly reactive"