// HL7 Segment - FHIR R4_ PR1[Procedure] - PR1[Procedure].csv
Instance: SegmentPR1ToProcedure
InstanceOf: ConceptMap
Title: "Segment PR1 to Procedure Map"
Usage: #definition
* title = "Segment PR1 to Procedure Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PR1 to the FHIR Procedure Resource."
* id = "segment-pr1-to-procedure"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-pr1-to-procedure"
* name = "SegmentPR1ToProcedure"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PR1 to Procedure.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/12jwNxyJ4zvjtbYbDGgnd_Pg7GsuG0iQK3TlJtDsADOU/edit#gid=0"
* group[0].element[0].code = #PR1
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #status
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "status"
* group[0].element[0].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[0].target.dependsOn[0].value = "The value mapping depends on the message context where the PR1 is used and to be determined by the implementer.  If not clear, use \"unknown\"."
* group[0].element[1].code = #PR1-3
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"CNE"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = -1
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = -1
* group[0].element[1].display = "Procedure Code"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #code[1]
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 0
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.display = "code[1]"
* group[0].element[2].code = #PR1-4
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "type"
* group[0].element[2].extension[0].extension[0].valueCode = #"ST"
* group[0].element[2].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[1].valueInteger = -1
* group[0].element[2].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[2].valueInteger = -1
* group[0].element[2].display = "Procedure Description"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #code.text
* group[0].element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].target.extension[0].extension[0].url = "type"
* group[0].element[2].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].target.extension[0].extension[1].valueInteger = 0
* group[0].element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].target.extension[0].extension[2].valueInteger = 1
* group[0].element[2].target.display = "code.text"
* group[0].element[2].target.comment = "PR1-4 was deprecated in v2.3"
* group[0].element[2].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[2].target.dependsOn[0].value = "IF PR1-3.9 NOT VALUED"
* group[0].element[3].code = #PR1-5
* group[0].element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].extension[0].extension[0].url = "type"
* group[0].element[3].extension[0].extension[0].valueCode = #"DTM"
* group[0].element[3].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].extension[0].extension[1].valueInteger = 1
* group[0].element[3].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].extension[0].extension[2].valueInteger = 1
* group[0].element[3].display = "Procedure Date/Time"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #performedDateTime
* group[0].element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].target.extension[0].extension[0].url = "type"
* group[0].element[3].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].target.extension[0].extension[1].valueInteger = 0
* group[0].element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].target.extension[0].extension[2].valueInteger = 1
* group[0].element[3].target.display = "performedDateTime"
* group[0].element[3].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[3].target.dependsOn[0].value = "IF PR1-7 NOT VALUED"
* group[0].element[4].code = #PR1-5
* group[0].element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].extension[0].extension[0].url = "type"
* group[0].element[4].extension[0].extension[0].valueCode = #"DTM"
* group[0].element[4].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].extension[0].extension[1].valueInteger = 1
* group[0].element[4].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].extension[0].extension[2].valueInteger = 1
* group[0].element[4].display = "Procedure Date/Time"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #performedDateTime
* group[0].element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].target.extension[0].extension[0].url = "type"
* group[0].element[4].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].target.extension[0].extension[1].valueInteger = 0
* group[0].element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].target.extension[0].extension[2].valueInteger = 1
* group[0].element[4].target.display = "performedDateTime"
* group[0].element[4].target.comment = "The Procedure date/time must be at least to the granularity of minutes if a performedPeriod is to be created from PR1-5 and PR1-7"
* group[0].element[4].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[4].target.dependsOn[0].value = "IF PR1-7 VALUED AND PR1-5.5 NOT VALUED"
* group[0].element[5].code = #PR1-5
* group[0].element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].extension[0].extension[0].url = "type"
* group[0].element[5].extension[0].extension[0].valueCode = #"DTM"
* group[0].element[5].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].extension[0].extension[1].valueInteger = 1
* group[0].element[5].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].extension[0].extension[2].valueInteger = 1
* group[0].element[5].display = "Procedure Date/Time"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #performedPeriod.start
* group[0].element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].target.extension[0].extension[0].url = "type"
* group[0].element[5].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].target.extension[0].extension[1].valueInteger = 0
* group[0].element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].target.extension[0].extension[2].valueInteger = 1
* group[0].element[5].target.display = "performedPeriod.start"
* group[0].element[5].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[5].target.dependsOn[0].value = "IF PR1-7 VALUED AND PR1-5.5 VALUED"
* group[0].element[6].code = #PR1-6
* group[0].element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].extension[0].extension[0].url = "type"
* group[0].element[6].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[6].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[6].extension[0].extension[1].valueInteger = 1
* group[0].element[6].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[6].extension[0].extension[2].valueInteger = 1
* group[0].element[6].display = "Procedure Functional Type"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #category
* group[0].element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].target.extension[0].extension[0].url = "type"
* group[0].element[6].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[6].target.extension[0].extension[1].valueInteger = 0
* group[0].element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[6].target.extension[0].extension[2].valueInteger = 1
* group[0].element[6].target.display = "category"
* group[0].element[7].code = #PR1-7
* group[0].element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].extension[0].extension[0].url = "type"
* group[0].element[7].extension[0].extension[0].valueCode = #"NM"
* group[0].element[7].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].extension[0].extension[1].valueInteger = 1
* group[0].element[7].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].extension[0].extension[2].valueInteger = 1
* group[0].element[7].display = "Procedure Minutes"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #performedPeriod.end
* group[0].element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].target.extension[0].extension[0].url = "type"
* group[0].element[7].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].target.extension[0].extension[1].valueInteger = 0
* group[0].element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].target.extension[0].extension[2].valueInteger = 1
* group[0].element[7].target.extension[0].extension[3].url = "assignment"
* group[0].element[7].target.extension[0].extension[3].valueString = "Procedure.performedPeriod.start+PR1-7"
* group[0].element[7].target.display = "performedPeriod.end"
* group[0].element[7].target.comment = "The number of minutes in PR1-7 must be added to the time in PR1-5 to get the endpoint of the performedPeriod (note that other elements of the date/time (hours, date, etc) may also need to be changed depending on the length of the procedure)"
* group[0].element[7].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[7].target.dependsOn[0].value = "IF PR1-5.5 IS VALUED"
* group[0].element[8].code = #PR1-8
* group[0].element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].extension[0].extension[0].url = "type"
* group[0].element[8].extension[0].extension[0].valueCode = #"XCN"
* group[0].element[8].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].extension[0].extension[1].valueInteger = -1
* group[0].element[8].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].extension[0].extension[2].valueInteger = -1
* group[0].element[8].display = "Anesthesiologist"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #performer[1].actor(Practitioner)
* group[0].element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].target.extension[0].extension[0].url = "type"
* group[0].element[8].target.extension[0].extension[0].valueCode = #"Reference(Practitioner)"
* group[0].element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].target.extension[0].extension[1].valueInteger = 0
* group[0].element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].target.extension[0].extension[2].valueInteger = 1
* group[0].element[8].target.display = "performer[1].actor(Practitioner)"
* group[0].element[9].code = #PR1-8
* group[0].element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].extension[0].extension[0].url = "type"
* group[0].element[9].extension[0].extension[0].valueCode = #"XCN"
* group[0].element[9].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[9].extension[0].extension[1].valueInteger = -1
* group[0].element[9].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[9].extension[0].extension[2].valueInteger = -1
* group[0].element[9].display = "Anesthesiologist"
* group[0].element[9].target.equivalence = #equivalent
* group[0].element[9].target.code = #performer[1].function.coding.code
* group[0].element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].target.extension[0].extension[0].url = "type"
* group[0].element[9].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[9].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[9].target.extension[0].extension[1].valueInteger = 0
* group[0].element[9].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[9].target.extension[0].extension[2].valueInteger = 1
* group[0].element[9].target.extension[0].extension[3].url = "assignment"
* group[0].element[9].target.extension[0].extension[3].valueString = "\"88189002\""
* group[0].element[9].target.display = "performer[1].function.coding.code"
* group[0].element[10].code = #PR1-8
* group[0].element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].extension[0].extension[0].url = "type"
* group[0].element[10].extension[0].extension[0].valueCode = #"XCN"
* group[0].element[10].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[10].extension[0].extension[1].valueInteger = -1
* group[0].element[10].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[10].extension[0].extension[2].valueInteger = -1
* group[0].element[10].display = "Anesthesiologist"
* group[0].element[10].target.equivalence = #equivalent
* group[0].element[10].target.code = #performer[1].function.coding.uri
* group[0].element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].target.extension[0].extension[0].url = "type"
* group[0].element[10].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[10].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[10].target.extension[0].extension[1].valueInteger = 0
* group[0].element[10].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[10].target.extension[0].extension[2].valueInteger = 1
* group[0].element[10].target.extension[0].extension[3].url = "assignment"
* group[0].element[10].target.extension[0].extension[3].valueString = "\"http://snomed.info/sct\""
* group[0].element[10].target.display = "performer[1].function.coding.uri"
* group[0].element[11].code = #PR1-11
* group[0].element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[11].extension[0].extension[0].url = "type"
* group[0].element[11].extension[0].extension[0].valueCode = #"XCN"
* group[0].element[11].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[11].extension[0].extension[1].valueInteger = -1
* group[0].element[11].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[11].extension[0].extension[2].valueInteger = -1
* group[0].element[11].display = "Surgeon"
* group[0].element[11].target.equivalence = #equivalent
* group[0].element[11].target.code = #performer[2].actor(Practitioner)
* group[0].element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[11].target.extension[0].extension[0].url = "type"
* group[0].element[11].target.extension[0].extension[0].valueCode = #"Reference(Practitioner)"
* group[0].element[11].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[11].target.extension[0].extension[1].valueInteger = 0
* group[0].element[11].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[11].target.extension[0].extension[2].valueInteger = 1
* group[0].element[11].target.display = "performer[2].actor(Practitioner)"
* group[0].element[12].code = #PR1-11
* group[0].element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[12].extension[0].extension[0].url = "type"
* group[0].element[12].extension[0].extension[0].valueCode = #"XCN"
* group[0].element[12].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[12].extension[0].extension[1].valueInteger = -1
* group[0].element[12].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[12].extension[0].extension[2].valueInteger = -1
* group[0].element[12].display = "Surgeon"
* group[0].element[12].target.equivalence = #equivalent
* group[0].element[12].target.code = #performer[2].function.coding.code
* group[0].element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[12].target.extension[0].extension[0].url = "type"
* group[0].element[12].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[12].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[12].target.extension[0].extension[1].valueInteger = 0
* group[0].element[12].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[12].target.extension[0].extension[2].valueInteger = 1
* group[0].element[12].target.extension[0].extension[3].url = "assignment"
* group[0].element[12].target.extension[0].extension[3].valueString = "\"304292004\""
* group[0].element[12].target.display = "performer[2].function.coding.code"
* group[0].element[13].code = #PR1-11
* group[0].element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[13].extension[0].extension[0].url = "type"
* group[0].element[13].extension[0].extension[0].valueCode = #"XCN"
* group[0].element[13].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[13].extension[0].extension[1].valueInteger = -1
* group[0].element[13].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[13].extension[0].extension[2].valueInteger = -1
* group[0].element[13].display = "Surgeon"
* group[0].element[13].target.equivalence = #equivalent
* group[0].element[13].target.code = #performer[2].function.coding.uri
* group[0].element[13].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[13].target.extension[0].extension[0].url = "type"
* group[0].element[13].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[13].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[13].target.extension[0].extension[1].valueInteger = 0
* group[0].element[13].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[13].target.extension[0].extension[2].valueInteger = 1
* group[0].element[13].target.extension[0].extension[3].url = "assignment"
* group[0].element[13].target.extension[0].extension[3].valueString = "\"http://snomed.info/sct\""
* group[0].element[13].target.display = "performer[2].function.coding.uri"
* group[0].element[14].code = #PR1-12
* group[0].element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[14].extension[0].extension[0].url = "type"
* group[0].element[14].extension[0].extension[0].valueCode = #"XCN"
* group[0].element[14].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[14].extension[0].extension[1].valueInteger = -1
* group[0].element[14].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[14].extension[0].extension[2].valueInteger = -1
* group[0].element[14].display = "Procedure Practitioner"
* group[0].element[14].target.equivalence = #equivalent
* group[0].element[14].target.code = #performer[3].actor(Practitioner)
* group[0].element[14].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[14].target.extension[0].extension[0].url = "type"
* group[0].element[14].target.extension[0].extension[0].valueCode = #"Reference(Practitioner)"
* group[0].element[14].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[14].target.extension[0].extension[1].valueInteger = 0
* group[0].element[14].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[14].target.extension[0].extension[2].valueInteger = 1
* group[0].element[14].target.display = "performer[3].actor(Practitioner)"
* group[0].element[14].target.comment = "Because PR1-12 is less specific than other fields in PR1 in regards to the role of the practitioner, this mapping is not providing a default code for performer.function. But if an implementation knows the function of the providers being exchanged in PR1-12, than a implementation-specific value for performer.function may be assigned on a case by case basis."
* group[0].element[15].code = #PR1-15
* group[0].element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[15].extension[0].extension[0].url = "type"
* group[0].element[15].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[15].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[15].extension[0].extension[1].valueInteger = 1
* group[0].element[15].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[15].extension[0].extension[2].valueInteger = 1
* group[0].element[15].display = "Associated Diagnosis Code"
* group[0].element[15].target.equivalence = #equivalent
* group[0].element[15].target.code = #reasonCode
* group[0].element[15].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[15].target.extension[0].extension[0].url = "type"
* group[0].element[15].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[15].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[15].target.extension[0].extension[1].valueInteger = 0
* group[0].element[15].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[15].target.extension[0].extension[2].valueInteger = -1
* group[0].element[15].target.display = "reasonCode"
* group[0].element[16].code = #PR1-16
* group[0].element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[16].extension[0].extension[0].url = "type"
* group[0].element[16].extension[0].extension[0].valueCode = #"CNE"
* group[0].element[16].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[16].extension[0].extension[1].valueInteger = -1
* group[0].element[16].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[16].extension[0].extension[2].valueInteger = -1
* group[0].element[16].display = "Procedure Code Modifier"
* group[0].element[16].target.equivalence = #equivalent
* group[0].element[16].target.code = #code[1].value
* group[0].element[16].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[16].target.extension[0].extension[0].url = "type"
* group[0].element[16].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[16].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[16].target.extension[0].extension[1].valueInteger = 0
* group[0].element[16].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[16].target.extension[0].extension[2].valueInteger = 1
* group[0].element[16].target.extension[0].extension[3].url = "assignment"
* group[0].element[16].target.extension[0].extension[3].valueString = "PR1-3.1 + \":\" + PR1-16.1"
* group[0].element[16].target.display = "code[1].value"
* group[0].element[16].target.comment = "If there are multiple modifiers, they are all further concatenated using the \":\" as the separator into Procedure.code.value in accordance to the guidance here: https://terminology.hl7.org/CPT.html#modifier-syntax"
* group[0].element[17].code = #PR1-19
* group[0].element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[17].extension[0].extension[0].url = "type"
* group[0].element[17].extension[0].extension[0].valueCode = #"EI"
* group[0].element[17].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[17].extension[0].extension[1].valueInteger = 1
* group[0].element[17].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[17].extension[0].extension[2].valueInteger = 1
* group[0].element[17].display = "Procedure Identifier"
* group[0].element[17].target.equivalence = #equivalent
* group[0].element[17].target.code = #identifier
* group[0].element[17].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[17].target.extension[0].extension[0].url = "type"
* group[0].element[17].target.extension[0].extension[0].valueCode = #"Identifier"
* group[0].element[17].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[17].target.extension[0].extension[1].valueInteger = 0
* group[0].element[17].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[17].target.extension[0].extension[2].valueInteger = -1
* group[0].element[17].target.display = "identifier"
* group[0].element[18].code = #PR1-23
* group[0].element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[18].extension[0].extension[0].url = "type"
* group[0].element[18].extension[0].extension[0].valueCode = #"PL"
* group[0].element[18].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[18].extension[0].extension[1].valueInteger = -1
* group[0].element[18].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[18].extension[0].extension[2].valueInteger = -1
* group[0].element[18].display = "Treating Organizational Unit"
* group[0].element[18].target.equivalence = #equivalent
* group[0].element[18].target.code = #location(Location)
* group[0].element[18].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[18].target.extension[0].extension[0].url = "type"
* group[0].element[18].target.extension[0].extension[0].valueCode = #"Reference(Location)"
* group[0].element[18].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[18].target.extension[0].extension[1].valueInteger = 0
* group[0].element[18].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[18].target.extension[0].extension[2].valueInteger = 1
* group[0].element[18].target.display = "location(Location)"
* group[0].element[18].target.comment = "We will address >=2 cardinality if somebody raises the need."
* group[0].element[19].code = #PR1-25
* group[0].element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[19].extension[0].extension[0].url = "type"
* group[0].element[19].extension[0].extension[0].valueCode = #"EI"
* group[0].element[19].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[19].extension[0].extension[1].valueInteger = 1
* group[0].element[19].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[19].extension[0].extension[2].valueInteger = 1
* group[0].element[19].display = "Parent Procedure ID"
* group[0].element[19].target.equivalence = #equivalent
* group[0].element[19].target.code = #partOf(Procedure.identifier)
* group[0].element[19].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[19].target.extension[0].extension[0].url = "type"
* group[0].element[19].target.extension[0].extension[0].valueCode = #"Reference(Procedure)"
* group[0].element[19].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[19].target.extension[0].extension[1].valueInteger = 0
* group[0].element[19].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[19].target.extension[0].extension[2].valueInteger = -1
* group[0].element[19].target.display = "partOf(Procedure.identifier)"
* group[0].element[19].target.comment = "Procedure.partOf should contain the reference to another Procedure resource where Procedure.identifier matches the value of PR1-25"
