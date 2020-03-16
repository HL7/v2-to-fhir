Instance: DatatypeXADtoAddress
InstanceOf: ConceptMap
Title: "Datatype XAD to Address Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-xad-to-address"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-xad-to-address"
* version = "1.0"
* name = "Datatype_XAD_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "XAD"
* targetUri = "Address"
* group.element[0].code = #XAD.1
* group.element[0].display = "Street Address"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Address.line[1-3]
* group.element[0].target.display = "Address.line[1-3]"
* group.element[1].code = #XAD.2
* group.element[1].display = "Other Designation"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Address.line[4]
* group.element[1].target.display = "Address.line[4]"
* group.element[2].code = #XAD.3
* group.element[2].display = "City"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Address.city
* group.element[2].target.display = "Address.city"
* group.element[3].code = #XAD.4
* group.element[3].display = "State or Province"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Address.state
* group.element[3].target.display = "Address.state"
* group.element[4].code = #XAD.5
* group.element[4].display = "Zip or Postal Code"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Address.postalCode
* group.element[4].target.display = "Address.postalCode"
* group.element[5].code = #XAD.6
* group.element[5].display = "Country"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Address.country
* group.element[5].target.display = "Address.country"
* group.element[6].code = #XAD.7
* group.element[6].display = "Address Type"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Address.type
* group.element[6].target.display = "Address.type"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = """
# IF XAD.7 IN ("M", "SH")\
"""
* group.element[7].code = #XAD.7
* group.element[7].display = "Address Type"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Address.use
* group.element[7].target.display = "Address.use"
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = """
# IF XAD.7 IN ("BA", "BI", "C", "B", "H", "O")\
"""
* group.element[8].code = #XAD.7
* group.element[8].display = "Address Type"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Address.ext.iso21090-AD-use
* group.element[8].target.display = "Address.ext.iso21090-AD-use"
* group.element[8].target.dependsOn[0].property = "value"
* group.element[8].target.dependsOn[0].value = """
# IF XAD.7 EQUALS "HV"\
"""
* group.element[9].code = #XAD.9
* group.element[9].display = "County/Parish Code"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Address.district
* group.element[9].target.display = "Address.district"
* group.element[10].code = #XAD.10
* group.element[10].display = "Census Tract"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Address.extension-iso21090-ADXP-censusTract
* group.element[10].target.display = "Address.extension-iso21090-ADXP-censusTract"
* group.element[11].code = #XAD.12
* group.element[11].display = "Address Validity Range"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Address.period
* group.element[11].target.display = "Address.period"
* group.element[12].code = #XAD.13
* group.element[12].display = "Effective Date"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Address.period.start
* group.element[12].target.display = "Address.period.start"
* group.element[13].code = #XAD.14
* group.element[13].display = "Expiration Date"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Address.period.end
* group.element[13].target.display = "Address.period.end"
* group.element[14].code = #XAD.19
* group.element[14].display = "Addressee"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Address.line[5]
* group.element[14].target.display = "Address.line[5]"
