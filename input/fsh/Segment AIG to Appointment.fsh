// HL7 Segment - FHIR R4_ AIG[Appointment] - Sheet1.csv
Instance: SegmentAIGToAppointment
InstanceOf: ConceptMap
Title: "Segment AIG to Appointment Map"
* title = "Segment AIG to Appointment Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment AIG to the FHIR Appointment Resource."
* id = "segment-aig-to-appointment"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-aig-to-appointment"
* version = "1.0"
* name = "SegmentAIGToAppointment"
* status = #active
* experimental = true
* date = "2023-10-03"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "AIG"
* targetUri = "Appointment"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment AIG to Appointment.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1uJX48rZptCjY68MjnSD_bTmJfhNoWYGn2rbDJCoutpw/edit#gid=0"
* group.element[0].code = #AIG-3
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"CWE"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Resource ID"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #participant.actor(Location.identifier)
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"identifier"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "participant.actor(Location.identifier)"
* group.element[0].target.dependsOn[0].property = "data-type-map"
* group.element[0].target.dependsOn[0].value = "CWE[Identifier]"
* group.element[0].target.product[0].property = "narrative"
* group.element[0].target.product[0].value = "If AIG-4 reflects a location"
* group.element[1].code = #AIG-4
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"CWE"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Resource Type"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #participant.type
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 0
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = -1
* group.element[1].target.display = "participant.type"
* group.element[1].target.dependsOn[0].property = "data-type-map"
* group.element[1].target.dependsOn[0].value = "CWE[CodeableConcept]"
* group.element[2].code = #AIG-8
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
* group.element[3].code = #AIG-9
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
* group.element[3].target.display = "participant.period.start"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = "/.start + AIG-9 according to AIG-10 units/"
* group.element[3].target.product[0].property = "antlr"
* group.element[3].target.product[0].value = "IF AIG-8 NOT VALUED"
* group.element[4].code = #AIG-11
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
* group.element[4].target.display = "participant.period.end"
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = "Appointment.participant.period.start + AIG-11"
* group.element[4].target.product[0].property = "antlr"
* group.element[4].target.product[0].value = "IF AIG-8 IS VALUED"
