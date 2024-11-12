// HL7 Concept Map_ EventRelatedPeriod - Sheet1.csv
Instance: TableHL70528ToV3TimingEvent
InstanceOf: ConceptMap
Title: "Table HL70528 to V3 TimingEvent Map"
* title = "Table HL70528 to V3 TimingEvent Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70528 to the FHIR V3 TimingEvent Value Set."
* id = "table-hl70528-to-v3-timingevent"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70528-to-v3-timingevent"
* version = "1.0"
* name = "TableHL70528ToV3TimingEvent"
* status = #active
* experimental = true
* date = "2024-11-12"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70528"
* targetUri = "http://terminology.hl7.org/CodeSystem/v3-TimingEvent"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70528 to V3 TimingEvent.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/17o6vrrfJcGXA4EBuYcVhZs98dAJe5VS_TZ0LJYmVoTU/edit#gid=0"
* group.element[0].code = #HS
* group.element[0].display = "the hour of sleep (e.g., H18-22)"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #HS
* group.element[0].target.display = "HS"
* group.element[1].code = #AC
* group.element[1].display = "before meal (from lat. ante cibus)"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #AC
* group.element[1].target.display = "AC"
* group.element[2].code = #PC
* group.element[2].display = "after meal (from lat. post cibus)"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #PC
* group.element[2].target.display = "PC"
* group.element[3].code = #IC
* group.element[3].display = "between meals (from lat. inter cibus)"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #IC
* group.element[3].target.display = "between meals (from lat. inter cibus)"
* group.element[4].code = #ACM
* group.element[4].display = "before breakfast (from lat. ante cibus matutinus)"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #ACM
* group.element[4].target.display = "ACM"
* group.element[5].code = #ACD
* group.element[5].display = "before lunch (from lat. ante cibus diurnus)"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #ACD
* group.element[5].target.display = "ACD"
* group.element[6].code = #ACV
* group.element[6].display = "before dinner (from lat. ante cibus vespertinus)"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #ACV
* group.element[6].target.display = "ACV"
* group.element[7].code = #PCM
* group.element[7].display = "after breakfast (from lat. post cibus matutinus)"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #PCM
* group.element[7].target.display = "PCM"
* group.element[8].code = #PCD
* group.element[8].display = "after lunch (from lat. post cibus diurnus)"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #PCD
* group.element[8].target.display = "PCD"
* group.element[9].code = #PCV
* group.element[9].display = "after dinner (from lat. post cibus vespertinus)"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #PCV
* group.element[9].target.display = "PCV"
* group.element[10].code = #ICM
* group.element[10].display = "between breakfast and lunch"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #ICM
* group.element[10].target.display = "between breakfast and lunch"
* group.element[11].code = #ICD
* group.element[11].display = "between lunch and dinner"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #ICD
* group.element[11].target.display = "between lunch and dinner"
* group.element[12].code = #ICV
* group.element[12].display = "between dinner and the hour of sleep"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #ICV
* group.element[12].target.display = "between dinner and the hour of sleep"
