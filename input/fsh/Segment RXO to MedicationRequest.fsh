// HL7 Segment - FHIR R4_ RXO[MedicationRequest] - Sheet1.csv
Instance: SegmentRXOToMedicationRequest
InstanceOf: ConceptMap
Title: "Segment RXO  to MedicationRequest Map"
* title = "Segment RXO  to MedicationRequest Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment RXO to the FHIR MedicationRequest Resource."
* id = "segment-rxo-to-medicationrequest"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-rxo-to-medicationrequest"
* version = "1.0"
* name = "SegmentRXOToMedicationRequest"
* status = #active
* experimental = true
* date = "2025-01-06"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "RXO"
* targetUri = "MedicationRequest"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment RXO to MedicationRequest.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1IikDPobXAskISQ4b6rkBIBWPhBr02mrB4eUHy6eXzQ0/edit#gid=0"
* group.element[0].code = #RXO
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #intent
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"code"
* group.element[0].target.display = "= \"original-order\""
* group.element[1].code = #RXO-1
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"CWE"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Requested Give Code"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #medication(Medication.code)
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.display = "medication(Medication.code)"
* group.element[2].code = #RXO-2
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"NM"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Requested Give Amount - Minimum"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #dosageInstruction.doseAndRate[1].doseRange.low.value
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"decimal"
* group.element[2].target.display = "dosageInstruction.doseAndRate[1].doseRange.low.value"
* group.element[3].code = #RXO-2
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"NM"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Requested Give Amount - Minimum"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #dosageInstruction.doseAndRate[1].type
* group.element[3].target.display = "dosageInstruction.doseAndRate[1].type"
* group.element[4].code = #RXO-3
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"NM"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Requested Give Amount - Maximum"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #dosageInstruction.doseAndRate[1].doseRange.high.value
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"decimal"
* group.element[4].target.display = "dosageInstruction.doseAndRate[1].doseRange.high.value"
* group.element[5].code = #RXO-4
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"CWE"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 1
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Requested Give Units"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #dosageInstruction.doseAndRate[1].doseRange.low.code
* group.element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].target.extension[0].extension[0].url = "type"
* group.element[5].target.extension[0].extension[0].valueCode = #"code"
* group.element[5].target.display = "dosageInstruction.doseAndRate[1].doseRange.low.code"
* group.element[6].code = #RXO-4
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"CWE"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = 1
* group.element[6].display = "Requested Give Units"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #dosageInstruction.doseAndRate[1].doseRange.low.unit
* group.element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].target.extension[0].extension[0].url = "type"
* group.element[6].target.extension[0].extension[0].valueCode = #"string"
* group.element[6].target.display = "dosageInstruction.doseAndRate[1].doseRange.low.unit"
* group.element[7].code = #RXO-4
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"CWE"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Requested Give Units"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #dosageInstruction.doseAndRate[1].doseRange.high.code
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"code"
* group.element[7].target.display = "dosageInstruction.doseAndRate[1].doseRange.high.code"
* group.element[8].code = #RXO-4
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"CWE"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = 1
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = 1
* group.element[8].display = "Requested Give Units"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #dosageInstruction.doseAndRate[1].doseRange.high.unit
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"string"
* group.element[8].target.display = "dosageInstruction.doseAndRate[1].doseRange.high.unit"
* group.element[9].code = #RXO-5
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"CWE"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = 1
* group.element[9].display = "Requested Dosage Form"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #medication(Medication.doseForm)
* group.element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].target.extension[0].extension[0].url = "type"
* group.element[9].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[9].target.display = "medication(Medication.doseForm)"
* group.element[10].code = #RXO-9
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"ID"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = 1
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = 1
* group.element[10].display = "Allow Substitutions"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #substitution.allowedCodeableConcept
* group.element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].target.extension[0].extension[0].url = "type"
* group.element[10].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[10].target.display = "substitution.allowedCodeableConcept"
* group.element[11].code = #RXO-11
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "type"
* group.element[11].extension[0].extension[0].valueCode = #"NM"
* group.element[11].extension[0].extension[1].url = "cardinalityMin"
* group.element[11].extension[0].extension[1].valueInteger = 1
* group.element[11].extension[0].extension[2].url = "cardinalityMax"
* group.element[11].extension[0].extension[2].valueInteger = 1
* group.element[11].display = "Requested Dispense Amount"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #dispenseRequest.quantity.value
* group.element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].target.extension[0].extension[0].url = "type"
* group.element[11].target.extension[0].extension[0].valueCode = #"decimal"
* group.element[11].target.display = "dispenseRequest.quantity.value"
* group.element[12].code = #RXO-12
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"CWE"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = 1
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = 1
* group.element[12].display = "Requested Dispense Units"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #dispenseRequest.quantity.code
* group.element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].target.extension[0].extension[0].url = "type"
* group.element[12].target.extension[0].extension[0].valueCode = #"code"
* group.element[12].target.display = "dispenseRequest.quantity.code"
* group.element[13].code = #RXO-12
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "type"
* group.element[13].extension[0].extension[0].valueCode = #"CWE"
* group.element[13].extension[0].extension[1].url = "cardinalityMin"
* group.element[13].extension[0].extension[1].valueInteger = 1
* group.element[13].extension[0].extension[2].url = "cardinalityMax"
* group.element[13].extension[0].extension[2].valueInteger = 1
* group.element[13].display = "Requested Dispense Units"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #dispenseRequest.quantity.unit
* group.element[13].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].target.extension[0].extension[0].url = "type"
* group.element[13].target.extension[0].extension[0].valueCode = #"string"
* group.element[13].target.display = "dispenseRequest.quantity.unit"
* group.element[14].code = #RXO-13
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "type"
* group.element[14].extension[0].extension[0].valueCode = #"NM"
* group.element[14].extension[0].extension[1].url = "cardinalityMin"
* group.element[14].extension[0].extension[1].valueInteger = 1
* group.element[14].extension[0].extension[2].url = "cardinalityMax"
* group.element[14].extension[0].extension[2].valueInteger = 1
* group.element[14].display = "Number Of Refills"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #dispenseRequest.numberOfRepeatsAllowed
* group.element[14].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].target.extension[0].extension[0].url = "type"
* group.element[14].target.extension[0].extension[0].valueCode = #"unsignedInt"
* group.element[14].target.display = "dispenseRequest.numberOfRepeatsAllowed"
* group.element[15].code = #RXO-14
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "type"
* group.element[15].extension[0].extension[0].valueCode = #"XCN"
* group.element[15].extension[0].extension[1].url = "cardinalityMin"
* group.element[15].extension[0].extension[1].valueInteger = -1
* group.element[15].extension[0].extension[2].url = "cardinalityMax"
* group.element[15].extension[0].extension[2].valueInteger = -1
* group.element[15].display = "Ordering Provider's DEA Number"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #requester(Practitioner)
* group.element[15].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].target.extension[0].extension[0].url = "type"
* group.element[15].target.extension[0].extension[0].valueCode = #"Reference"
* group.element[15].target.display = "requester(Practitioner)"
* group.element[16].code = #RXO-18
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "type"
* group.element[16].extension[0].extension[0].valueCode = #"NM"
* group.element[16].extension[0].extension[1].url = "cardinalityMin"
* group.element[16].extension[0].extension[1].valueInteger = 1
* group.element[16].extension[0].extension[2].url = "cardinalityMax"
* group.element[16].extension[0].extension[2].valueInteger = 1
* group.element[16].display = "Requested Give Strength"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #medicationReference(Medication.ingredient.strength.numerator.value
* group.element[16].target.display = "medicationReference(Medication.ingredient.strength.numerator.value"
* group.element[17].code = #RXO-19
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "type"
* group.element[17].extension[0].extension[0].valueCode = #"CWE"
* group.element[17].extension[0].extension[1].url = "cardinalityMin"
* group.element[17].extension[0].extension[1].valueInteger = 1
* group.element[17].extension[0].extension[2].url = "cardinalityMax"
* group.element[17].extension[0].extension[2].valueInteger = 1
* group.element[17].display = "Requested Give Strength Units"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #medicationReference(Medication.ingredient.strength.numerator.code
* group.element[17].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].target.extension[0].extension[0].url = "type"
* group.element[17].target.extension[0].extension[0].valueCode = #"code"
* group.element[17].target.display = "medicationReference(Medication.ingredient.strength.numerator.code"
* group.element[18].code = #RXO-19
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "type"
* group.element[18].extension[0].extension[0].valueCode = #"CWE"
* group.element[18].extension[0].extension[1].url = "cardinalityMin"
* group.element[18].extension[0].extension[1].valueInteger = 1
* group.element[18].extension[0].extension[2].url = "cardinalityMax"
* group.element[18].extension[0].extension[2].valueInteger = 1
* group.element[18].display = "Requested Give Strength Units"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #medicationReference(Medication.ingredient.strength.numerator.unit
* group.element[18].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].target.extension[0].extension[0].url = "type"
* group.element[18].target.extension[0].extension[0].valueCode = #"string"
* group.element[18].target.display = "medicationReference(Medication.ingredient.strength.numerator.unit"
* group.element[19].code = #RXE-19
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "type"
* group.element[19].extension[0].extension[0].valueCode = #"CQ"
* group.element[19].extension[0].extension[1].url = "cardinalityMin"
* group.element[19].extension[0].extension[1].valueInteger = 1
* group.element[19].extension[0].extension[2].url = "cardinalityMax"
* group.element[19].extension[0].extension[2].valueInteger = 1
* group.element[19].display = "Total Daily Dose"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #dosageInstruction.maxDosePerPeriod.numerator
* group.element[19].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].target.extension[0].extension[0].url = "type"
* group.element[19].target.extension[0].extension[0].valueCode = #"Quantity"
* group.element[19].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[19].target.extension[0].extension[1].valueInteger = 0
* group.element[19].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[19].target.extension[0].extension[2].valueInteger = 1
* group.element[19].target.display = "dosageInstruction.maxDosePerPeriod.numerator"
* group.element[20].code = #RXE-19
* group.element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "type"
* group.element[20].extension[0].extension[0].valueCode = #"CQ"
* group.element[20].extension[0].extension[1].url = "cardinalityMin"
* group.element[20].extension[0].extension[1].valueInteger = 1
* group.element[20].extension[0].extension[2].url = "cardinalityMax"
* group.element[20].extension[0].extension[2].valueInteger = 1
* group.element[20].display = "Total Daily Dose"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #dosageInstruction.maxDosePerPeriod.denominator.value
* group.element[20].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].target.extension[0].extension[0].url = "type"
* group.element[20].target.extension[0].extension[0].valueCode = #"Quantity"
* group.element[20].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[20].target.extension[0].extension[1].valueInteger = 0
* group.element[20].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[20].target.extension[0].extension[2].valueInteger = 1
* group.element[20].target.display = "dosageInstruction.maxDosePerPeriod.denominator.value"
* group.element[21].code = #RXE-19
* group.element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "type"
* group.element[21].extension[0].extension[0].valueCode = #"CQ"
* group.element[21].extension[0].extension[1].url = "cardinalityMin"
* group.element[21].extension[0].extension[1].valueInteger = 1
* group.element[21].extension[0].extension[2].url = "cardinalityMax"
* group.element[21].extension[0].extension[2].valueInteger = 1
* group.element[21].display = "Total Daily Dose"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #dosageInstruction.maxDosePerPeriod.denominator.code
* group.element[21].target.display = "dosageInstruction.maxDosePerPeriod.denominator.code"
* group.element[22].code = #RXO-25
* group.element[22].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[22].extension[0].extension[0].url = "type"
* group.element[22].extension[0].extension[0].valueCode = #"NM"
* group.element[22].extension[0].extension[1].url = "cardinalityMin"
* group.element[22].extension[0].extension[1].valueInteger = 1
* group.element[22].extension[0].extension[2].url = "cardinalityMax"
* group.element[22].extension[0].extension[2].valueInteger = 1
* group.element[22].display = "Requested Drug Strength Volume"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #medicationReference(Medication.ingredient.strength.denominator.value
* group.element[22].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[22].target.extension[0].extension[0].url = "type"
* group.element[22].target.extension[0].extension[0].valueCode = #"decimal"
* group.element[22].target.display = "medicationReference(Medication.ingredient.strength.denominator.value"
* group.element[23].code = #RXO-26
* group.element[23].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[23].extension[0].extension[0].url = "type"
* group.element[23].extension[0].extension[0].valueCode = #"CWE"
* group.element[23].extension[0].extension[1].url = "cardinalityMin"
* group.element[23].extension[0].extension[1].valueInteger = 1
* group.element[23].extension[0].extension[2].url = "cardinalityMax"
* group.element[23].extension[0].extension[2].valueInteger = 1
* group.element[23].display = "Requested Drug Strength Volume Units"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #medicationReference(Medication.ingredient.strength.denominator.code
* group.element[23].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[23].target.extension[0].extension[0].url = "type"
* group.element[23].target.extension[0].extension[0].valueCode = #"code"
* group.element[23].target.display = "medicationReference(Medication.ingredient.strength.denominator.code"
* group.element[24].code = #RXO-26
* group.element[24].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[24].extension[0].extension[0].url = "type"
* group.element[24].extension[0].extension[0].valueCode = #"CWE"
* group.element[24].extension[0].extension[1].url = "cardinalityMin"
* group.element[24].extension[0].extension[1].valueInteger = 1
* group.element[24].extension[0].extension[2].url = "cardinalityMax"
* group.element[24].extension[0].extension[2].valueInteger = 1
* group.element[24].display = "Requested Drug Strength Volume Units"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #medicationReference(Medication.ingredient.strength.denominator.unit
* group.element[24].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[24].target.extension[0].extension[0].url = "type"
* group.element[24].target.extension[0].extension[0].valueCode = #"string"
* group.element[24].target.display = "medicationReference(Medication.ingredient.strength.denominator.unit"
