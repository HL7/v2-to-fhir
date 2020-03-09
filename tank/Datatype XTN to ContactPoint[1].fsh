Instance: DatatypeXTNtoContactPoint[1]
InstanceOf: ConceptMap
Title: "Datatype XTN to ContactPoint[1] Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-xtn-to-contactpoint1"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-xtn-to-contactpoint1"
* version = "1.0"
* name = "Datatype_XTN_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "XTN"
* targetUri = "ContactPoint[1]"
* group.element[0].code = #XTN.1
* group.element[0].display = "Telephone Number"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #ContactPoint[1].value
* group.element[0].target.display = "ContactPoint[1].value"
* group.element[1].code = #XTN.2
* group.element[1].display = "Telecommunication Use Code"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #ContactPoint[1].use
* group.element[1].target.display = "ContactPoint[1].use"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = """
# IF XTN.1 VALUED\
"""
* group.element[2].code = #XTN.2
* group.element[2].display = "Telecommunication Use Code"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #ContactPoint[2].use
* group.element[2].target.display = "ContactPoint[2].use"
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = """
# IF XTN.4 VALUED\
"""
* group.element[3].code = #XTN.2
* group.element[3].display = "Telecommunication Use Code"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #ContactPoint[3].use
* group.element[3].target.display = "ContactPoint[3].use"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = """
# IF XTN.12 NOT EQUALS XTN.1 VALUED AND XTN.1 VALUED\
"""
* group.element[4].code = #XTN.3
* group.element[4].display = "Telecommunication Equipment Type"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #ContactPoint[1].use
* group.element[4].target.display = "ContactPoint[1].use"
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = """
# IF XTN.3 NOT EQUALS "CP" AND XTN.1 VALUED\
"""
* group.element[5].code = #XTN.3
* group.element[5].display = "Telecommunication Equipment Type"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #ContactPoint[2].use
* group.element[5].target.display = "ContactPoint[2].use"
* group.element[5].target.dependsOn[0].property = "value"
* group.element[5].target.dependsOn[0].value = """
# IF XTN.3 NOT EQUALS "CP" AND XTN.4 VALUED\
"""
* group.element[6].code = #XTN.3
* group.element[6].display = "Telecommunication Equipment Type"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #ContactPoint[3].use
* group.element[6].target.display = "ContactPoint[3].use"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = """
# IF XTN.3 NOT EQUALS "CP" AND ANDT XTN.1 VALUED AND XTN.12 NOT EQUALTS XTN.1\
"""
* group.element[7].code = #XTN.3
* group.element[7].display = "Telecommunication Equipment Type"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #ContactPoint[1].system
* group.element[7].target.display = "ContactPoint[1].system"
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = """
# IF XTN.3 NOT EQUALS "CP" AND XTN.1 VALUED\
"""
* group.element[8].code = #XTN.3
* group.element[8].display = "Telecommunication Equipment Type"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #ContactPoint[2].system
* group.element[8].target.display = "ContactPoint[2].system"
* group.element[8].target.dependsOn[0].property = "value"
* group.element[8].target.dependsOn[0].value = """
# IF XTN.3 NOT EQUALS "CP" AND XTN.4 VALUED\
"""
* group.element[9].code = #XTN.3
* group.element[9].display = "Telecommunication Equipment Type"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #ContactPoint[3].system
* group.element[9].target.display = "ContactPoint[3].system"
* group.element[9].target.dependsOn[0].property = "value"
* group.element[9].target.dependsOn[0].value = """
# IF XTN.3 NOT EQUALS "CP" AND XTN.1 VALUED AND XTN.12 NOT EQUALS XTN.1\
"""
* group.element[10].code = #XTN.4
* group.element[10].display = "Communication Address"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #ContactPoint[2].value
* group.element[10].target.display = "ContactPoint[2].value"
* group.element[11].code = #XTN.5
* group.element[11].display = "Country Code"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #ContactPoint[1].extension-contactpoint-country
* group.element[11].target.display = "ContactPoint[1].extension-contactpoint-country"
* group.element[11].target.dependsOn[0].property = "value"
* group.element[11].target.dependsOn[0].value = """
# IF XTN.1 VALUED\
"""
* group.element[12].code = #XTN.5
* group.element[12].display = "Country Code"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #ContactPoint[2].extension-contactpoint-country
* group.element[12].target.display = "ContactPoint[2].extension-contactpoint-country"
* group.element[12].target.dependsOn[0].property = "value"
* group.element[12].target.dependsOn[0].value = """
# IF XTN.4 VALUED\
"""
* group.element[13].code = #XTN.5
* group.element[13].display = "Country Code"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #ContactPoint[3].extension-contactpoint-country
* group.element[13].target.display = "ContactPoint[3].extension-contactpoint-country"
* group.element[13].target.dependsOn[0].property = "value"
* group.element[13].target.dependsOn[0].value = """
# IF XTN.12 NOT EQUALS XTN.1 VALUED AND XTN.1 VALUED\
"""
* group.element[14].code = #XTN.6
* group.element[14].display = "Area/City Code"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #ContactPoint[1].extension-contactpoint-area
* group.element[14].target.display = "ContactPoint[1].extension-contactpoint-area"
* group.element[14].target.dependsOn[0].property = "value"
* group.element[14].target.dependsOn[0].value = """
# IF XTN.1 VALUED\
"""
* group.element[15].code = #XTN.6
* group.element[15].display = "Area/City Code"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #ContactPoint[2].extension-contactpoint-area
* group.element[15].target.display = "ContactPoint[2].extension-contactpoint-area"
* group.element[15].target.dependsOn[0].property = "value"
* group.element[15].target.dependsOn[0].value = """
# IF XTN.4 VALUED\
"""
* group.element[16].code = #XTN.6
* group.element[16].display = "Area/City Code"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #ContactPoint[3].extension-contactpoint-area
* group.element[16].target.display = "ContactPoint[3].extension-contactpoint-area"
* group.element[16].target.dependsOn[0].property = "value"
* group.element[16].target.dependsOn[0].value = """
# IF XTN.12 NOT EQUALS XTN.1 VALUED AND XTN.1 VALUED\
"""
* group.element[17].code = #XTN.7
* group.element[17].display = "Local Number"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #ContactPoint[1].extension-contactpoint-local
* group.element[17].target.display = "ContactPoint[1].extension-contactpoint-local"
* group.element[17].target.dependsOn[0].property = "value"
* group.element[17].target.dependsOn[0].value = """
# IF XTN.1 VALUED\
"""
* group.element[18].code = #XTN.7
* group.element[18].display = "Local Number"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #ContactPoint[2].extension-contactpoint-local
* group.element[18].target.display = "ContactPoint[2].extension-contactpoint-local"
* group.element[18].target.dependsOn[0].property = "value"
* group.element[18].target.dependsOn[0].value = """
# IF XTN.4 VALUED\
"""
* group.element[19].code = #XTN.7
* group.element[19].display = "Local Number"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #ContactPoint[3].extension-contactpoint-local
* group.element[19].target.display = "ContactPoint[3].extension-contactpoint-local"
* group.element[19].target.dependsOn[0].property = "value"
* group.element[19].target.dependsOn[0].value = """
# IF XTN.12 NOT EQUALS XTN.1 VALUED AND XTN.1 VALUED\
"""
* group.element[20].code = #XTN.8
* group.element[20].display = "Extension"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #ContactPoint[1].extension-contactpoint-extension
* group.element[20].target.display = "ContactPoint[1].extension-contactpoint-extension"
* group.element[20].target.dependsOn[0].property = "value"
* group.element[20].target.dependsOn[0].value = """
# IF XTN.1 VALUED\
"""
* group.element[21].code = #XTN.8
* group.element[21].display = "Extension"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #ContactPoint[2].extension-contactpoint-extension
* group.element[21].target.display = "ContactPoint[2].extension-contactpoint-extension"
* group.element[21].target.dependsOn[0].property = "value"
* group.element[21].target.dependsOn[0].value = """
# IF XTN.4 VALUED\
"""
* group.element[22].code = #XTN.8
* group.element[22].display = "Extension"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #ContactPoint[3].extension-contactpoint-extension
* group.element[22].target.display = "ContactPoint[3].extension-contactpoint-extension"
* group.element[22].target.dependsOn[0].property = "value"
* group.element[22].target.dependsOn[0].value = """
# IF XTN.12 NOT EQUALS XTN.1 VALUED AND XTN.1 VALUED\
"""
* group.element[23].code = #XTN.12
* group.element[23].display = "Unformatted Telephone number"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #ContactPoint[3].value
* group.element[23].target.display = "ContactPoint[3].value"
* group.element[23].target.dependsOn[0].property = "value"
* group.element[23].target.dependsOn[0].value = """
# IF XTN.12 NOT EQUALS XTN.1\
"""
* group.element[24].code = #XTN.13
* group.element[24].display = "Effective Start Date"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #ContactPoint[1].period.start
* group.element[24].target.display = "ContactPoint[1].period.start"
* group.element[25].code = #XTN.13
* group.element[25].display = "Effective Start Date"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #ContactPoint[2].period.start
* group.element[25].target.display = "ContactPoint[2].period.start"
* group.element[26].code = #XTN.13
* group.element[26].display = "Effective Start Date"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #ContactPoint[3].period.start
* group.element[26].target.display = "ContactPoint[3].period.start"
* group.element[27].code = #XTN.14
* group.element[27].display = "Expiration Date"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #ContactPoint[1].period.end
* group.element[27].target.display = "ContactPoint[1].period.end"
* group.element[28].code = #XTN.14
* group.element[28].display = "Expiration Date"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #ContactPoint[2].period.end
* group.element[28].target.display = "ContactPoint[2].period.end"
* group.element[29].code = #XTN.14
* group.element[29].display = "Expiration Date"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #ContactPoint[3].period.end
* group.element[29].target.display = "ContactPoint[3].period.end"
* group.element[30].code = #XTN.18
* group.element[30].display = "Preference Order"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #ContactPoint[1].rank
* group.element[30].target.display = "ContactPoint[1].rank"
* group.element[31].code = #XTN.18
* group.element[31].display = "Preference Order"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #ContactPoint[2].rank
* group.element[31].target.display = "ContactPoint[2].rank"
* group.element[32].code = #XTN.18
* group.element[32].display = "Preference Order"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #ContactPoint[3].rank
* group.element[32].target.display = "ContactPoint[3].rank"
