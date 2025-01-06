// HL7 Data Type - FHIR R4_ XAD[Address] - Sheet1.csv
Instance: DatatypeXADToAddress
InstanceOf: ConceptMap
Title: "Datatype XAD  to Address Map"
* title = "Datatype XAD  to Address Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype XAD to the FHIR Address Data Type."
* id = "datatype-xad-to-address"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-xad-to-address"
* version = "1.0"
* name = "DatatypeXADToAddress"
* status = #active
* experimental = true
* date = "2025-01-06"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "XAD"
* targetUri = "Address"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype XAD to Address.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1hSTEur557TIKPEKZRoprVw-uNpw12JZtri-iQsc4uQ0/edit#gid=0"
* group.element[0].code = #XAD.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"SAD"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Street Address"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #line[1-3]
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"string"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = -1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = -1
* group.element[0].target.display = "line[1-3]"
* group.element[1].code = #XAD.2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"ST"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 0
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Other Designation"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #line[4]
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"string"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = -1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = -1
* group.element[1].target.display = "line[4]"
* group.element[1].target.comment = "Note that XAD.1 is mapped to Address.line as well using the SAD data type.  That may yield up to three address lines."
* group.element[2].code = #XAD.3
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ST"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 0
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "City"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #city
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"string"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 1
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = 1
* group.element[2].target.display = "city"
* group.element[3].code = #XAD.4
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"ST"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 0
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "State or Province"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #state
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"string"
* group.element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[1].valueInteger = 1
* group.element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[2].valueInteger = 1
* group.element[3].target.display = "state"
* group.element[4].code = #XAD.5
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"ST"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 0
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Zip or Postal Code"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #postalCode
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"string"
* group.element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[4].target.extension[0].extension[1].valueInteger = 1
* group.element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[4].target.extension[0].extension[2].valueInteger = 1
* group.element[4].target.display = "postalCode"
* group.element[5].code = #XAD.6
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"ID"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 0
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Country"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #country
* group.element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].target.extension[0].extension[0].url = "type"
* group.element[5].target.extension[0].extension[0].valueCode = #"string"
* group.element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[5].target.extension[0].extension[1].valueInteger = 1
* group.element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[5].target.extension[0].extension[2].valueInteger = 1
* group.element[5].target.display = "country"
* group.element[6].code = #XAD.7
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"ID"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = 0
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = 1
* group.element[6].display = "Address Type"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #type
* group.element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].target.extension[0].extension[0].url = "type"
* group.element[6].target.extension[0].extension[0].valueCode = #"code"
* group.element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[6].target.extension[0].extension[1].valueInteger = 1
* group.element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[6].target.extension[0].extension[2].valueInteger = 1
* group.element[6].target.display = "type"
* group.element[7].code = #XAD.7
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"ID"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 0
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Address Type"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #use
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"code"
* group.element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[7].target.extension[0].extension[1].valueInteger = 1
* group.element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[7].target.extension[0].extension[2].valueInteger = 1
* group.element[7].target.display = "use"
* group.element[8].code = #XAD.7
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"ID"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = 0
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = 1
* group.element[8].display = "Address Type"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #extension[1].url
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"uri"
* group.element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[8].target.extension[0].extension[1].valueInteger = 1
* group.element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[8].target.extension[0].extension[2].valueInteger = 1
* group.element[8].target.display = "extension[1].url"
* group.element[9].code = #XAD.7
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"ID"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = 0
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = 1
* group.element[9].display = "Address Type"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #extension[1].valueCode
* group.element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].target.extension[0].extension[0].url = "type"
* group.element[9].target.extension[0].extension[0].valueCode = #"code"
* group.element[9].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[9].target.extension[0].extension[1].valueInteger = 1
* group.element[9].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[9].target.extension[0].extension[2].valueInteger = 1
* group.element[9].target.display = "extension[1].valueCode"
* group.element[10].code = #XAD.7
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"ID"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = 0
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = 1
* group.element[10].display = "Address Type"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #extension[2].uri
* group.element[10].target.display = "extension[2].uri"
* group.element[11].code = #XAD.7
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "type"
* group.element[11].extension[0].extension[0].valueCode = #"ID"
* group.element[11].extension[0].extension[1].url = "cardinalityMin"
* group.element[11].extension[0].extension[1].valueInteger = 0
* group.element[11].extension[0].extension[2].url = "cardinalityMax"
* group.element[11].extension[0].extension[2].valueInteger = 1
* group.element[11].display = "Address Type"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #extension[2].valueCodeableConcept.coding.value
* group.element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].target.extension[0].extension[0].url = "type"
* group.element[11].target.extension[0].extension[0].valueCode = #"code"
* group.element[11].target.display = "extension[2].valueCodeableConcept.coding.value"
* group.element[12].code = #XAD.7
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"ID"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = 0
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = 1
* group.element[12].display = "Address Type"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #extension[2].valueCodeableConcept.coding.system
* group.element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].target.extension[0].extension[0].url = "type"
* group.element[12].target.extension[0].extension[0].valueCode = #"uri"
* group.element[12].target.display = "extension[2].valueCodeableConcept.coding.system"
* group.element[13].code = #XAD.9
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "type"
* group.element[13].extension[0].extension[0].valueCode = #"CWE"
* group.element[13].extension[0].extension[1].url = "cardinalityMin"
* group.element[13].extension[0].extension[1].valueInteger = 0
* group.element[13].extension[0].extension[2].url = "cardinalityMax"
* group.element[13].extension[0].extension[2].valueInteger = 1
* group.element[13].display = "County/Parish Code"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #district
* group.element[13].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].target.extension[0].extension[0].url = "type"
* group.element[13].target.extension[0].extension[0].valueCode = #"string"
* group.element[13].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[13].target.extension[0].extension[1].valueInteger = 1
* group.element[13].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[13].target.extension[0].extension[2].valueInteger = 1
* group.element[13].target.display = "district"
* group.element[14].code = #XAD.10
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "type"
* group.element[14].extension[0].extension[0].valueCode = #"CWE"
* group.element[14].extension[0].extension[1].url = "cardinalityMin"
* group.element[14].extension[0].extension[1].valueInteger = 0
* group.element[14].extension[0].extension[2].url = "cardinalityMax"
* group.element[14].extension[0].extension[2].valueInteger = 1
* group.element[14].display = "Census Tract"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #extension[3].url
* group.element[14].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].target.extension[0].extension[0].url = "type"
* group.element[14].target.extension[0].extension[0].valueCode = #"uri"
* group.element[14].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[14].target.extension[0].extension[1].valueInteger = 1
* group.element[14].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[14].target.extension[0].extension[2].valueInteger = 1
* group.element[14].target.display = "extension[3].url"
* group.element[15].code = #XAD.10
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "type"
* group.element[15].extension[0].extension[0].valueCode = #"CWE"
* group.element[15].extension[0].extension[1].url = "cardinalityMin"
* group.element[15].extension[0].extension[1].valueInteger = 0
* group.element[15].extension[0].extension[2].url = "cardinalityMax"
* group.element[15].extension[0].extension[2].valueInteger = 1
* group.element[15].display = "Census Tract"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #extension[3].valueCode
* group.element[15].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].target.extension[0].extension[0].url = "type"
* group.element[15].target.extension[0].extension[0].valueCode = #"string"
* group.element[15].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[15].target.extension[0].extension[1].valueInteger = 1
* group.element[15].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[15].target.extension[0].extension[2].valueInteger = 1
* group.element[15].target.display = "extension[3].valueCode"
* group.element[16].code = #XAD.12
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "type"
* group.element[16].extension[0].extension[0].valueCode = #"DR"
* group.element[16].extension[0].extension[1].url = "cardinalityMin"
* group.element[16].extension[0].extension[1].valueInteger = 0
* group.element[16].extension[0].extension[2].url = "cardinalityMax"
* group.element[16].extension[0].extension[2].valueInteger = 1
* group.element[16].display = "Address Validity Range"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #period
* group.element[16].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].target.extension[0].extension[0].url = "type"
* group.element[16].target.extension[0].extension[0].valueCode = #"Period"
* group.element[16].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[16].target.extension[0].extension[1].valueInteger = 1
* group.element[16].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[16].target.extension[0].extension[2].valueInteger = 1
* group.element[16].target.display = "period"
* group.element[17].code = #XAD.13
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "type"
* group.element[17].extension[0].extension[0].valueCode = #"DTM"
* group.element[17].extension[0].extension[1].url = "cardinalityMin"
* group.element[17].extension[0].extension[1].valueInteger = 0
* group.element[17].extension[0].extension[2].url = "cardinalityMax"
* group.element[17].extension[0].extension[2].valueInteger = 1
* group.element[17].display = "Effective Date"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #period.start
* group.element[17].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].target.extension[0].extension[0].url = "type"
* group.element[17].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[17].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[17].target.extension[0].extension[1].valueInteger = 1
* group.element[17].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[17].target.extension[0].extension[2].valueInteger = 1
* group.element[17].target.display = "period.start"
* group.element[18].code = #XAD.14
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "type"
* group.element[18].extension[0].extension[0].valueCode = #"DTM"
* group.element[18].extension[0].extension[1].url = "cardinalityMin"
* group.element[18].extension[0].extension[1].valueInteger = 0
* group.element[18].extension[0].extension[2].url = "cardinalityMax"
* group.element[18].extension[0].extension[2].valueInteger = 1
* group.element[18].display = "Expiration Date"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #period.end
* group.element[18].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].target.extension[0].extension[0].url = "type"
* group.element[18].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[18].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[18].target.extension[0].extension[1].valueInteger = 1
* group.element[18].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[18].target.extension[0].extension[2].valueInteger = 1
* group.element[18].target.display = "period.end"
* group.element[19].code = #XAD.19
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "type"
* group.element[19].extension[0].extension[0].valueCode = #"ST"
* group.element[19].extension[0].extension[1].url = "cardinalityMin"
* group.element[19].extension[0].extension[1].valueInteger = 0
* group.element[19].extension[0].extension[2].url = "cardinalityMax"
* group.element[19].extension[0].extension[2].valueInteger = 1
* group.element[19].display = "Addressee"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #line[5]
* group.element[19].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].target.extension[0].extension[0].url = "type"
* group.element[19].target.extension[0].extension[0].valueCode = #"string"
* group.element[19].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[19].target.extension[0].extension[1].valueInteger = -1
* group.element[19].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[19].target.extension[0].extension[2].valueInteger = -1
* group.element[19].target.display = "line[5]"
* group.element[19].target.comment = "There is an existing ADXP extension if we prefer"
