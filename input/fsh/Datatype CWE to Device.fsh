// HL7 Data Type - FHIR R4_ CWE[Device] - Sheet1.csv
Instance: DatatypeCWEToDevice
InstanceOf: ConceptMap
Title: "Datatype CWE to Device Map"
* title = "Datatype CWE to Device Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype CWE to the FHIR Device Resource."
* id = "datatype-cwe-to-device"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-cwe-to-device"
* version = "1.0"
* name = "DatatypeCWEToDevice"
* status = #active
* experimental = true
* date = "2024-10-30"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "CWE"
* targetUri = "Device"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype CWE to Device.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/13LJngzZ_t2CzddzgZu8MR1dbNJfyH9mWN1cRzRs7VIQ/edit#gid=0"
* group.element[0].code = #CWE.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #identifier[1].value
* group.element[0].target.display = "identifier[1].value"
* group.element[1].code = #CWE.1
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"ST"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 0
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Identifier"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #definition(DeviceDefinition.identifier[1].value)
* group.element[1].target.display = "definition(DeviceDefinition.identifier[1].value)"
* group.element[2].code = #CWE.2
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ST"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 0
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Text"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #deviceName[1].name
* group.element[2].target.display = "deviceName[1].name"
* group.element[3].code = #CWE.2
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"ST"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 0
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Text"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #deviceName[1].type
* group.element[3].target.display = "deviceName[1].type"
* group.element[4].code = #CWE.3
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"ID"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 0
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Name of Coding System"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #identifier[1].system
* group.element[4].target.display = "identifier[1].system"
* group.element[5].code = #CWE.3
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"ID"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 0
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Name of Coding System"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #definition(DeviceDefinition.identifier[1].system)
* group.element[5].target.display = "definition(DeviceDefinition.identifier[1].system)"
* group.element[6].code = #CWE.4
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"ST"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = 0
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = 1
* group.element[6].display = "Alternate Identifier"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #identifier[2].value
* group.element[6].target.display = "identifier[2].value"
* group.element[7].code = #CWE.4
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"ST"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 0
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Alternate Identifier"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #definition(DeviceDefinition.identifier[2].value)
* group.element[7].target.display = "definition(DeviceDefinition.identifier[2].value)"
* group.element[8].code = #CWE.5
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"ST"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = 0
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = 1
* group.element[8].display = "Alternate Text"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #deviceName[2].name
* group.element[8].target.display = "deviceName[2].name"
* group.element[9].code = #CWE.5
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"ST"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = 0
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = 1
* group.element[9].display = "Alternate Text"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #deviceName[2].type
* group.element[9].target.display = "deviceName[2].type"
* group.element[10].code = #CWE.6
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"ID"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = 0
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = 1
* group.element[10].display = "Name of Alternate Coding System"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #identifier[2].system
* group.element[10].target.display = "identifier[2].system"
* group.element[11].code = #CWE.6
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "type"
* group.element[11].extension[0].extension[0].valueCode = #"ID"
* group.element[11].extension[0].extension[1].url = "cardinalityMin"
* group.element[11].extension[0].extension[1].valueInteger = 0
* group.element[11].extension[0].extension[2].url = "cardinalityMax"
* group.element[11].extension[0].extension[2].valueInteger = 1
* group.element[11].display = "Name of Alternate Coding System"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #definition(DeviceDefinition.identifier[2].system)
* group.element[11].target.display = "definition(DeviceDefinition.identifier[2].system)"
* group.element[12].code = #CWE.9
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"ST"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = 0
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = 1
* group.element[12].display = "Original Text"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #deviceName[4].name
* group.element[12].target.display = "deviceName[4].name"
* group.element[13].code = #CWE.9
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "type"
* group.element[13].extension[0].extension[0].valueCode = #"ST"
* group.element[13].extension[0].extension[1].url = "cardinalityMin"
* group.element[13].extension[0].extension[1].valueInteger = 0
* group.element[13].extension[0].extension[2].url = "cardinalityMax"
* group.element[13].extension[0].extension[2].valueInteger = 1
* group.element[13].display = "Original Text"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #deviceName[4].type
* group.element[13].target.display = "deviceName[4].type"
* group.element[14].code = #CWE.10
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "type"
* group.element[14].extension[0].extension[0].valueCode = #"ST"
* group.element[14].extension[0].extension[1].url = "cardinalityMin"
* group.element[14].extension[0].extension[1].valueInteger = 0
* group.element[14].extension[0].extension[2].url = "cardinalityMax"
* group.element[14].extension[0].extension[2].valueInteger = 1
* group.element[14].display = "Second Alternate Identifier"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #identifier[3].value
* group.element[14].target.display = "identifier[3].value"
* group.element[15].code = #CWE.10
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "type"
* group.element[15].extension[0].extension[0].valueCode = #"ST"
* group.element[15].extension[0].extension[1].url = "cardinalityMin"
* group.element[15].extension[0].extension[1].valueInteger = 0
* group.element[15].extension[0].extension[2].url = "cardinalityMax"
* group.element[15].extension[0].extension[2].valueInteger = 1
* group.element[15].display = "Second Alternate Identifier"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #definition(DeviceDefinition.identifier[3].value)
* group.element[15].target.display = "definition(DeviceDefinition.identifier[3].value)"
* group.element[16].code = #CWE.11
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "type"
* group.element[16].extension[0].extension[0].valueCode = #"ST"
* group.element[16].extension[0].extension[1].url = "cardinalityMin"
* group.element[16].extension[0].extension[1].valueInteger = 0
* group.element[16].extension[0].extension[2].url = "cardinalityMax"
* group.element[16].extension[0].extension[2].valueInteger = 1
* group.element[16].display = "Second Alternate Text"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #deviceName[3].name
* group.element[16].target.display = "deviceName[3].name"
* group.element[17].code = #CWE.11
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "type"
* group.element[17].extension[0].extension[0].valueCode = #"ST"
* group.element[17].extension[0].extension[1].url = "cardinalityMin"
* group.element[17].extension[0].extension[1].valueInteger = 0
* group.element[17].extension[0].extension[2].url = "cardinalityMax"
* group.element[17].extension[0].extension[2].valueInteger = 1
* group.element[17].display = "Second Alternate Text"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #deviceName[3].type
* group.element[17].target.display = "deviceName[3].type"
* group.element[18].code = #CWE.12
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "type"
* group.element[18].extension[0].extension[0].valueCode = #"ID"
* group.element[18].extension[0].extension[1].url = "cardinalityMin"
* group.element[18].extension[0].extension[1].valueInteger = 0
* group.element[18].extension[0].extension[2].url = "cardinalityMax"
* group.element[18].extension[0].extension[2].valueInteger = 1
* group.element[18].display = "Name of Second Alternate Coding System"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #identifier[3].system
* group.element[18].target.display = "identifier[3].system"
* group.element[19].code = #CWE.12
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "type"
* group.element[19].extension[0].extension[0].valueCode = #"ID"
* group.element[19].extension[0].extension[1].url = "cardinalityMin"
* group.element[19].extension[0].extension[1].valueInteger = 0
* group.element[19].extension[0].extension[2].url = "cardinalityMax"
* group.element[19].extension[0].extension[2].valueInteger = 1
* group.element[19].display = "Name of Second Alternate Coding System"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #definition(DeviceDefinition.identifier[3].system)
* group.element[19].target.display = "definition(DeviceDefinition.identifier[3].system)"
