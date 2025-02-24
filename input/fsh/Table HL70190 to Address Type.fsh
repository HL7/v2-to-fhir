// HL7 Concept Map_ AddressType[Type] - Sheet1.csv
Instance: TableHL70190ToAddressType
InstanceOf: ConceptMap
Title: "Table HL70190 to Address Type Map"
Usage: #definition
* title = "Table HL70190 to Address Type Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70190 to the FHIR Address Type Value Set."
* id = "table-hl70190-to-address-type"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70190-to-address-type"
* name = "TableHL70190ToAddressType"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0190"
* targetUri = "http://hl7.org/fhir/ValueSet/address-type"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70190 to Address Type.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1NwT6PQDhxnzaKcGOdZkioyHlt6WgaZBe_0KM_UJFNxE/edit#gid=0"
* group.element[0].code = #M
* group.element[0].display = "Mailing"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #postal
* group.element[0].target.display = "Postal"
* group.element[1].code = #SH
* group.element[1].display = "Shipping Address"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #postal
* group.element[1].target.display = "Postal"
* group.element[2].code = #BA
* group.element[2].display = "Bad address"
* group.element[2].target.equivalence = #unmatched
* group.element[3].code = #BI
* group.element[3].display = "Billing Address"
* group.element[3].target.equivalence = #unmatched
* group.element[4].code = #N
* group.element[4].display = "Birth (nee) (birth address, not otherwise specified)"
* group.element[4].target.equivalence = #unmatched
* group.element[5].code = #BDL
* group.element[5].display = "Birth delivery location (address where birth occurred)"
* group.element[5].target.equivalence = #unmatched
* group.element[6].code = #F
* group.element[6].display = "Country Of Origin"
* group.element[6].target.equivalence = #unmatched
* group.element[7].code = #C
* group.element[7].display = "Current Or Temporary"
* group.element[7].target.equivalence = #unmatched
* group.element[8].code = #B
* group.element[8].display = "Firm/Business"
* group.element[8].target.equivalence = #unmatched
* group.element[9].code = #H
* group.element[9].display = "Home"
* group.element[9].target.equivalence = #unmatched
* group.element[10].code = #L
* group.element[10].display = "Legal Address"
* group.element[10].target.equivalence = #unmatched
* group.element[11].code = #O
* group.element[11].display = "Office/Business"
* group.element[11].target.equivalence = #unmatched
* group.element[12].code = #P
* group.element[12].display = "Permanent"
* group.element[12].target.equivalence = #unmatched
* group.element[13].code = #RH
* group.element[13].display = "Registry home"
* group.element[13].target.equivalence = #unmatched
* group.element[14].code = #BR
* group.element[14].display = "Residence at birth (home address at time of birth)"
* group.element[14].target.equivalence = #unmatched
* group.element[15].code = #S
* group.element[15].display = "Service Location"
* group.element[15].target.equivalence = #unmatched
* group.element[16].code = #TM
* group.element[16].display = "Tube Address"
* group.element[16].target.equivalence = #unmatched
* group.element[17].code = #V
* group.element[17].display = "Vacation"
* group.element[17].target.equivalence = #unmatched
