// HL7 Segment - FHIR R4_ AIS[ServiceRequest] - Sheet1.csv
Instance: SegmentAISToServiceRequest
InstanceOf: ConceptMap
Title: "Segment AIS  to ServiceRequest Map"
* title = "Segment AIS  to ServiceRequest Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment AIS to the FHIR ServiceRequest Resource."
* id = "segment-ais-to-servicerequest"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-ais-to-servicerequest"
* version = "1.0"
* name = "SegmentAISToServiceRequest"
* status = #active
* experimental = true
* date = "2025-01-06"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "AIS"
* targetUri = "ServiceRequest"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment AIS to ServiceRequest.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1qyCpHz_vYZsWIkM5VZH4i45zK7AEKd1G6HO2TUAwcaE/edit#gid=0"
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
* group.element[0].target.code = #identifier[1]
* group.element[0].target.display = "identifier[1]"
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
* group.element[1].target.code = #occurrencePeriod.start
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"Period"
* group.element[1].target.display = "occurrencePeriod.start"
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
* group.element[2].target.code = #occurrencePeriod.start
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"Period"
* group.element[2].target.display = "occurrencePeriod.start"
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
* group.element[3].target.code = #occurrencePeriod.end
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"Period"
* group.element[3].target.display = "occurrencePeriod.end"
* group.element[4].code = #AIS-11
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"CWE"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = -1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = -1
* group.element[4].display = "Placer Supplemental Service Information"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #identifier[2]
* group.element[4].target.display = "identifier[2]"
* group.element[5].code = #AIS-12
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"CWE"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = -1
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = -1
* group.element[5].display = "Filler Supplemental Service Information"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #identifier[3]
* group.element[5].target.display = "identifier[3]"
