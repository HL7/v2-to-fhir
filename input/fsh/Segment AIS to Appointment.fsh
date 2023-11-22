// HL7 Segment - FHIR R4_ AIS[Appointment] - Sheet1.csv
Instance: SegmentAISToAppointment
InstanceOf: ConceptMap
Title: "Segment AIS to Appointment Map"
* title = "Segment AIS to Appointment Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment AIS to the FHIR Appointment Resource."
* id = "segment-ais-to-appointment"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-ais-to-appointment"
* version = "1.0"
* name = "SegmentAISToAppointment"
* status = #active
* experimental = true
* date = "2023-11-21"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "AIS"
* targetUri = "Appointment"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment AIS to Appointment.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1qGp1oMhMswerW464M4HV4B9dfeCm49b0UHXCRu4NruA/edit#gid=0"
* group.element[0].code = #AIS-3
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"CWE"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Universal Service Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #serviceType
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = -1
* group.element[0].target.display = "serviceType"
* group.element[0].target.dependsOn[0].property = "data-type-map"
* group.element[0].target.dependsOn[0].value = "CWE[CodeableConcept]"
* group.element[1].code = #AIS-4
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"DTM"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Start Date/Time"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #participant.period.start
* group.element[1].target.display = "participant.period.start"
* group.element[2].code = #AIS-5
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"NM"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Start Date/Time Offset"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #participant.period.start
* group.element[2].target.display = "participant.period.start"
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = "/.start + AIS-5 according to AIS-6 units/"
* group.element[2].target.product[0].property = "antlr"
* group.element[2].target.product[0].value = "IF AIS-4 NOT VALUED"
* group.element[3].code = #AIS-7
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"NM"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Duration"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #participant.period.end
* group.element[3].target.display = "participant.period.end"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = "Appointment.participant.period.start + AIS-7"
* group.element[3].target.product[0].property = "antlr"
* group.element[3].target.product[0].value = "IF AIS-4 IS VALUED"
* group.element[4].code = #AIS-10
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"CWE"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Filler Status Code"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #status
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[4].target.extension[0].extension[1].valueInteger = 0
* group.element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[4].target.extension[0].extension[2].valueInteger = 1
* group.element[4].target.display = "status"
* group.element[4].target.dependsOn[0].property = "data-type-map"
* group.element[4].target.dependsOn[0].value = "CWE[CodeableConcept]"
* group.element[4].target.dependsOn[1].property = "vocabulary-map"
* group.element[4].target.dependsOn[1].value = "FillerStatus[Appointment]"
