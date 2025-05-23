// HL7 Segment - FHIR R4_ AIP[Appointment] - Sheet1.csv
Instance: SegmentAIPToAppointment
InstanceOf: ConceptMap
Title: "Segment AIP to Appointment Map"
Usage: #definition
* title = "Segment AIP to Appointment Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment AIP to the FHIR Appointment Resource."
* id = "segment-aip-to-appointment"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-aip-to-appointment"
* name = "SegmentAIPToAppointment"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment AIP to Appointment.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1xyWdix_ljILp2hGI_pHaYvU-JVc5v7t1z3DmAK2K-o0/edit#gid=0"
* group.element[0].code = #AIP-3
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"XCN"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Personnel Resource ID"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #participant.actor[1]
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"Reference(Practitioner)"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "participant.actor[1]"
* group.element[1].code = #AIP-4
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"CWE"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Resource Type"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #participant.type[1]
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 0
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = -1
* group.element[1].target.extension[0].extension[3].url = "fixedValue"
* group.element[1].target.extension[0].extension[3].valueString = "https://www.hl7.org/fhir/valueset-encounter-participant-type.html"
* group.element[1].target.display = "participant.type[1]"
* group.element[2].code = #AIP-6
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"DTM"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Start Date/Time"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #participant.period.start
* group.element[2].target.display = "participant.period.start"
* group.element[3].code = #AIP-7
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"NM"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Start Date/Time Offset"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #participant.period.start
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "fixedValue"
* group.element[3].target.extension[0].extension[0].valueString = "/.start + AIP-7 according to AIP-8 units/"
* group.element[3].target.display = "participant.period.start"
* group.element[3].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[3].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[3].target.dependsOn[0].value = "IF AIP-6 NOT VALUED"
* group.element[3].target.dependsOn[0].display = "IF AIP-6 NOT VALUED"
* group.element[4].code = #AIP-9
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"NM"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Duration"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #participant.period.end
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "fixedValue"
* group.element[4].target.extension[0].extension[0].valueString = "Appointment.participant.period.start + AIP-9"
* group.element[4].target.display = "participant.period.end"
* group.element[4].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[4].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[4].target.dependsOn[0].value = "IF AIP-6 IS VALUED"
* group.element[4].target.dependsOn[0].display = "IF AIP-6 IS VALUED"
* group.element[5].code = #AIP-12
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"CWE"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 1
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Filler Status Code"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #participant.status[1]
* group.element[5].target.display = "participant.status[1]"
