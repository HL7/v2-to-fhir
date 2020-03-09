Instance: SegmentOBXtoObservation
InstanceOf: ConceptMap
Title: "Segment OBX to Observation Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 OBX Segment to the FHIR Observation Resource."
* id = "segment-obx-to-observation"
* url = "http://hl7.org/fhir/v2-tofhir/segment-obx-to-observation"
* version = "1.0"
* name = "Segment_OBX_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "OBX"
* targetUri = "Observation"
* group.element[0].code = #OBX-3
* group.element[0].display = "Observation Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Observation.code
* group.element[0].target.display = "Observation.code"
* group.element[1].code = #OBX-5
* group.element[1].display = "Observation Value"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Observation.valueQuantity.value
* group.element[1].target.display = "Observation.valueQuantity.value"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "NM"\
"""
* group.element[2].code = #OBX-5
* group.element[2].display = "Observation Value"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Observation.valueString
* group.element[2].target.display = "Observation.valueString"
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = """
# IF OBX-2 IN ("ST", "FT", "TX")\
"""
* group.element[2].target.dependsOn[0].value = "Any markup in ST, FT or TX data may not present properly given that valueString is a string data type"
* group.element[3].code = #OBX-5
* group.element[3].display = "Observation Value"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Observation.valueCodeableConcept
* group.element[3].target.display = "Observation.valueCodeableConcept"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = """
# IF OBX-2 IN ("CF", "CNE", "CWE", "CE")\
"""
* group.element[4].code = #OBX-5
* group.element[4].display = "Observation Value"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Observation.valueCodeableConcept
* group.element[4].target.display = "Observation.valueCodeableConcept"
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "IS"\
"""
* group.element[5].code = #OBX-5
* group.element[5].display = "Observation Value"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Observation.valuePeriod
* group.element[5].target.display = "Observation.valuePeriod"
* group.element[5].target.dependsOn[0].property = "value"
* group.element[5].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "DR"\
"""
* group.element[6].code = #OBX-5
* group.element[6].display = "Observation Value"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Observation.valueDateTime
* group.element[6].target.display = "Observation.valueDateTime"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = """
# IF OBX-2 IN ("DTM", "DT")\
"""
* group.element[7].code = #OBX-5
* group.element[7].display = "Observation Value"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Observation.valueRange
* group.element[7].target.display = "Observation.valueRange"
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "NR"\
"""
* group.element[8].code = #OBX-5
* group.element[8].display = "Observation Value"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Observation.valueString
* group.element[8].target.display = "= OBX-5.1+\"-\"+OBX-5.2"
* group.element[8].target.dependsOn[0].property = "value"
* group.element[8].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "VR"\
"""
* group.element[9].code = #OBX-5
* group.element[9].display = "Observation Value"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Observation.valueTime
* group.element[9].target.display = "Observation.valueTime"
* group.element[9].target.dependsOn[0].property = "value"
* group.element[9].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "TM"\
"""
* group.element[10].code = #OBX-5
* group.element[10].display = "Observation Value"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Observation.valueRatio
* group.element[10].target.display = "Observation.valueRatio"
* group.element[10].target.dependsOn[0].property = "value"
* group.element[10].target.dependsOn[0].value = """
# IF (OBX-2 EQUALS "SN" AND OBX-5.3 IN (":", "/")\
"""
* group.element[11].code = #OBX-5
* group.element[11].display = "Observation Value"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Observation.valueRange
* group.element[11].target.display = "Observation.valueRange"
* group.element[11].target.dependsOn[0].property = "value"
* group.element[11].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "SN" and OBX-5.3 EQUALS "-"\
"""
* group.element[12].code = #OBX-5
* group.element[12].display = "Observation Value"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Observation.valueString
* group.element[12].target.display = "= OBX-5.1+\" \"+OBX-5.2+\" \"+OBX-5.3"
* group.element[12].target.dependsOn[0].property = "value"
* group.element[12].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "SN" and OBX-5.3 EQUALS "+"\
"""
* group.element[13].code = #OBX-5
* group.element[13].display = "Observation Value"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Observation.valueQuantity
* group.element[13].target.display = "Observation.valueQuantity"
* group.element[13].target.dependsOn[0].property = "value"
* group.element[13].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "SN" and OBX-5.3 NOT IN (":", "/", "-", "+")\
"""
* group.element[14].code = #OBX-6
* group.element[14].display = "Units"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Observation.valueQuantity
* group.element[14].target.display = "Observation.valueQuantity"
* group.element[14].target.dependsOn[0].property = "value"
* group.element[14].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "SN" and OBX-5.3 NOT IN (":", "/", "-", "+")\
"""
* group.element[15].code = #OBX-6
* group.element[15].display = "Units"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Observation.valueQuantity
* group.element[15].target.display = "Observation.valueQuantity"
* group.element[15].target.dependsOn[0].property = "value"
* group.element[15].target.dependsOn[0].value = """
# IF OBX-2 IN ("NA", "NM")\
"""
* group.element[16].code = #OBX-6
* group.element[16].display = "Units"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Observation.valueRange.low
* group.element[16].target.display = "Observation.valueRange.low"
* group.element[16].target.dependsOn[0].property = "value"
* group.element[16].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "SN" AND OBX-5.3 EQUALS "-"\
"""
* group.element[17].code = #OBX-6
* group.element[17].display = "Units"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Observation.valueRange.high
* group.element[17].target.display = "Observation.valueRange.high"
* group.element[17].target.dependsOn[0].property = "value"
* group.element[17].target.dependsOn[0].value = """
# IF OBX-2 EQUALS "SN" AND OBX-5.3 EQUALS "-"\
"""
* group.element[18].code = #OBX-6
* group.element[18].display = "Units"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Observation.valueRatio.numerator
* group.element[18].target.display = "Observation.valueRatio.numerator"
* group.element[18].target.dependsOn[0].property = "value"
* group.element[18].target.dependsOn[0].value = """
# IF (OBX-2 EQUALS "SN" AND (OBX-5.3 IN (":", "/"))\
"""
* group.element[19].code = #OBX-6
* group.element[19].display = "Units"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #Observation.valueRatio.denominator
* group.element[19].target.display = "Observation.valueRatio.denominator"
* group.element[19].target.dependsOn[0].property = "value"
* group.element[19].target.dependsOn[0].value = """
# IF (OBX-2 EQUALS "SN" AND (OBX-5.3 IN (":", "/"))\
"""
* group.element[20].code = #OBX-7
* group.element[20].display = "References Range"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #Observation.referenceRange.text
* group.element[20].target.display = "Observation.referenceRange.text"
* group.element[21].code = #OBX-8
* group.element[21].display = "Interpretation Codes"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #Observation.interpretation
* group.element[21].target.display = "Observation.interpretation"
* group.element[22].code = #OBX-11
* group.element[22].display = "Observation Result Status"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #Observation.status
* group.element[22].target.display = "Observation.status"
* group.element[23].code = #OBX-14
* group.element[23].display = "Date/Time of the Observation"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #Observation.effectiveDateTime
* group.element[23].target.display = "Observation.effectiveDateTime"
* group.element[24].code = #OBX-16
* group.element[24].display = "Responsible Observer"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #Observation.performer[1](PractitionerRole.practitioner(Practitioner))
* group.element[24].target.display = "Observation.performer[1](PractitionerRole.practitioner(Practitioner))"
* group.element[25].code = #OBX-17
* group.element[25].display = "Observation Method"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #Observation.method
* group.element[25].target.display = "Observation.method"
* group.element[26].code = #OBX-18
* group.element[26].display = "Equipment Instance Identifier"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #Observation.device(Device.identifier)
* group.element[26].target.display = "Observation.device(Device.identifier)"
* group.element[27].code = #OBX-20
* group.element[27].display = "Observation Site"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #Observation.bodySite
* group.element[27].target.display = "Observation.bodySite"
* group.element[28].code = #OBX-21
* group.element[28].display = "Observation Instance Identifier"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #Observation.identifier
* group.element[28].target.display = "Observation.identifier"
* group.element[29].code = #OBX-21
* group.element[29].display = "Observation Instance Identifier"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #Observation.identifier.type.coding.code
* group.element[29].target.display = "= \"FILL\""
* group.element[30].code = #OBX-23
* group.element[30].display = "Performing Organization Name"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #Observation.performer[2](Organization)
* group.element[30].target.display = "Observation.performer[2](Organization)"
* group.element[31].code = #OBX-23
* group.element[31].display = "Performing Organization Name"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #Observation.performer[3](PractitionerRole.organization(Organization))
* group.element[31].target.display = "Observation.performer[3](PractitionerRole.organization(Organization))"
* group.element[31].target.dependsOn[0].property = "value"
* group.element[31].target.dependsOn[0].value = """
# IF OBX-25 VALUED\
"""
* group.element[32].code = #OBX-24
* group.element[32].display = "Performing Organization Address"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #Observation.performer[2](Organization.address)
* group.element[32].target.display = "Observation.performer[2](Organization.address)"
* group.element[33].code = #OBX-24
* group.element[33].display = "Performing Organization Address"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #Observation.performer[3](PractitionerRole.organization(Organization.address))
* group.element[33].target.display = "Observation.performer[3](PractitionerRole.organization(Organization.address))"
* group.element[33].target.dependsOn[0].property = "value"
* group.element[33].target.dependsOn[0].value = """
# IF OBX-25 VALUED\
"""
* group.element[34].code = #OBX-25
* group.element[34].display = "Performing Organization Medical Director"
* group.element[34].target.equivalence = #equivalent
* group.element[34].target.code = #Observation.performer[3](PractitionerRole)
* group.element[34].target.display = "Observation.performer[3](PractitionerRole)"
* group.element[35].code = #OBX-25
* group.element[35].display = "Performing Organization Medical Director"
* group.element[35].target.equivalence = #equivalent
* group.element[35].target.code = #Observation.performer[3](PractitionerRole.code
* group.element[35].target.display = "= \"#ext-LabMedicalDirector#\""
