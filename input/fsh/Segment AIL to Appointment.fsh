// HL7 Segment - FHIR R4_ AIL[Appointment] - Sheet1.csv
Instance: SegmentAILToAppointment
InstanceOf: ConceptMap
Title: "Segment AIL to Appointment Map"
Usage: #definition
* title = "Segment AIL to Appointment Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment AIL to the FHIR Appointment Resource."
* id = "segment-ail-to-appointment"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-ail-to-appointment"
* name = "SegmentAILToAppointment"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment AIL to Appointment.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1ZIiSCg23gdsYPJn89PRipOIKfdV6zM28P-YmGYcFyvQ/edit#gid=0"
* group.element[0].code = #AIL-3
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"PL"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Location Resource ID"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #participant.actor[1]
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"Reference(Location)"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "participant.actor[1]"
* group.element[1].code = #AIL-6
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
* group.element[2].code = #AIL-7
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
* group.element[3].code = #AIL-9
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
