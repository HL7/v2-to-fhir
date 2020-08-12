// HL7 Concept Map_ Admission Level of Care Code - Sheet1.csv
Instance: TableHL70432toV20432
InstanceOf: ConceptMap
Title: "Table HL70432 to V2 0432 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70432 to the FHIR V2 0432 Value Set."
* id = "table-hl70432-to-v2-0432"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70432-to-v2-0432"
* version = "1.0"
* name = "TableHL70432toV20432"
* status = #active
* experimental = true
* date = "2020-08-12"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70432"
* targetUri = "http://terminology.hl7.org/CodeSystem/v2-0432"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70432 to V2 0432.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1Va5F4KJWOsdZ02fAh_LpIR_FBhHn99uJnNqxGoaFcnc/edit#gid=0"
* group.element[0].code = #AC
* group.element[0].display = "Acute"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #AC
* group.element[0].target.display = "Acute"
* group.element[1].code = #CH
* group.element[1].display = "Chronic"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #CH
* group.element[1].target.display = "Chronic"
* group.element[2].code = #CO
* group.element[2].display = "Comatose"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #CO
* group.element[2].target.display = "Comatose"
* group.element[3].code = #CR
* group.element[3].display = "Critical"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #CR
* group.element[3].target.display = "Critical"
* group.element[4].code = #IM
* group.element[4].display = "Improved"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #IM
* group.element[4].target.display = "Improved"
* group.element[5].code = #MO
* group.element[5].display = "Moribund"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #MO
* group.element[5].target.display = "Moribund"
