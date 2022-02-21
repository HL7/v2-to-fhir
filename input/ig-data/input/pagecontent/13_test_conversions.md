The following v2 messages and corresponding FHIR Bundles represent a robust v2 message for a particular common use of that message and
the corresponding agreed to FHIR Bundle that a mapper should create based on the mapping spreadsheets.  These are to be used for
v2-to-FHIR mapping tool validation, while they can also be used to validate that the mapping spreadsheets are complete.

While initially these are Draft, at some point they will be changed to STU and then Normative to establish them as the agreed to benchmark.   

Note that we will not create mappings this way for each structure, rather those that would exercise the most segments and/or unique
features (e.g., we may only need very few ADT messages, but would need more to clarify groupings used for Micro results or other unique
use cases).

### ADT Messages

#### ADT_A01
<table>
<tbody>
<tr><th width="10">HL7 v2: ADT_AO1</th><th width="20">HL7 FHIR: Bundle</th><tr></thead>
 <tr>
  <td>
  <wbr>
    MSH|^~\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|198808181126|SECURITY|ADT^A01^ADT_A01|MSG00001|P|2.8||
<br>EVN|A01|200708181123||
<br>PID|1||PATID1234^^^ADT1^MR^GOOD HEALTH HOSPITAL^^198807010900^199912312359~123456789^^^USSSA^SS||EVERYMAN&SMITH^ADAM^ALBERT^III^DR^^L^^^199907010900&199912312359^^199907010900^199912312359^PhD^AL|BOWMAN|19610615|M^MALE^HL70001||2106-3^WHITE^HL70005|2222 HOME STREET^APT 23^GREENSBORO^NC^27401-1020^US^M^^GUILDFORD&GUILDFORD&HL70289^^^199907010900&199912312359^199907010900^199912312359^^^^^C/O N. NUCLEAR|GUILDFORD|(555) 555-2004^PRN^CP^^1^555^555-2004^^^^^^198807010900^199912312359~^NET^Internet^smith2001@isp.com|(555)555-2005^WPN^PH^^1^555^555-2005^X2301^^^^^198807010900^199912312359|cs^Czech^HL70296|M^MARRIED^HL70002|AGN^Agnostic^HL70006||444333333|987654^NC^20010715||H^Hispanic or Latino^HL70189|Prague|Y|2|CZ^Czech^HL70171|||19880818|Y|||19880818|||||||(555) 555-2007^PRN^PH^^1^555^555-2004^^^^^^198807010900^199912312359
<br>PD1|||Good Health Clinic^L^^^^NPIAA^XX^^^123457|998874^PARSONS^PATRICIA^COLLEEN^^DR^^^NPIAA^L^^^NPI^^^^^^19900101^19991231^MD|N^NOT A STUDENT^HL70231||Y^YES PATIENT HAS WILL^HL70315|||||||AGNOSTIC HALL
<br>NK1|1|NUCLEAR^NELDA^W|SPO^SPOUSE^HL70063|2222 HOME STREET^APT 23^GREENSBORO^NC^27401-1020^US^M^^GUILDFORD&GUILDFORD&HL70289^^^199907010900&199912312359^199907010900^199912312359|(555) 555-2007^PRN^PH^^1^555^555-2004^^^^^^198807010900^199912312359||NK^NEXT OF KIN^HL70131|19770704|19980901|||||M^MARRIED^HL70002|F^FEMALE^HL70001|19680913
<br>PV1|1|I^INPATIENT^HL70004|12NORTH^1211^A^GOOD HEALTH HOSPITAL^^^1956 ADDITION^12|U^URGENT^HL0007|pa5543^^GHH||004777^ATTEND^AARON^A^DR^^^NPIAA^L^^^NPI^^^^^^19900101^19991231^MD|004778^REFER^RALPH^A^DR^^^NPIAA^L^^^NPI^^^^^^19900101^19991231^MD|004799^CONSULT^CHRISTINA^A^DR^^^NPIAA^L^^^NPI^^^^^^19900101^19991231^MD|SUR^SURGICAL SERVICE^HL70069|||R^READMISSION^HL70093|ADM^^HL70023||VIP^VIP^HL70099|004744^ADMIT^ABIGAIL^A^DR^^^NPIAA^L^^^NPI^^^^^^19900101^19991231^MD||P1231^^^GHH^VN|||||||||||||||||DEC^DECEASED^HL70112||VEG^VEGETARIAN^HL701114||||||198808161216|198808181126|||||9942^^^GHS^VN||004744^OTHER^OTHELLO^A^DR^^^NPIAA^L^^^NPI^^^^^^19900101^19991231^MD
<br>PV2|||||||||||2|ADMIT TO CARDIAC UNIT|||||||||||||1^EMERGENCY^HL70217|||||||||||||A^AMBULANCE^HL70430
<br>AL1|1|DA^DRUG ALLERGY^HL70127|387458008^ASPIRIN(SUBSTANCE)^SCT|MO^MODERATE^HL70128|HIVES|199807011755
<br>AL1|2|DA^DRUG ALLERGY^HL70127|373529000^MORPHINE(SUBSTANCE)^SCT|MO^MODERATE^HL70128|DELERIUM|199806111225
<br>DG1|1||85898001^CARDIOMYOPATHY^SCT||19970212|||||||||||998874^PARSONS^PATRICIA^COLLEEN^^DR^^^NPIAA^L^^^NPI^^^^^^19900101^19991231^MD|||19970213|423432^GHS|U
<br>PR1|1||41976001^Cardiac catheterization^SCT||198808180701|||99234^SLEEPY^SAMANTHA^ELAINE^^DR^^^NPIAA^L^^^NPI^^^^^^19900101^19991231^MD|||998874^SUGEON^SYLVIA^^^DR^^^NPIAA^L^^^NPI^^^^^^19900101^19991231^MD|998874^PERPFORMER^PETER^^^DR^^^NPIAA^L^^^NPI^^^^^^19900101^19991231^MD||||85898001^CARDIOMYOPATHY^SCT|||123231^GHH
   </wbr>
  </td>
  <td style="text-wrap:normal;word-wrap:break-word">
  <code>
{
  "resourceType": "Bundle",
  "type": "transaction",
  "entry": [
    {
      "fullUrl": "urn:uuid:eb76f96f-dde1-31cd-8815-7c2546dabe7e",
      "resource": {
        "resourceType": "Patient",
        "id": "eb76f96f-dde1-31cd-8815-7c2546dabe7e",
        "identifier": [
          {
            "value": "PATID1234",
            "type": {
              "coding": [
                {
                  "code": "MR"
                }
              ]
            },
            "period": {
              "end": "1988-07-01T09:00:00.000Z"
            }
          },
          {
            "value": "444333333"
          },
          {
            "value": "987654",
            "type": {
              "coding": [
                {
                  "code": "DL"
                }
              ]
            },
            "system": "NC",
            "period": {
              "end": "2001-07-15T00:00:00.000Z"
            }
          }
        ],
        "name": [
          {
            "family": "EVERYMAN",
            "given": [
              "ADAM",
              "ALBERT"
            ],
            "suffix": [
              "III",
              "PhD"
            ],
            "prefix": [
              "DR"
            ],
            "use": "official",
            "period": {
              "start": "1999-07-01T09:00:00.000Z",
              "end": "1999-12-31T23:59:00.000Z"
            }
          }
        ],
        "birthDate": "1961-06-15",
        "address": [
          {
            "line": [
              "2222 HOME STREET",
              "APT 23",
              "C/O N. NUCLEAR"
            ],
            "city": "GREENSBORO",
            "state": "NC",
            "postalCode": "27401-1020",
            "country": "US",
            "type": "postal",
            "district": "GUILDFORD",
            "period": {
              "start": "1999-07-01T09:00:00.000Z",
              "end": "1999-12-31T23:59:00.000Z"
            }
          },
          {
            "district": "GUILDFORD"
          }
        ],
        "telecom": [
          {
            "value": "(555) 555-2004",
            "use": "home",
            "period": {
              "start": "1988-07-01T09:00:00.000Z"
            }
          },
          {
            "value": "(555)555-2005",
            "use": "work",
            "period": {
              "start": "1988-07-01T09:00:00.000Z",
              "end": "1999-12-31T23:59:00.000Z"
            }
          },
          {
            "value": "(555) 555-2007",
            "use": "home",
            "period": {
              "start": "1988-07-01T09:00:00.000Z",
              "end": "1999-12-31T23:59:00.000Z"
            }
          }
        ],
        "communication": [
          {
            "preferred": "true"
          }
        ],
        "maritalStatus": {
          "coding": [
            {
              "code": "M",
              "display": "Married",
              "system": "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
            }
          ]
        },
        "multipleBirthInteger": "2",
        "deceasedDateTime": "1988-08-18T00:00:00.000Z",
        "meta": {
          "lastUpdated": "19880818"
        }
      },
      "request": {
        "method": "POST",
        "url": "Patient"
      }
    },
    {
      "fullUrl": "urn:uuid:668e1a28-5fbc-307f-b8ed-f2caa49c7b95",
      "resource": {
        "resourceType": "Encounter",
        "id": "668e1a28-5fbc-307f-b8ed-f2caa49c7b95",
        "class": {
          "code": "IMP",
          "display": "inpatient encounter",
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode"
        },
        "status": "finished",
        "location": [
          {
            "status": "active"
          }
        ],
        "type": [
          {
            "coding": [
              {
                "code": "U",
                "display": "Urgent",
                "system": "http://terminology.hl7.org/CodeSystem/v2-0007"
              }
            ]
          }
        ],
        "hospitalization": {
          "preAdmissionIdentifier": {
            "value": "pa5543"
          },
          "reAdmission": {
            "coding": [
              {
                "code": "R",
                "display": "Re-admission",
                "system": "http://terminology.hl7.org/CodeSystem/v2-0092"
              }
            ]
          },
          "admitSource": {
            "coding": [
              {
                "code": "ADM",
                "system": "HL70023"
              }
            ]
          },
          "dischargeDisposition": {
            "coding": [
              {
                "code": "DEC",
                "display": "DECEASED",
                "system": "HL70112"
              }
            ]
          },
          "dietPreference": [
            {
              "coding": [
                {
                  "code": "VEG",
                  "display": "VEGETARIAN",
                  "system": "HL701114"
                }
              ]
            }
          ]
        },
        "participant": [
          {
            "type": [
              {
                "coding": [
                  {
                    "code": "ATND",
                    "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
                    "display": "attender"
                  }
                ]
              }
            ]
          },
          {
            "type": [
              {
                "coding": [
                  {
                    "code": "REF",
                    "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
                  }
                ],
                "text": "referrer"
              }
            ]
          },
          {
            "type": [
              {
                "coding": [
                  {
                    "code": "CON",
                    "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
                  }
                ],
                "text": "consultant"
              }
            ]
          },
          {
            "type": [
              {
                "coding": [
                  {
                    "code": "ADM",
                    "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
                  }
                ],
                "text": "admitter"
              }
            ]
          },
          {
            "type": [
              {
                "coding": [
                  {
                    "code": "PART",
                    "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
                  }
                ],
                "text": "Participation"
              }
            ]
          }
        ],
        "serviceType": {
          "coding": [
            {
              "code": "SUR",
              "display": "SURGICAL SERVICE",
              "system": "HL70069"
            }
          ]
        },
        "identifier": [
          {
            "value": "P1231",
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v2-0203"
                }
              ],
              "text": "visit number"
            }
          },
          {
            "value": "9942",
            "type": {
              "coding": [
                {
                  "code": "VN"
                }
              ]
            }
          }
        ],
        "period": {
          "start": "1988-08-16T12:16:00.000Z",
          "end": "1988-08-18T11:26:00.000Z"
        },
        "length": {
          "value": "2",
          "unit": "d",
          "system": "http://unitsofmeasure.org/"
        },
        "text": {
          "div": "ADMIT TO CARDIAC UNIT"
        },
        "priority": {
          "coding": [
            {
              "code": "EM",
              "display": "emergency",
              "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority"
            }
          ]
        }
      },
      "request": {
        "method": "POST",
        "url": "Encounter"
      }
    },
    {
      "fullUrl": "urn:uuid:1b5b9d01-748b-3df9-9859-df703088366f",
      "resource": {
        "resourceType": "Procedure",
        "id": "1b5b9d01-748b-3df9-9859-df703088366f",
        "performedDateTime": "1988-08-18T07:01:00.000Z",
        "identifier": [
          {
            "value": "123231"
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Procedure"
      }
    },
    {
      "resource": {
        "resourceType": "Encounter",
        "id": "668e1a28-5fbc-307f-b8ed-f2caa49c7b95",
        "subject": {
          "reference": "Patient/eb76f96f-dde1-31cd-8815-7c2546dabe7e"
        }
      }
    },
    {
      "resource": {
        "resourceType": "Procedure",
        "id": "1b5b9d01-748b-3df9-9859-df703088366f",
        "subject": {
          "reference": "Patient/eb76f96f-dde1-31cd-8815-7c2546dabe7e"
        }
      }
    },
    {
      "fullUrl": "urn:uuid:717f34e3-dedc-3fdb-af4d-9769886d3150",
      "resource": {
        "resourceType": "RelatedPerson",
        "id": "717f34e3-dedc-3fdb-af4d-9769886d3150",
        "relationship": [
          {
            "coding": [
              {
                "code": "SPS",
                "display": "spouse",
                "system": "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
              }
            ]
          }
        ],
        "period": {
          "start": "1977-07-04T00:00:00.000Z",
          "end": "1998-09-01T00:00:00.000Z"
        },
        "address": [
          {
            "line": [
              "2222 HOME STREET",
              "APT 23"
            ],
            "city": "GREENSBORO",
            "state": "NC",
            "postalCode": "27401-1020",
            "country": "US",
            "type": "postal",
            "district": "GUILDFORD",
            "period": {
              "start": "1999-07-01T09:00:00.000Z",
              "end": "1999-12-31T23:59:00.000Z"
            }
          }
        ],
        "telecom": [
          {
            "value": "(555) 555-2007",
            "use": "home",
            "period": {
              "start": "1988-07-01T09:00:00.000Z",
              "end": "1999-12-31T23:59:00.000Z"
            }
          }
        ],
        "name": [
          {
            "family": "NUCLEAR",
            "given": [
              "NELDA",
              "W"
            ]
          }
        ],
        "birthDate": "1968-09-13"
      },
      "request": {
        "method": "POST",
        "url": "RelatedPerson"
      }
    },
    {
      "resource": {
        "resourceType": "RelatedPerson",
        "id": "717f34e3-dedc-3fdb-af4d-9769886d3150",
        "patient": {
          "reference": "Patient/eb76f96f-dde1-31cd-8815-7c2546dabe7e"
        }
      }
    },
    {
      "fullUrl": "urn:uuid:747c220d-0dbf-3477-80c0-66f03094848b",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "747c220d-0dbf-3477-80c0-66f03094848b"
      },
      "request": {
        "method": "POST",
        "url": "AllergyIntolerance"
      }
    },
    {
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "747c220d-0dbf-3477-80c0-66f03094848b",
        "patient": {
          "reference": "Patient/eb76f96f-dde1-31cd-8815-7c2546dabe7e"
        }
      }
    },
    {
      "fullUrl": "urn:uuid:91e70510-b25c-3de8-a2a1-b22e786534e3",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "91e70510-b25c-3de8-a2a1-b22e786534e3"
      },
      "request": {
        "method": "POST",
        "url": "AllergyIntolerance"
      }
    },
    {
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "91e70510-b25c-3de8-a2a1-b22e786534e3",
        "patient": {
          "reference": "Patient/eb76f96f-dde1-31cd-8815-7c2546dabe7e"
        }
      }
    },
    {
      "fullUrl": "urn:uuid:ff3f3a55-7576-3a81-8395-71d13cc70b96",
      "resource": {
        "resourceType": "Condition",
        "id": "ff3f3a55-7576-3a81-8395-71d13cc70b96",
        "code": {
          "coding": [
            {
              "code": "85898001",
              "display": "CARDIOMYOPATHY",
              "system": "SCT"
            }
          ]
        },
        "onsetDateTime": "1997-02-12T00:00:00.000Z",
        "recordedDate": "1997-02-13T00:00:00.000Z",
        "identifier": [
          {
            "value": "423432"
          }
        ],
        "verificationStatus": {
          "coding": [
            {
              "code": "entered-in-error",
              "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status"
            }
          ]
        }
      },
      "request": {
        "method": "POST",
        "url": "Condition"
      }
    },
    {
      "resource": {
        "resourceType": "Condition",
        "id": "ff3f3a55-7576-3a81-8395-71d13cc70b96",
        "subject": {
          "reference": "Patient/eb76f96f-dde1-31cd-8815-7c2546dabe7e"
        }
      }
    },
    {
      "resource": {
        "resourceType": "Encounter",
        "id": "668e1a28-5fbc-307f-b8ed-f2caa49c7b95",
        "diagnosis": [
          {
            "condition": {
              "reference": "Condition/ff3f3a55-7576-3a81-8395-71d13cc70b96"
            }
          }
        ]
      }
    }
  ]
}
   </code>
  </td>
 </tr 
</tbody>
</table>

### Immunization Messages
* VXU_V04: To be provided
  * FHIR Bundle: To be provided

### Result Messages
* ORU_R01: Get LRI from ONC/NIST
  * FHIR Bundle:

