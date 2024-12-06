// HL7 Concept Map_ OrderControlCode[ServiceRequest.status] - Sheet1.csv
Instance: TableHL70119ToRequestStatus
InstanceOf: ConceptMap
Title: "Table HL70119 to Request Status Map"
* title = "Table HL70119 to Request Status Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70119 to the FHIR Request Status Value Set."
* id = "table-hl70119-to-request-status"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70119-to-request-status"
* version = "1.0"
* name = "TableHL70119ToRequestStatus"
* status = #active
* experimental = true
* date = "2024-12-06"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70119"
* targetUri = "http://hl7.org/fhir/request-status"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70119 to Request Status.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1-M3ehfvgrNyOwWBIP3--KMEN6A0vi90W-hnkdrUIYIg/edit#gid=0"
* group.element[0].code = #AF
* group.element[0].display = "Order/service refill request approval"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #active
* group.element[0].target.display = "Active"
* group.element[1].code = #CA
* group.element[1].display = "Cancel order/service request"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #active
* group.element[1].target.display = "Active"
* group.element[2].code = #CH
* group.element[2].display = "Child order/service"
* group.element[2].target.equivalence = #unmatched
* group.element[3].code = #CN
* group.element[3].display = "Combined result"
* group.element[3].target.equivalence = #unmatched
* group.element[4].code = #CP
* group.element[4].display = "Cancel process step"
* group.element[4].target.equivalence = #unmatched
* group.element[5].code = #CR
* group.element[5].display = "Canceled as requested"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #revoked
* group.element[5].target.display = "Revoked"
* group.element[6].code = #DC
* group.element[6].display = "Discontinue order/service request"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #revoked
* group.element[6].target.display = "Revoked"
* group.element[7].code = #DE
* group.element[7].display = "Data errors"
* group.element[7].target.equivalence = #unmatched
* group.element[8].code = #DF
* group.element[8].display = "Order/service refill request denied"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #revoked
* group.element[8].target.display = "Revoked"
* group.element[9].code = #DR
* group.element[9].display = "Discontinued as requested"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #revoked
* group.element[9].target.display = "Revoked"
* group.element[10].code = #FU
* group.element[10].display = "Order/service refilled, unsolicited"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #completed
* group.element[10].target.display = "Completed"
* group.element[11].code = #HD
* group.element[11].display = "Hold order request"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #active
* group.element[11].target.display = "Active"
* group.element[12].code = #HR
* group.element[12].display = "On hold as requested"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #on-hold
* group.element[12].target.display = "On Hold"
* group.element[13].code = #LI
* group.element[13].display = "Link order/service to patient care problem or goal"
* group.element[13].target.equivalence = #unmatched
* group.element[14].code = #NA
* group.element[14].display = "Number assigned"
* group.element[14].target.equivalence = #unmatched
* group.element[15].code = #NW
* group.element[15].display = "New order/Service"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #active
* group.element[15].target.display = "Active"
* group.element[16].code = #OC
* group.element[16].display = "Order/service canceled"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #revoked
* group.element[16].target.display = "Revoked"
* group.element[17].code = #OD
* group.element[17].display = "Order/service discontinued"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #revoked
* group.element[17].target.display = "Revoked"
* group.element[18].code = #OE
* group.element[18].display = "Order/service released"
* group.element[18].target.equivalence = #unmatched
* group.element[19].code = #OF
* group.element[19].display = "Order/service refilled as requested"
* group.element[19].target.equivalence = #unmatched
* group.element[20].code = #OH
* group.element[20].display = "Order/service held"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #on-hold
* group.element[20].target.display = "On Hold"
* group.element[21].code = #OK
* group.element[21].display = "Order/service accepted & OK"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #active
* group.element[21].target.display = "Active"
* group.element[22].code = #OP
* group.element[22].display = "Notification of order for outside dispense"
* group.element[22].target.equivalence = #unmatched
* group.element[23].code = #OR
* group.element[23].display = "Released as requested"
* group.element[23].target.equivalence = #unmatched
* group.element[24].code = #PA
* group.element[24].display = "Parent order/service"
* group.element[24].target.equivalence = #unmatched
* group.element[25].code = #PR
* group.element[25].display = "Previous Results with new order/service"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #active
* group.element[25].target.display = "Active"
* group.element[26].code = #PY
* group.element[26].display = "Notification of replacement order for outside dispense"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #active
* group.element[26].target.display = "Active"
* group.element[27].code = #RE
* group.element[27].display = "Observations/Performed Service to follow"
* group.element[27].target.equivalence = #unmatched
* group.element[28].code = #RF
* group.element[28].display = "Refill order/service request"
* group.element[28].target.equivalence = #unmatched
* group.element[29].code = #RL
* group.element[29].display = "Release previous hold"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #active
* group.element[29].target.display = "Active"
* group.element[30].code = #RO
* group.element[30].display = "Replacement order"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #active
* group.element[30].target.display = "Active"
* group.element[31].code = #RP
* group.element[31].display = "Order/service replace request"
* group.element[31].target.equivalence = #unmatched
* group.element[32].code = #RQ
* group.element[32].display = "Replaced as requested"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #active
* group.element[32].target.display = "Active"
* group.element[33].code = #RR
* group.element[33].display = "Request received"
* group.element[33].target.equivalence = #unmatched
* group.element[34].code = #RU
* group.element[34].display = "Replaced unsolicited"
* group.element[34].target.equivalence = #unmatched
* group.element[35].code = #SC
* group.element[35].display = "Status changed"
* group.element[35].target.equivalence = #unmatched
* group.element[36].code = #SN
* group.element[36].display = "Send order/service number"
* group.element[36].target.equivalence = #unmatched
* group.element[37].code = #SR
* group.element[37].display = "Response to send order/service status request"
* group.element[37].target.equivalence = #unmatched
* group.element[38].code = #SS
* group.element[38].display = "Send order/service status request"
* group.element[38].target.equivalence = #unmatched
* group.element[39].code = #UA
* group.element[39].display = "Unable to accept order/service"
* group.element[39].target.equivalence = #unmatched
* group.element[40].code = #UC
* group.element[40].display = "Unable to cancel"
* group.element[40].target.equivalence = #unmatched
* group.element[41].code = #UD
* group.element[41].display = "Unable to discontinue"
* group.element[41].target.equivalence = #unmatched
* group.element[42].code = #UF
* group.element[42].display = "Unable to refill"
* group.element[42].target.equivalence = #unmatched
* group.element[43].code = #UH
* group.element[43].display = "Unable to put on hold"
* group.element[43].target.equivalence = #unmatched
* group.element[44].code = #UM
* group.element[44].display = "Unable to replace"
* group.element[44].target.equivalence = #unmatched
* group.element[45].code = #UN
* group.element[45].display = "Unlink order/service from patient care problem or goal"
* group.element[45].target.equivalence = #unmatched
* group.element[46].code = #UR
* group.element[46].display = "Unable to release"
* group.element[46].target.equivalence = #unmatched
* group.element[47].code = #UX
* group.element[47].display = "Unable to change"
* group.element[47].target.equivalence = #unmatched
* group.element[48].code = #XO
* group.element[48].display = "Change order/service request"
* group.element[48].target.equivalence = #unmatched
* group.element[49].code = #XR
* group.element[49].display = "Changed as requested"
* group.element[49].target.equivalence = #unmatched
* group.element[50].code = #XX
* group.element[50].display = "Order/service changed, unsol."
* group.element[50].target.equivalence = #unmatched
* group.element[51].code = #MC
* group.element[51].display = "Miscellaneous Charge – not associated with an order"
* group.element[51].target.equivalence = #unmatched
