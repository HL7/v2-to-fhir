// HL7 Concept Map_ SpecimenCollectionMethod - Sheet1.csv
Instance: TableHL70488ToV20488
InstanceOf: ConceptMap
Title: "Table HL70488 to V2 0488 Map"
Usage: #definition
* title = "Table HL70488 to V2 0488 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70488 to the FHIR V2 0488 Value Set."
* id = "table-hl70488-to-v2-0488"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70488-to-v2-0488"
* name = "TableHL70488ToV20488"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0488"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70488 to V2 0488.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/16PWKqbE5NVvIKHTcyOCwXDUe6VkfE6rZn-bPF2bIPP4/edit#gid=0"
* group.element[0].code = #FNA
* group.element[0].display = "Aspiration, Fine Needle"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #FNA
* group.element[0].target.display = "Aspiration, Fine Needle"
* group.element[1].code = #PNA
* group.element[1].display = "Arterial puncture"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #PNA
* group.element[1].target.display = "Arterial puncture"
* group.element[2].code = #BIO
* group.element[2].display = "Biopsy"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #129314006
* group.element[2].target.display = "Biopsy - action"
* group.element[3].code = #BCAE
* group.element[3].display = "Blood Culture, Aerobic Bottle"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #BCAE
* group.element[3].target.display = "Blood Culture, Aerobic Bottle"
* group.element[4].code = #BCAN
* group.element[4].display = "Blood Culture, Anaerobic Bottle"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #BCAN
* group.element[4].target.display = "Blood Culture, Anaerobic Bottle"
* group.element[5].code = #BCPD
* group.element[5].display = "Blood Culture, Pediatric Bottle"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #BCPD
* group.element[5].target.display = "Blood Culture, Pediatric Bottle"
* group.element[6].code = #CAP
* group.element[6].display = "Capillary Specimen"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #CAP
* group.element[6].target.display = "Capillary Specimen"
* group.element[7].code = #CATH
* group.element[7].display = "Catheterized"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #CATH
* group.element[7].target.display = "Catheterized"
* group.element[8].code = #EPLA
* group.element[8].display = "Environmental, Plate"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #EPLA
* group.element[8].target.display = "Environmental, Plate"
* group.element[9].code = #ESWA
* group.element[9].display = "Environmental, Swab"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #ESWA
* group.element[9].target.display = "Environmental, Swab"
* group.element[10].code = #LNA
* group.element[10].display = "Line, Arterial"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #LNA
* group.element[10].target.display = "Line, Arterial"
* group.element[11].code = #CVP
* group.element[11].display = "Line, CVP"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #CVP
* group.element[11].target.display = "Line, CVP"
* group.element[12].code = #LNV
* group.element[12].display = "Line, Venous"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #LNV
* group.element[12].target.display = "Line, Venous"
* group.element[13].code = #MARTL
* group.element[13].display = "Martin-Lewis Agar"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #MARTL
* group.element[13].target.display = "Martin-Lewis Agar"
* group.element[14].code = #ML11
* group.element[14].display = "Mod. Martin-Lewis Agar"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #ML11
* group.element[14].target.display = "Mod. Martin-Lewis Agar"
* group.element[15].code = #PACE
* group.element[15].display = "Pace, Gen-Probe"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #PACE
* group.element[15].target.display = "Pace, Gen-Probe"
* group.element[16].code = #PIN
* group.element[16].display = "Pinworm Prep"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #PIN
* group.element[16].target.display = "Pinworm Prep"
* group.element[17].code = #KOFFP
* group.element[17].display = "Plate, Cough"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #KOFFP
* group.element[17].target.display = "Plate, Cough"
* group.element[18].code = #MLP
* group.element[18].display = "Plate, Martin-Lewis"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #MLP
* group.element[18].target.display = "Plate, Martin-Lewis"
* group.element[19].code = #NYP
* group.element[19].display = "Plate, New York City"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #NYP
* group.element[19].target.display = "Plate, New York City"
* group.element[20].code = #TMP
* group.element[20].display = "Plate, Thayer-Martin"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #TMP
* group.element[20].target.display = "Plate, Thayer-Martin"
* group.element[21].code = #ANP
* group.element[21].display = "Plates, Anaerobic"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #ANP
* group.element[21].target.display = "Plates, Anaerobic"
* group.element[22].code = #BAP
* group.element[22].display = "Plates, Blood Agar"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #BAP
* group.element[22].target.display = "Plates, Blood Agar"
* group.element[23].code = #PRIME
* group.element[23].display = "Pump Prime"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #PRIME
* group.element[23].target.display = "Pump Prime"
* group.element[24].code = #PUMP
* group.element[24].display = "Pump Specimen"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #PUMP
* group.element[24].target.display = "Pump Specimen"
* group.element[25].code = #QC5
* group.element[25].display = "Quality Control For Micro"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #QC5
* group.element[25].target.display = "Quality Control For Micro"
* group.element[26].code = #SCLP
* group.element[26].display = "Scalp, Fetal Vein"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #SCLP
* group.element[26].target.display = "Scalp, Fetal Vein"
* group.element[27].code = #SCRAPS
* group.element[27].display = "Scrapings"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #129323009
* group.element[27].target.display = "Scraping - action"
* group.element[28].code = #SHA
* group.element[28].display = "Shaving"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #SHA
* group.element[28].target.display = "Shaving"
* group.element[29].code = #SWA
* group.element[29].display = "Swab"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #SWA
* group.element[29].target.display = "Swab"
* group.element[30].code = #SWD
* group.element[30].display = "Swab, Dacron tipped"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #SWD
* group.element[30].target.display = "Swab, Dacron tipped"
* group.element[31].code = #WOOD
* group.element[31].display = "Swab, Wooden Shaft"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #WOOD
* group.element[31].target.display = "Swab, Wooden Shaft"
* group.element[32].code = #TMOT
* group.element[32].display = "Transport Media,"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #TMOT
* group.element[32].target.display = "Transport Media,"
* group.element[33].code = #TMAN
* group.element[33].display = "Transport Media, Anaerobic"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #TMAN
* group.element[33].target.display = "Transport Media, Anaerobic"
* group.element[34].code = #TMCH
* group.element[34].display = "Transport Media, Chalamydia"
* group.element[34].target.equivalence = #equivalent
* group.element[34].target.code = #TMCH
* group.element[34].target.display = "Transport Media, Chalamydia"
* group.element[35].code = #TMM4
* group.element[35].display = "Transport Media, M4"
* group.element[35].target.equivalence = #equivalent
* group.element[35].target.code = #TMM4
* group.element[35].target.display = "Transport Media, M4"
* group.element[36].code = #TMMY
* group.element[36].display = "Transport Media, Mycoplasma"
* group.element[36].target.equivalence = #equivalent
* group.element[36].target.code = #TMMY
* group.element[36].target.display = "Transport Media, Mycoplasma"
* group.element[37].code = #TMPV
* group.element[37].display = "Transport Media, PVA"
* group.element[37].target.equivalence = #equivalent
* group.element[37].target.code = #TMPV
* group.element[37].target.display = "Transport Media, PVA"
* group.element[38].code = #TMSC
* group.element[38].display = "Transport Media, Stool Culture"
* group.element[38].target.equivalence = #equivalent
* group.element[38].target.code = #TMSC
* group.element[38].target.display = "Transport Media, Stool Culture"
* group.element[39].code = #TMUP
* group.element[39].display = "Transport Media, Ureaplasma"
* group.element[39].target.equivalence = #equivalent
* group.element[39].target.code = #TMUP
* group.element[39].target.display = "Transport Media, Ureaplasma"
* group.element[40].code = #TMVI
* group.element[40].display = "Transport Media, Viral"
* group.element[40].target.equivalence = #equivalent
* group.element[40].target.code = #TMVI
* group.element[40].target.display = "Transport Media, Viral"
* group.element[41].code = #VENIP
* group.element[41].display = "Venipuncture"
* group.element[41].target.equivalence = #equivalent
* group.element[41].target.code = #VENIP
* group.element[41].target.display = "Venipuncture"
