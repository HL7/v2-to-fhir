Instance: DatatypePLtoLocation[1]
InstanceOf: ConceptMap
Title: "Datatype PL to Location[1] Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-pl-to-location1"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-pl-to-location1"
* version = "1.0"
* name = "Datatype_PL_Map"
* status = #active
* experimental = true
* date = "2020-03-08"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PL"
* targetUri = "Location[1]"
* group.element[0].code = #PL.1
* group.element[0].display = "Point of Care"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Location[1]
* group.element[0].target.display = "Location[1]"
* group.element[1].code = #PL.1
* group.element[1].display = "Point of Care"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Location[1].status
* group.element[1].target.display = "Location[1].status"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = """
# IF PL.5 VALUED\
"""
* group.element[2].code = #PL.1
* group.element[2].display = "Point of Care"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Location[1].mode
* group.element[2].target.display = "= \"instance\""
* group.element[3].code = #PL.1
* group.element[3].display = "Point of Care"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Location[1].physicalType.coding.system
* group.element[3].target.display = "= \"http://terminology.hl7.org/CodeSystem/location-physical-type\""
* group.element[4].code = #PL.2
* group.element[4].display = "Room"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Location[2]
* group.element[4].target.display = "Location[2]"
* group.element[5].code = #PL.2
* group.element[5].display = "Room"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Location[2].status
* group.element[5].target.display = "Location[2].status"
* group.element[5].target.dependsOn[0].property = "value"
* group.element[5].target.dependsOn[0].value = """
# IF PL.5 VALUED\
"""
* group.element[6].code = #PL.2
* group.element[6].display = "Room"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Location[2].mode
* group.element[6].target.display = "= \"instance\""
* group.element[7].code = #PL.2
* group.element[7].display = "Room"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Location[2].physicalType.coding.code
* group.element[7].target.display = "= \"ro\""
* group.element[8].code = #PL.2
* group.element[8].display = "Room"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Location[2].physicalType.coding.system
* group.element[8].target.display = "= \"http://terminology.hl7.org/CodeSystem/location-physical-type\""
* group.element[9].code = #PL.2
* group.element[9].display = "Room"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Location[2].partOf.reference
* group.element[9].target.display = "= Location[1].id"
* group.element[10].code = #PL.3
* group.element[10].display = "Bed"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Location[3]
* group.element[10].target.display = "Location[3]"
* group.element[11].code = #PL.3
* group.element[11].display = "Bed"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Location[3].status
* group.element[11].target.display = "Location[3].status"
* group.element[11].target.dependsOn[0].property = "value"
* group.element[11].target.dependsOn[0].value = """
# IF PL.5 VALUED\
"""
* group.element[12].code = #PL.3
* group.element[12].display = "Bed"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Location[3].mode
* group.element[12].target.display = "= \"instance\""
* group.element[13].code = #PL.3
* group.element[13].display = "Bed"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Location[3].physicalType.coding.code
* group.element[13].target.display = "= \"bd\""
* group.element[14].code = #PL.3
* group.element[14].display = "Bed"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Location[3].physicalType.coding.system
* group.element[14].target.display = "= \"http://terminology.hl7.org/CodeSystem/location-physical-type\""
* group.element[15].code = #PL.3
* group.element[15].display = "Bed"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Location[3].partOf.reference
* group.element[15].target.display = "= Location[2].id"
* group.element[16].code = #PL.4
* group.element[16].display = "Facility"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Location[4]
* group.element[16].target.display = "Location[4]"
* group.element[17].code = #PL.4
* group.element[17].display = "Facility"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Location[4].status
* group.element[17].target.display = "Location[4].status"
* group.element[18].code = #PL.4
* group.element[18].display = "Facility"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Location[4].mode
* group.element[18].target.display = "= \"instance\""
* group.element[19].code = #PL.4
* group.element[19].display = "Facility"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #Location[4].physicalType.coding.code
* group.element[19].target.display = "= \"si\""
* group.element[20].code = #PL.4
* group.element[20].display = "Facility"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #Location[4].physicalType.coding.system
* group.element[20].target.display = "= \"http://terminology.hl7.org/CodeSystem/location-physical-type\""
* group.element[21].code = #PL.7
* group.element[21].display = "Building"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #Location[5]
* group.element[21].target.display = "Location[5]"
* group.element[22].code = #PL.7
* group.element[22].display = "Building"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #Location[5].status
* group.element[22].target.display = "Location[5].status"
* group.element[22].target.dependsOn[0].property = "value"
* group.element[22].target.dependsOn[0].value = """
# IF PL.5 VALUED\
"""
* group.element[23].code = #PL.7
* group.element[23].display = "Building"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #Location[5].mode
* group.element[23].target.display = "= \"instance\""
* group.element[24].code = #PL.7
* group.element[24].display = "Building"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #Location[5].physicalType.coding.code
* group.element[24].target.display = "= \"bu\""
* group.element[25].code = #PL.7
* group.element[25].display = "Building"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #Location[5].physicalType.coding.system
* group.element[25].target.display = "= \"http://terminology.hl7.org/CodeSystem/location-physical-type\""
* group.element[26].code = #PL.7
* group.element[26].display = "Building"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #Location[5].partOf.reference
* group.element[26].target.display = "= Location[4].id"
* group.element[27].code = #PL.8
* group.element[27].display = "Floor"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #Location[6]
* group.element[27].target.display = "Location[6]"
* group.element[28].code = #PL.8
* group.element[28].display = "Floor"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #Location[6].status
* group.element[28].target.display = "Location[6].status"
* group.element[28].target.dependsOn[0].property = "value"
* group.element[28].target.dependsOn[0].value = """
# IF PL.5 VALUED\
"""
* group.element[29].code = #PL.8
* group.element[29].display = "Floor"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #Location[6].mode
* group.element[29].target.display = "= \"instance\""
* group.element[30].code = #PL.8
* group.element[30].display = "Floor"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #Location[6].physicalType.coding.code
* group.element[30].target.display = "= \"lvl\""
* group.element[31].code = #PL.8
* group.element[31].display = "Floor"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #Location[6].physicalType.coding.system
* group.element[31].target.display = "= \"http://terminology.hl7.org/CodeSystem/location-physical-type\""
* group.element[32].code = #PL.8
* group.element[32].display = "Floor"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #Location[6].partOf.reference
* group.element[32].target.display = "= Location[5].id"
