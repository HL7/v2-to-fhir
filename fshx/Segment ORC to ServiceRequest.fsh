// HL7 Segment - FHIR R4_ ORC[ServiceRequest] - ORC.csv
Instance: SegmentORCtoServiceRequest
InstanceOf: ConceptMap
Title: "Segment ORC to ServiceRequest Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment ORC to the FHIR ServiceRequest Resource."
* id = "segment-orc-to-servicerequest"
* url = "http://hl7.org/fhir/v2-tofhir/segment-orc-to-servicerequest"
* version = "1.0"
* name = "SegmentORCtoServiceRequest"
* status = #active
* experimental = true
* date = "2020-08-10"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ORC"
* targetUri = "ServiceRequest"
* extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment ORC to ServiceRequest.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/11VBF5TIRJTfRwkRIK1XH-k40dZqCd3g3a0sBY-zJU4Q/edit#gid=0"
* group.element[0].code = #ORC-1
* group.element[0].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ID"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Order Control"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #status
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"code"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "status"
* group.element[0].target.dependsOn[0].property = "vocabulary-map"
* group.element[0].target.dependsOn[0].value = "OrderControlCode[ServiceRequest.status]"
* group.element[0].target.product[0].property = "antlr"
* group.element[0].target.product[0].value = "IF ORC-5 NOT VALUED"
* group.element[0].target.product[1].property = "fhirpath"
* group.element[0].target.product[1].value = "ORC.element(\"5\").empty()"
* group.element[1].code = #ORC-1
* group.element[1].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"ID"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Order Control"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #intent
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"code"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.display = "intent"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = "\"order\""
* group.element[2].code = #ORC-2
* group.element[2].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"EI"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Placer Order Number"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #identifier[1]
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"Identifier"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 0
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = -1
* group.element[2].target.display = "identifier[1]"
* group.element[2].target.dependsOn[0].property = "data-type-map"
* group.element[2].target.dependsOn[0].value = "EI[Identifier]"
* group.element[2].target.product[0].property = "antlr"
* group.element[2].target.product[0].value = "IF OBR-2 NOT VALUED"
* group.element[2].target.product[1].property = "fhirpath"
* group.element[2].target.product[1].value = "OBR.element(\"2\").empty()"
* group.element[3].code = #ORC-2
* group.element[3].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"EI"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Placer Order Number"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #identifier[1].type.coding.code
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"code"
* group.element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[1].valueInteger = 0
* group.element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[2].valueInteger = 1
* group.element[3].target.display = "identifier[1].type.coding.code"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = "\"PLAC\""
* group.element[3].target.product[0].property = "antlr"
* group.element[3].target.product[0].value = "IF OBR-2 NOT VALUED"
* group.element[3].target.product[1].property = "fhirpath"
* group.element[3].target.product[1].value = "OBR.element(\"2\").empty()"
* group.element[4].code = #ORC-2
* group.element[4].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"EI"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Placer Order Number"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #identifier[1].type.coding.system
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"uri"
* group.element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[4].target.extension[0].extension[1].valueInteger = 0
* group.element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[4].target.extension[0].extension[2].valueInteger = 1
* group.element[4].target.display = "identifier[1].type.coding.system"
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = "\"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[4].target.product[0].property = "antlr"
* group.element[4].target.product[0].value = "IF OBR-2 NOT VALUED"
* group.element[4].target.product[1].property = "fhirpath"
* group.element[4].target.product[1].value = "OBR.element(\"2\").empty()"
* group.element[5].code = #ORC-3
* group.element[5].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"EI"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 1
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Filler Order Number"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #identifier[2]
* group.element[5].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[5].target.extension[0].extension[0].url = "type"
* group.element[5].target.extension[0].extension[0].valueCode = #"Identifier"
* group.element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[5].target.extension[0].extension[1].valueInteger = 0
* group.element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[5].target.extension[0].extension[2].valueInteger = -1
* group.element[5].target.display = "identifier[2]"
* group.element[5].target.dependsOn[0].property = "data-type-map"
* group.element[5].target.dependsOn[0].value = "EI[Identifier]"
* group.element[5].target.product[0].property = "antlr"
* group.element[5].target.product[0].value = "IF OBR-3 NOT VALUED"
* group.element[5].target.product[1].property = "fhirpath"
* group.element[5].target.product[1].value = "OBR.element(\"3\").empty()"
* group.element[6].code = #ORC-3
* group.element[6].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"EI"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = 1
* group.element[6].display = "Filler Order Number"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #identifier[2].type.coding.code
* group.element[6].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[6].target.extension[0].extension[0].url = "type"
* group.element[6].target.extension[0].extension[0].valueCode = #"code"
* group.element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[6].target.extension[0].extension[1].valueInteger = 0
* group.element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[6].target.extension[0].extension[2].valueInteger = 1
* group.element[6].target.display = "identifier[2].type.coding.code"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = "\"FILL\""
* group.element[6].target.product[0].property = "antlr"
* group.element[6].target.product[0].value = "IF OBR-3 NOT VALUED"
* group.element[6].target.product[1].property = "fhirpath"
* group.element[6].target.product[1].value = "OBR.element(\"3\").empty()"
* group.element[7].code = #ORC-3
* group.element[7].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"EI"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Filler Order Number"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #identifier[2].type.coding.system
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"uri"
* group.element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[7].target.extension[0].extension[1].valueInteger = 0
* group.element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[7].target.extension[0].extension[2].valueInteger = 1
* group.element[7].target.display = "identifier[2].type.coding.system"
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = "\"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[7].target.product[0].property = "antlr"
* group.element[7].target.product[0].value = "IF OBR-3 NOT VALUED"
* group.element[7].target.product[1].property = "fhirpath"
* group.element[7].target.product[1].value = "OBR.element(\"3\").empty()"
* group.element[8].code = #ORC-4
* group.element[8].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"EIP - This is EI in many versions including 2.9"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = 1
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = 1
* group.element[8].display = "Placer Group Number"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #identifier[3]
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"Identifier"
* group.element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[8].target.extension[0].extension[1].valueInteger = 0
* group.element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[8].target.extension[0].extension[2].valueInteger = -1
* group.element[8].target.display = "identifier[3]"
* group.element[8].target.dependsOn[0].property = "data-type-map"
* group.element[8].target.dependsOn[0].value = "EIP[Identifier-PlacerAssignedIdentifier]"
* group.element[9].code = #ORC-4
* group.element[9].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"EIP - This is EI in many versions including 2.9"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = 1
* group.element[9].display = "Placer Group Number"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #identifier[4]
* group.element[9].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[9].target.extension[0].extension[0].url = "type"
* group.element[9].target.extension[0].extension[0].valueCode = #"Identifier"
* group.element[9].target.display = "identifier[4]"
* group.element[9].target.dependsOn[0].property = "data-type-map"
* group.element[9].target.dependsOn[0].value = "EIP[Identifier-FillerAssignedIdentifier]"
* group.element[10].code = #ORC-5
* group.element[10].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"ID"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = 1
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = 1
* group.element[10].display = "Order Status"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #status
* group.element[10].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[10].target.extension[0].extension[0].url = "type"
* group.element[10].target.extension[0].extension[0].valueCode = #"code"
* group.element[10].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[10].target.extension[0].extension[1].valueInteger = 1
* group.element[10].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[10].target.extension[0].extension[2].valueInteger = 1
* group.element[10].target.display = "status"
* group.element[10].target.dependsOn[0].property = "vocabulary-map"
* group.element[10].target.dependsOn[0].value = "OrderStatus"
* group.element[11].code = #ORC-7
* group.element[11].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "type"
* group.element[11].extension[0].extension[0].valueCode = #"TQ"
* group.element[11].extension[0].extension[1].url = "cardinalityMin"
* group.element[11].extension[0].extension[1].valueInteger = -1
* group.element[11].extension[0].extension[2].url = "cardinalityMax"
* group.element[11].extension[0].extension[2].valueInteger = -1
* group.element[11].display = "Quantity/Timing"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #quantity[x]
* group.element[11].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[11].target.extension[0].extension[0].url = "cardinalityMin"
* group.element[11].target.extension[0].extension[0].valueInteger = 0
* group.element[11].target.extension[0].extension[1].url = "cardinalityMax"
* group.element[11].target.extension[0].extension[1].valueInteger = 1
* group.element[11].target.display = "quantity[x]"
* group.element[11].target.dependsOn[0].property = "data-type-map"
* group.element[11].target.dependsOn[0].value = "TQ[ServiceRequest]"
* group.element[12].code = #ORC-7
* group.element[12].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"TQ"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = -1
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = -1
* group.element[12].display = "Quantity/Timing"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #occurrenceTiming
* group.element[12].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[12].target.extension[0].extension[0].url = "type"
* group.element[12].target.extension[0].extension[0].valueCode = #"Timing"
* group.element[12].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[12].target.extension[0].extension[1].valueInteger = 0
* group.element[12].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[12].target.extension[0].extension[2].valueInteger = 1
* group.element[12].target.display = "occurrenceTiming"
* group.element[12].target.dependsOn[0].property = "data-type-map"
* group.element[12].target.dependsOn[0].value = "TQ[ServiceRequest]"
* group.element[13].code = #ORC-7
* group.element[13].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "type"
* group.element[13].extension[0].extension[0].valueCode = #"TQ"
* group.element[13].extension[0].extension[1].url = "cardinalityMin"
* group.element[13].extension[0].extension[1].valueInteger = -1
* group.element[13].extension[0].extension[2].url = "cardinalityMax"
* group.element[13].extension[0].extension[2].valueInteger = -1
* group.element[13].display = "Quantity/Timing"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #priority
* group.element[13].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[13].target.extension[0].extension[0].url = "type"
* group.element[13].target.extension[0].extension[0].valueCode = #"code"
* group.element[13].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[13].target.extension[0].extension[1].valueInteger = 0
* group.element[13].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[13].target.extension[0].extension[2].valueInteger = 1
* group.element[13].target.display = "priority"
* group.element[13].target.dependsOn[0].property = "data-type-map"
* group.element[13].target.dependsOn[0].value = "TQ[ServiceRequest]"
* group.element[14].code = #ORC-7
* group.element[14].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "type"
* group.element[14].extension[0].extension[0].valueCode = #"TQ"
* group.element[14].extension[0].extension[1].url = "cardinalityMin"
* group.element[14].extension[0].extension[1].valueInteger = -1
* group.element[14].extension[0].extension[2].url = "cardinalityMax"
* group.element[14].extension[0].extension[2].valueInteger = -1
* group.element[14].display = "Quantity/Timing"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #note
* group.element[14].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[14].target.extension[0].extension[0].url = "type"
* group.element[14].target.extension[0].extension[0].valueCode = #"Annotation"
* group.element[14].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[14].target.extension[0].extension[1].valueInteger = 0
* group.element[14].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[14].target.extension[0].extension[2].valueInteger = -1
* group.element[14].target.display = "note"
* group.element[14].target.dependsOn[0].property = "data-type-map"
* group.element[14].target.dependsOn[0].value = "TQ[ServiceRequest]"
* group.element[15].code = #ORC-9
* group.element[15].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "type"
* group.element[15].extension[0].extension[0].valueCode = #"DTM"
* group.element[15].extension[0].extension[1].url = "cardinalityMin"
* group.element[15].extension[0].extension[1].valueInteger = 1
* group.element[15].extension[0].extension[2].url = "cardinalityMax"
* group.element[15].extension[0].extension[2].valueInteger = 1
* group.element[15].display = "Date/Time of Transaction"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #authoredOn
* group.element[15].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[15].target.extension[0].extension[0].url = "type"
* group.element[15].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[15].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[15].target.extension[0].extension[1].valueInteger = 0
* group.element[15].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[15].target.extension[0].extension[2].valueInteger = 1
* group.element[15].target.display = "authoredOn"
* group.element[15].target.product[0].property = "antlr"
* group.element[15].target.product[0].value = "IF ORC.1 IS \"NW\""
* group.element[15].target.product[1].property = "fhirpath"
* group.element[15].target.product[1].value = "ORC.element(\"1\")=\"NW\""
* group.element[16].code = #ORC-12
* group.element[16].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "type"
* group.element[16].extension[0].extension[0].valueCode = #"XCN"
* group.element[16].extension[0].extension[1].url = "cardinalityMin"
* group.element[16].extension[0].extension[1].valueInteger = -1
* group.element[16].extension[0].extension[2].url = "cardinalityMax"
* group.element[16].extension[0].extension[2].valueInteger = -1
* group.element[16].display = "Ordering Provider"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #requester(PractitionerRole.practitioner)
* group.element[16].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[16].target.extension[0].extension[0].url = "type"
* group.element[16].target.extension[0].extension[0].valueCode = #"Reference(Practitioner)"
* group.element[16].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[16].target.extension[0].extension[1].valueInteger = 0
* group.element[16].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[16].target.extension[0].extension[2].valueInteger = 1
* group.element[16].target.display = "requester(PractitionerRole.practitioner)"
* group.element[16].target.dependsOn[0].property = "data-type-map"
* group.element[16].target.dependsOn[0].value = "XCN[Practitioner]"
* group.element[17].code = #ORC-16
* group.element[17].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "type"
* group.element[17].extension[0].extension[0].valueCode = #"CWE"
* group.element[17].extension[0].extension[1].url = "cardinalityMin"
* group.element[17].extension[0].extension[1].valueInteger = 1
* group.element[17].extension[0].extension[2].url = "cardinalityMax"
* group.element[17].extension[0].extension[2].valueInteger = 1
* group.element[17].display = "Order Control Code Reason"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #extension-request-statusReason
* group.element[17].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[17].target.extension[0].extension[0].url = "type"
* group.element[17].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[17].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[17].target.extension[0].extension[1].valueInteger = 0
* group.element[17].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[17].target.extension[0].extension[2].valueInteger = 1
* group.element[17].target.display = "extension-request-statusReason"
* group.element[17].target.dependsOn[0].property = "data-type-map"
* group.element[17].target.dependsOn[0].value = "CWE[CodeableConcept]"
* group.element[17].target.product[0].property = "antlr"
* group.element[17].target.product[0].value = "IF ORC-5 NOT VALUED"
* group.element[18].code = #ORC-21
* group.element[18].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "type"
* group.element[18].extension[0].extension[0].valueCode = #"XON"
* group.element[18].extension[0].extension[1].url = "cardinalityMin"
* group.element[18].extension[0].extension[1].valueInteger = -1
* group.element[18].extension[0].extension[2].url = "cardinalityMax"
* group.element[18].extension[0].extension[2].valueInteger = -1
* group.element[18].display = "Ordering Facility Name"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #requester(PractitionerRole.organization(Organization))
* group.element[18].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[18].target.extension[0].extension[0].url = "type"
* group.element[18].target.extension[0].extension[0].valueCode = #"Reference(Organization)"
* group.element[18].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[18].target.extension[0].extension[1].valueInteger = 0
* group.element[18].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[18].target.extension[0].extension[2].valueInteger = 1
* group.element[18].target.display = "requester(PractitionerRole.organization(Organization))"
* group.element[18].target.dependsOn[0].property = "data-type-map"
* group.element[18].target.dependsOn[0].value = "XON[Organization]"
* group.element[19].code = #ORC-22
* group.element[19].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "type"
* group.element[19].extension[0].extension[0].valueCode = #"XAD"
* group.element[19].extension[0].extension[1].url = "cardinalityMin"
* group.element[19].extension[0].extension[1].valueInteger = -1
* group.element[19].extension[0].extension[2].url = "cardinalityMax"
* group.element[19].extension[0].extension[2].valueInteger = -1
* group.element[19].display = "Ordering Facility Address"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #requester(PractitionerRole.organization(Organization.address))
* group.element[19].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[19].target.extension[0].extension[0].url = "type"
* group.element[19].target.extension[0].extension[0].valueCode = #"Address"
* group.element[19].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[19].target.extension[0].extension[1].valueInteger = 0
* group.element[19].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[19].target.extension[0].extension[2].valueInteger = -1
* group.element[19].target.display = "requester(PractitionerRole.organization(Organization.address))"
* group.element[19].target.dependsOn[0].property = "data-type-map"
* group.element[19].target.dependsOn[0].value = "XAD[Address]"
* group.element[20].code = #ORC-23
* group.element[20].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "type"
* group.element[20].extension[0].extension[0].valueCode = #"XTN"
* group.element[20].extension[0].extension[1].url = "cardinalityMin"
* group.element[20].extension[0].extension[1].valueInteger = -1
* group.element[20].extension[0].extension[2].url = "cardinalityMax"
* group.element[20].extension[0].extension[2].valueInteger = -1
* group.element[20].display = "Ordering Facility Phone Number"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #requester(PractitionerRole.organization(Organization.telecom))
* group.element[20].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[20].target.extension[0].extension[0].url = "type"
* group.element[20].target.extension[0].extension[0].valueCode = #"ContactPoint"
* group.element[20].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[20].target.extension[0].extension[1].valueInteger = 0
* group.element[20].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[20].target.extension[0].extension[2].valueInteger = -1
* group.element[20].target.display = "requester(PractitionerRole.organization(Organization.telecom))"
* group.element[20].target.dependsOn[0].property = "data-type-map"
* group.element[20].target.dependsOn[0].value = "XTN[ContactPoint]"
* group.element[21].code = #ORC-24
* group.element[21].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "type"
* group.element[21].extension[0].extension[0].valueCode = #"XAD"
* group.element[21].extension[0].extension[1].url = "cardinalityMin"
* group.element[21].extension[0].extension[1].valueInteger = -1
* group.element[21].extension[0].extension[2].url = "cardinalityMax"
* group.element[21].extension[0].extension[2].valueInteger = -1
* group.element[21].display = "Ordering Provider Address"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #requester(PractitionerRole.practitioner(Practitioner.address))
* group.element[21].target.display = "requester(PractitionerRole.practitioner(Practitioner.address))"
* group.element[21].target.dependsOn[0].property = "data-type-map"
* group.element[21].target.dependsOn[0].value = "XAD[Address]"
* group.element[22].code = #ORC-29
* group.element[22].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[22].extension[0].extension[0].url = "type"
* group.element[22].extension[0].extension[0].valueCode = #"CWE"
* group.element[22].extension[0].extension[1].url = "cardinalityMin"
* group.element[22].extension[0].extension[1].valueInteger = 1
* group.element[22].extension[0].extension[2].url = "cardinalityMax"
* group.element[22].extension[0].extension[2].valueInteger = 1
* group.element[22].display = "Order Type"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #locationCode
* group.element[22].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[22].target.extension[0].extension[0].url = "type"
* group.element[22].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[22].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[22].target.extension[0].extension[1].valueInteger = 0
* group.element[22].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[22].target.extension[0].extension[2].valueInteger = -1
* group.element[22].target.display = "locationCode"
* group.element[22].target.dependsOn[0].property = "data-type-map"
* group.element[22].target.dependsOn[0].value = "CWE[CodeableConcept]"
* group.element[22].target.dependsOn[1].property = "vocabulary-map"
* group.element[22].target.dependsOn[1].value = "OrderType"
