// HL7 Concept Map_ AddressType[Use] - Sheet1.csv
Instance: TableHL70190ToAddressUse
InstanceOf: ConceptMap
Title: "Table HL70190 to Address Use Map"
Usage: #definition
* title = "Table HL70190 to Address Use Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70190 to the FHIR Address Use Value Set."
* id = "table-hl70190-to-address-use"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70190-to-address-use"
* name = "TableHL70190ToAddressUse"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0190"
* targetUri = "http://hl7.org/fhir/ValueSet/address-use"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70190 to Address Use.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1eJAihkIzcTOd9SY-xoXaboRDdUM6T8Wabi73wurU1hA/edit#gid=0"
* group.element[0].code = #BA
* group.element[0].display = "Bad address"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #old
* group.element[0].target.display = "Old / Incorrect"
* group.element[1].code = #BI
* group.element[1].display = "Billing Address"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #billing
* group.element[1].target.display = "Billing"
* group.element[2].code = #N
* group.element[2].display = "Birth (nee) (birth address, not otherwise specified)"
* group.element[2].target.equivalence = #unmatched
* group.element[3].code = #BDL
* group.element[3].display = "Birth delivery location (address where birth occurred)"
* group.element[3].target.equivalence = #unmatched
* group.element[4].code = #F
* group.element[4].display = "Country Of Origin"
* group.element[4].target.equivalence = #unmatched
* group.element[5].code = #C
* group.element[5].display = "Current Or Temporary"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #temp
* group.element[5].target.display = "Temporary"
* group.element[6].code = #B
* group.element[6].display = "Firm/Business"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #work
* group.element[6].target.display = "Work"
* group.element[7].code = #H
* group.element[7].display = "Home"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #home
* group.element[7].target.display = "Home"
* group.element[8].code = #L
* group.element[8].display = "Legal Address"
* group.element[8].target.equivalence = #unmatched
* group.element[9].code = #M
* group.element[9].display = "Mailing"
* group.element[9].target.equivalence = #unmatched
* group.element[10].code = #O
* group.element[10].display = "Office/Business"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #work
* group.element[10].target.display = "Work"
* group.element[11].code = #P
* group.element[11].display = "Permanent"
* group.element[11].target.equivalence = #unmatched
* group.element[12].code = #RH
* group.element[12].display = "Registry home"
* group.element[12].target.equivalence = #unmatched
* group.element[13].code = #BR
* group.element[13].display = "Residence at birth (home address at time of birth)"
* group.element[13].target.equivalence = #unmatched
* group.element[14].code = #S
* group.element[14].display = "Service Location"
* group.element[14].target.equivalence = #unmatched
* group.element[15].code = #SH
* group.element[15].display = "Shipping Address"
* group.element[15].target.equivalence = #unmatched
* group.element[16].code = #TM
* group.element[16].display = "Tube Address"
* group.element[16].target.equivalence = #unmatched
* group.element[17].code = #V
* group.element[17].display = "Vacation"
* group.element[17].target.equivalence = #unmatched
