The following v2 messages represent a robust set of v2 message for a particular common use of that message and
the corresponding agreed to FHIR Bundle (once available) that a mapper should create based on the mapping spreadsheets.  These are to be used for
v2-to-FHIR mapping tool validation, while they can also be used to validate that the mapping spreadsheets are complete.

While initially these are Draft, at some point they will be changed to STU and then Normative to establish them as the agreed to benchmark.   

Note that we will not create mappings this way for each structure, rather those that would exercise the most segments and/or unique
features (e.g., we may only need very few ADT messages, but would need more to clarify groupings used for Micro results or other unique
use cases).

### ADT Messages
#### ADT_A01
**HL7 v2**
<table>
<tr>
MSH|^~\&|SndApp^1.2.3.4.5.2^ISO|SndFac^1.2.3.4.5.1^ISO|RcvApp^1.2.3.4.6.2^ISO|RcvFac^1.2.3.4.6.1^ISO|20150601135823+0100|ADTADM|ADT^A01^ADT_A01|4637382|P|2.5.1|||AL|NE|USA|ASCII|en|||SndOrg^L^0009^1^1000^AssignAuth&1.2.3.4.5&ISO^XX^AssignFac&1.2.3.4.5.3&ISO^^67890|RecOrg^L^0011^2^1000^AssignAuth&1.2.3.4.6&ISO^XX^AssignFac&1.2.3.4.5.6.3&ISO^^45678|^ftp://www.goodhealth.org/somearea/someapp^URI|^ftp://www.goodlab.org/somearea/someapp^URI
<br>EVN|A01|20150601135823+0100||ADT_EVENT|23432^Smith^Gordon^Denny^Jr^MD^^AssignAuth&1.2.3.4.5.6&ISO^L^9^1000^DN^ AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000+0100^20330101000000+0100^doctor|20150601135822+0100|EventFac^1.2.3.4.5.4^ISO
<br>PID|1||1032702^^^V2FHIR&1.2.3.4.5&ISO^MR^AssignFac&1.2.3.4.5.6.3&ISO^20190101^20290101~N09204074^^^WADMV&1.3.4.7&ISO^DL^^20180601^20280531||Everywoman^Eve^L^Jr^Dr^^L^^^^G^20000909^20301231^PhD~Original^Eve^L^Jr^^^M^^^19700601&20000908^G|Madewell|197006010912|F||1002-5^American Indian or Alaska Native^HL70005~2106-3^White^HL70005|1000 House Lane^Appt 123^Ann Arbor ^MI^99999^USA^H^^WA~212 Resort Drive^^Miami^FL^99999^USA^V^^^^^^20210901^20211115||^PRN^PH^^1^555^555-8473~^NET^Internet^eve@test.test|^WPN^PH^^1^555^555-1126^12|en^English^HL70296|M^Married^HL70002|C^Catholic^HL70006|12345^^^ V2FHIR&1.2.3.4.5&ISO^AN|000-00-0000|J342342^^^MI&1.2.5.2.&ISO^DL||N^ Not Hispanic or Latino&HL70189|Indianapolis Indiana|Y|2|USA^United States^HL70399||||N|N||20150601135712|SndApp^1.2.3.4.5.2^ISO|||||364^Birch Creek Tribe^https://terminology.hl7.org/3.1.0/CodeSystem-v3-TribalEntityUS.html||^^internet^me@northpole.earth|
<br>PD1|||East Hospital^L^^^^AssignAuth&1.2.3.4.5.6&ISO^XX^ SndFac&1.2.3.4.5&ISO^^4324B|23432^Smith^Gordon^Denny^Jr^MD^^ AssignAuth&1.2.3.4.5.6&ISO^L^9^1000^DN^AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000^20330101000000^doctor|N^Not a student^HL70231|W|U^Unknown^HL70315|||||||Pleasant Valley Church
<br>NK1||Everyone^Elliot^BRO^Brother^HL70396|123 High Street^^Mountainville^CA^99995
<br>PV1|1|E^EMERGENCY^HL70004|EMERG^101^01^^^^^^^^DEPID|E^Emergency^HL70007||EMERG^103^02^^^^^^^^DEPID|214425290^Doctor^Emory^E^Sr^Dr^MD^^AssignAuth&1.2.3.4.5.6&ISO^L^1^M10^NPI^AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000^20330101000000^doctor|||EMR^Emergency^HL70069||||||VIP^very important person^HL70099|2144252903^Doctor^Emory^E^Sr^Dr^MD^^AssignAuth&1.2.3.4.5.6&ISO^L^1^M10^NPI^AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000^20330101000000^doctor||81456267^^^ AssignAuth&1.2.3.4.5.6&ISO^VN||||||||||||||||||||Adm*Conf|||||20150601135800|||
<br>PV2||GENERAL|165002^Accident-prone^SNM||||||20150606|5||Address opportunities to be less accident prone.|214425290^Doctor^Emory^E^Sr^Dr^MD^^AssignAuth&1.2.3.4.5.6&ISO^L^1^M10^NPI^AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000^20330101000000^doctor||||||||N^No Pubicity^HL70215|N|||2^Urgent^HL72017|||||||||||||A^Ambulance^HL70430||AC^Acute^HL70432 
<br>OBX|1|NM|8302-2^Body Height^LN||190|cm^centimeter^UCUM|||||F|
<br>AL1|1|LA^Pollen Allergy^HL70127|^Timothy Grass|MO^Moderate^HL70128|Sneeze|
<br>IN1|1|||MyInsurancePlan||||||125189^^^MyInsurancePlan&1.2.3.7.4.2&ISO^SN|Acme^L&Legal&HL70396|20150101|20151231||HMO^Health Maintenance Organization^HL70086|Everywoman^Eve^L^Jr^Dr^^L^^^^G^20000909^20301231^PhD~Original^Eve^L^Jr^^^M^^^19700601&20000908^G|SEL^Self^HL70396||||||||||||||||||||||||||||||||125189^^^MyInsurancePlan&1.2.3.7.4.2&ISO^SN|
<br>IN3|||||||||||||||||||||Case Manager Smith|
</tr>
</table>

**HL7 FHIR Bundle**
<br>To be provided

### Scheduling Messages
#### SIU_S12
**HL7 v2**
<table>
<tr>
MSH|^~\&|SndApp^1.2.3.4.5.2^ISO|SndFac^1.2.3.4.5.1^ISO|RcvApp^1.2.3.4.6.2^ISO|RcvFac^1.2.3.4.6.1^ISO|20150601145823+0100|SCH12|SIU^S12^SIU_S12|48907-45|P|2.5.1|||AL|NE|USA|ASCII|en|||SndOrg^L^0009^1^1000^AssignAuth&1.2.3.4.5&ISO^XX^AssignFac&1.2.3.4.5.3&ISO^^67890| RecOrg^L^0011^2^1000^AssignAuth&1.2.3.4.6&ISO^XX^AssignFac&1.2.3.4.5.6.3&ISO^^45678|^ftp://www.goodhealth.org/somearea/someapp^URI|^ftp://www.goodprovider.org/somearea/someapp^URI
<br>SCH|1209|13030|||1209|OV15^OFFICE VISIT-15^L|OFFICE VISIT-15^OFFICE VISIT-15^L|Normal^Routine schedule request type - default if not valued^HL70396|15|min^minutes^UCUM|^^15^20150613140000^20160621141500|999EODUSER^BACKGROUND^EOD^USER|^WPN^^^1^999^9999999|||mdrxmbyr^Byrne^Misty|^WPN^^^1^888^8888888|||999EODUSER^BACKGROUND^EOD^USER|||||Booked^The intended appoint is booked^HL70278|12345^SndApp^1.2.3.4.5.2^ISO|52431^RcvApp^1.2.3.4.6.2^ISO|
<br>PID|1||1032702^^^V2FHIR&1.2.3.4.5&ISO^MR^AssignFac&1.2.3.4.5.6.3&ISO^20190101^20290101~N09204074^^^WADMV&1.3.4.7&ISO^DL^^20180601^20280531||Everywoman^Eve^L^Jr^Dr^^L^^^^G^20000909^20301231^PhD~Original^Eve^L^Jr^^^M^^^19700601&20000908^G|Madewell|197006010912|F||1002-5^American Indian or Alaska Native^HL70005~2106-3^White^HL70005|1000 House Lane^Appt 123^Ann Arbor ^MI^99999^USA^H^^WA~212 Resort Drive^^Miami^FL^99999^USA^V^^^^^^20210901^20211115||^PRN^PH^^1^555^555-8473~^NET^Internet^eve@test.test|^WPN^PH^^1^555^555-1126^12|en^English^HL70296|M^Married^HL70002|C^Catholic^HL70006|12345^^^ V2FHIR&1.2.3.4.5&ISO^AN|000-00-0000|J342342^^^MI&1.2.5.2.&ISO^DL||N^ Not Hispanic or Latino&HL70189|Indianapolis Indiana|Y|2|USA^United States^HL70399||||N|N||20150601135712|SndApp^1.2.3.4.5.2^ISO|||||364^Birch Creek Tribe^https://terminology.hl7.org/3.1.0/CodeSystem-v3-TribalEntityUS.html||^^internet^me@northpole.earth|
<br>PV1|1|E^EMERGENCY^HL70004|EMERG^101^01^^^^^^^^DEPID|E^Emergency^HL70007||EMERG^103^02^^^^^^^^DEPID|214425290^Doctor^Emory^E^Sr^Dr^MD^^AssignAuth&1.2.3.4.5.6&ISO^L^1^M10^NPI^AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000^20330101000000^doctor|||EMR^Emergency^HL70069||||||VIP^very important person^HL70099|2144252903^Doctor^Emory^E^Sr^Dr^MD^^AssignAuth&1.2.3.4.5.6&ISO^L^1^M10^NPI^AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000^20330101000000^doctor||81456267^^^ AssignAuth&1.2.3.4.5.6&ISO^VN||||||||||||||||||||Adm*Conf|||||20150601135800|||
<br>PV2||GENERAL|165002^Accident-prone^SNM||||||20150606|5||Address opportunities to be less accident prone.|214425290^Doctor^Emory^E^Sr^Dr^MD^^AssignAuth&1.2.3.4.5.6&ISO^L^1^M10^NPI^AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000^20330101000000^doctor||||||||N^No Pubicity^HL70215|N|||2^Urgent^HL72017|||||||||||||A^Ambulance^HL70430||AC^Acute^HL70432 
<br>RGS|1|A
<br>AIG|1||PULLEN^Pullen, Jeri|P^^CSI
<br>AIL|1||MainOffi^^^MainOffi^^^^^Healthmatics Clinic|^Healthmatics Clinic^CSI
<br>AIP|1||JPULLEN1^Pullen^Jeri^^^^^^&F12456&UPIN|D^Pullen, Jeri||20190423140000|||15|m^Minutes
</tr>
</table>

**HL7 FHIR Bundle**
<br>To be provided

### Order Messages
#### ORM_O01
**HL7 v2**
<table>
<tr>
MSH|^~\&#|SndApp^1.2.3.4.5.2^ISO|SndFac^1.2.3.4.5.1^ISO|RcvApp^1.2.3.4.6.2^ISO|RcvFac^1.2.3.4.6.1^ISO|20150601160901.12+0100|20150601160810+0500|ORM^O01^ORM_O01|5381904|P|2.3.1|||AL|AL|USA|ASCII|en-US^^ISO639|
<br>PID|1||1032702^^^SndFac&1.2.3.4.5&ISO^MR^ AssignFac&1.2.3.4.5.6.3&ISO^20190101^20290101||Everywoman^Eve^L^Jr^Dr^^L^^^^G^20000909^20301231^PhD~ Original^Eve^L^Jr^^^M^^^19700601&20000908^G||197006010912|F||1002-5^American Indian or Alaska Native^HL70005~2106-3^White^HL70005|1000 House Lane^Appt 123^Ann Arbor ^MI^99999^USA^H^^WA||^PRN^PH^^1^555^555-8473~^NET^Internet^eve@test.test|^WPN^PH^^1^555^555-1126^12|en-US^^ISO639|M^Married^HL70002|CHR^Christian^HL70006|12345^^^ SndFact&1.2.3.4.5&ISO^AN||12345^MI^20180219||N^Not Hispanic or Latino&HL70189|1025 House Lane^^Ann Arbor ^MI^99999^USA^H^^WA|Y|2|NL^Netherlands^ISO3166||||N|
<br>PV1|1|E^EMERGENCY^HL70004|EMERG^101^01^^^^^^^^DEPID|E^Emergency^HL70007|| | |||857432^Jones^Emily^^^MD^^ AssignAuth&1.2.3.4.5.6&ISO^L^9^1000^DN^ AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000^20330101000000^doctor|||||| |||81456267^^^AssignAuth&1.2.3.4.5.6&ISO^VN|T^Third Party Bill^HL70064||||||||||||||||||||||||20150601135800|
<br>PV2|||^Not feeling well|||||201506011609|||||23432^Smith^Gordon^Denny^Jr^MD^^AssignAuth&1.2.3.4.5.6&ISO^L^9^1000^DN^AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000^20330101000000^doctor||||||||F|N|||2^Urgent^HL72017|
<br>IN1|1|200101^Medicare A and B|2001|Medicare|[Get CMS address]|||123450-1||[check on workman�s comp]|20150101|20151231||Medicare|Everywoman^Eve^L^Jr^Dr^^L^^^^G^20000909^20301231^PhD~Original^Eve^L^Jr^^^M^^^19700601&20000908^G|SEL^Self^HL70063|197006010912|1000 House Lane^Appt 123^Ann Arbor^MI^99999^USA^H^^WA|||||||||||||||||54321-01|
<br>AL1|1|LA^Pollen Allergy^HL70127|^Timothy Grass|MO^Moderate^HL70128|Sneeze|201406|
<br>ORC|NW|ORD777889^SndApp^1.2.3.4.5.2^ISO||GORD874245^SndApp^1.2.3.4.5.2^ISO|||1^^^20150601^^R||201506011610|1234567890^PhysicianAssistant^Will^John^III^Mr.^PA^&372526&L^L^^^NPI^^^^G^20140129^^FHL7|5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|||||^^^^^^^^Emergency Department|||2^Patient has been informed of responsibility, and agrees to pay for service^HL70339|SndApp^1.2.3.4.5.2^ISO|Emergency Lane&&911^First Floor^Ann Arbor^MI^99999^USA^S&Service Location&HL70190^^WA^9876^^20100612^^^^^^^Attn: ED Doc in Charge|555-555-9110|Emergency Lane&&912^Medical Building I^Ann Arbor^MI^99999^USA^S&Service Location&HL70190^^WA^9876^^20100813^^^^^^^Attn: Office Manager
<br>OBR|1|ORD777888^SndApp^1.2.3.4.5.2^ISO||51523-9^Grass Pollen Mix^LN|R|201506011608|201506011608||||||||SER&Serum&HL0070|5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|^WPN^PH^^1^555^5559908^34||||||||||1^^^20150601^^R|10092000194^Hamlin^Pafford^^^^^^&372526&L^L^^^NPI
<br>NTE|1||Bluegrass is in bloom at the moment|RE|
</tr>
</table>

**HL7 FHIR Bundle**
<br>To be provided

#### OML_O21
**HL7 v2**
<table>
<tr>
MSH|^~\&#|SndApp^1.2.3.4.5.2^ISO|SndFac^1.2.3.4.5.1^ISO|RcvApp^1.2.3.4.6.2^ISO|RcvFac^1.2.3.4.6.1^ISO|20150601160901.12+0100||OML^O21^OML_O21|5381903|P|2.5.1|||AL|AL|USA|ASCII|en-US^^ISO639||LOI_Common_Component^LOI Base Profile^2.16.840.1.113883.9.66^ISO~LOI_NG_Component^LOI NG Profile^2.16.840.1.113883.9.79^ISO~LAB_PRU_Component^LOI PRU Profile^2.16.840.1.113883.9.82^ISO~ LOI_RC_Component^2.16.840.1.113883.9.96^ISO
<br>PID|1||1032702^^^SndFac&1.2.3.4.5&ISO^MR^ AssignFac&1.2.3.4.5.6.3&ISO^20190101^20290101||Everywoman^Eve^L^Jr^Dr^^L^^^^G^20000909^20301231^PhD~ Original^Eve^L^Jr^^^M^^^19700601&20000908^G||197006010912|F||1002-5^American Indian or Alaska Native^HL70005~2106-3^White^HL70005|1000 House Lane^Appt 123^Ann Arbor ^MI^99999^USA^H^^WA||^PRN^PH^^1^555^555-8473~^NET^Internet^eve@test.test|^WPN^PH^^1^555^555-1126^12|en-US^^ISO639|M^Married^HL70002|CHR^Christian^HL70006|12345^^^ SndFact&1.2.3.4.5&ISO^AN||12345^MI^20180219||N^ Not Hispanic or Latino &HL70189|1025 House Lane^^Ann Arbor ^MI^99999^USA^H^^WA|Y|2|NL^Netherlands^ISO3166||||N|
<br>PV1|1|E^EMERGENCY^HL70004|EMERG^101^01^^^^^^^^DEPID|E^Emergency^HL70007|| | |||857432^Jones^Emily^^^MD^^ AssignAuth&1.2.3.4.5.6&ISO^L^9^1000^DN^ AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000^20330101000000^doctor|||||| |||81456267^^^ AssignAuth&1.2.3.4.5.6&ISO^VN|T^Third Party Bill^HL70064||||||||||||||||||||||||20150601135800|
<br>PV2|||^Not feeling well|||||201506011609|||||23432^Smith^Gordon^Denny^Jr^MD^^ AssignAuth&1.2.3.4.5.6&ISO^L^9^1000^DN^ AssignFac&1.2.3.4.5.6.3&ISO^^G^20100101000000^20330101000000^doctor||||||||F|N|||2^Urgent^HL72017|||||||||||||A^Ambulance^HL70430||AC^Acute^HL70432
<br>IN1|1|200101^Medicare A and B|2001|Medicare|[Get CMS address]|||123450-1||[check on workman�s comp]|20150101|20151231||Medicare| Everywoman^Eve^L^Jr^Dr^^L^^^^G^20000909^20301231^PhD~ Original^Eve^L^Jr^^^M^^^19700601&20000908^G|SEL^Self^HL70063|197006010912|1000 House Lane^Appt 123^Ann Arbor ^MI^99999^USA^H^^WA|||||||||||||||||54321-01|
<br>AL1|1|LA^Pollen Allergy^HL70127|^Timothy Grass|MO^Moderate^HL70128|Sneeze|
<br>ORC|NW|ORD777888^SndApp^1.2.3.4.5.2^ISO||GORD874244^ SndApp^1.2.3.4.5.2^ISO|||1^^^20150601^^R||201506011608|1234567890^PhysicianAssistant^Will^John^III^Mr.^PA^&372526&L^L^^^NPI^^^^G^20140129^^FHL7|5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|||||^^^^^^^^Emergency Department|||2^Patient has been informed of responsibility, and agrees to pay for service^HL70339| SndApp^1.2.3.4.5.2^ISO|Emergency Lane&&911^First Floor^Ann Arbor^MI^99999^USA^S&Service Location&HL70190^^WA^9876^^20100612^^^^^^^Attn: ED Doc in Charge|555-555-9110|Emergency Lane&&912^Medical Building I^Ann Arbor^MI^99999^USA^S&Service Location&HL70190^^WA^9876^^20100813^^^^^^^Attn: Office Manager|||||O^Outpatient Order^HL70482
<br>OBR|1|ORD777888^SndApp^1.2.3.4.5.2^ISO||51523-9^Grass Pollen Mix^LN|R|201506011608|201506011608|||||||||5742200012^Radon^Nicholas^^^^^^CMS&1.2.3.4.6.34&ISO^L^^^NPI|^WPN^PH^^1^555^5559908^34||||||||||1^^^20150601^^R|10092000194^Hamlin^Pafford^^^^^^&372526&L^L^^^NPI
<br>NTE|1||Bluegrass is in bloom at the moment|RE|5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|201506011608
<br>PRT|1^^372520^L|AD||RCT^Result Copies To^HL70912^^^^^^Send blind carbon copies 
<br>SPM|1|SPM1234&SndFac&1.2.3.4.5&ISO||SER^Serum^HL70487|||VENIP^Venipuncture^HL70488|Arm^Arm^HL70784|Left^Left^HL70542|||2^mL&milliliter&UCUM||This is a wonderful blood sample.\R\My first blood draw!|||201506011608|||Y||||ROOM^Room Temperature^HL70493|||RT^Red Top^HL70785|||||SHP1234^USPS&1.3.2.4^ISO|
</tr>
</table>

**HL7 FHIR Bundle**
<br>To be provided

### Result Messages
#### ORU_R01
**HL7 v2**
<table>
<tr>
MSH|^~\&#|LabApp^9.8.7.6.5^ISO|LabFac^8.7.6.4^ISO|OrdApp^1.2.3.4.5^ISO|OrdFac^2.3.4.4^ISO|20150602100012.43+0100|DEADBEEF|ORU^R01^ORU_R01|20251014154001-425|P|2.5.1|||AL|AL|USA|UNICODE UTF-8|en-US^^ISO639||LRI..get...|
<br>PID|1||1032702^^^OrdOrg&3.4.5.6.7&ISO^MR^OrdFac&2.3.4.5.6&ISO^20190101^20290101||Everywoman^Eve^L^Jr^Dr^^L^^^^G^20000909^20301231^PhD~Original^Eve^L^Jr^^^M^^^19700601&20000908^G||197006010912|F||1002-5^American Indian or Alaska Native^HL70005~2106-3^White^HL70005|1000 House Lane^Appt 123^Ann Arbor^MI^99999^USA^H^^WA||^PRN^PH^^1^555^555-8473~^NET^Internet^eve@test.test|^WPN^PH^^1^555^555-1126^12|en-US^^ISO639|M^Married^HL70002|CHR^Christian^HL70006|12345^^^OrdFac&2.3.4.5.6&ISO^AN||12345^MI^20180219||N^Not Hispanic or Latino&HL70189|1025 House Lane^^Ann Arbor^MI^99999^USA^H^^WA|Y|2|NL^Netherlands^ISO3166||||N|
<br>PV1|1|E^EMERGENCY^HL70004|EMERG^101^01^^^^^^^^DEPID|E^Emergency^HL70007|||857432^Jones^Emily^^^MD^^OrdOrg&3.4.5.6.7.8&ISO^L^9^1000^DN^OrdFac&2.3.4.5.6&ISO^^G^20100101000000^20330101000000^doctor||||||||||||81456267^^^AssignAuth&1.2.3.4.5.6&ISO^VN|T^Third Party Bill^HL70064||||||||||||||||||||||||20150601135800|
<br>PV2|||^Not feeling well|||||201506011609|||||23432^Smith^Gordon^Denny^Jr^MD^^OrdOrg&3.4.5.6.7&ISO^L^9^1000^DN^OrdFac&2.3.4.5.6&ISO^^G^20100101000000^20330101000000^doctor||||||||F|N|||2^Urgent^HL72017|||||||||||||A^Ambulance^HL70430||AC^Acute^HL70432
<br>ORC|RE|ORD777888^OrdFac^2.3.4.4^ISO|LAB4432^LabFac^8.7.6.4^ISO|GORD874244^OrdFac^2.3.4.4^ISO|CM||1^^^20150601^^R ||201506011608|1234567890^PhysicianAssistant^Will^John^III^Mr.^PA^&372526&L^L^^^NPI^^^^G^20140129^^FHL7|5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|||||^^^^^^^^Emergency Department|||2^Patient has been informed of responsibility, and agrees to pay for service^HL70339|OrdFac^2.3.4.4^ISO|Emergency Lane&&911^First Floor^Ann Arbor^MI^99999^USA^S&Service Location&HL70190^^WA^9876^^20100612^^^^^^^Attn: ED Doc in Charge|555-555-9110|Emergency Lane&&912^Medical Building I^Ann Arbor^MI^99999^USA^S&Service Location&HL70190^^WA^9876^^20100813^^^^^^^Attn: Office Manager|||||O^Outpatient Order^HL70482
<br>OBR|1|ORD777888^OrdFac^2.3.4.4^ISO|LAB4432^LabFac^8.7.6.4^ISO|51523-9^Grass Pollen Mix^LN|R|201506011608|201506011608|||||||||5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|^WPN^PH^^1^555^5559908^34|||||201506011811|||F||1^^^20150601^^R|10092000194^Hamlin^Pafford^^^^^^&372526&L^L^^^NPI
<br>NTE|1||Allergy test interpretations are subjective.|RE|8945432^Gonzalez^Maria^^^^^^&372526&L^L^^^NPI|201506011810
<br>PRT|1^^372520^L|AD||RCT^Result Copies To^HL70912^^^^^^Send blind carbon copies to|10092000194^Hamlin^Pafford^^^^^^&372526&L^L^^^NPI||||||||||^^FX^^^323^5555555
<br>OBX|1|NM|6153-1^IgE Blue Grass Kentucky^LN|1|3.9|kU/L|<0.10|A^Abnormal^HL70078||N^None - generic normal range^HL70080|F|||201506011608|CentralLab^Central Laboratory^HL70624|1234^Observer^Test^^^^^^LabFac&8.7.6.5.4&&ISO|||201506011605||||||||||RSLT
<br>OBX|2|NM|6041-8^IgE Bermuda Grass^LN|2|0.59|kU/L|<0.10|A^Abnormal^HL70078||N^None - generic normal range^HL70080|F|||201506011608|CentralLab^Central Laboratory^HL70624|1234^Observer^Test^^^^^^LabFac&8.7.6.5.4&&ISO||||201506011605|||||||||RSLT
<br>OBX|3|SN|6265-3^IgE Timothy Grass^LN|3|<0.10|kU/L|<0.10|N^Normal^HL70078||N^None - generic normal range^HL70080|F|||201506011608|CentralLab^Central Laboratory^HL70624|1234^Observer^Test^^^^^^LabFac&8.7.6.5.4&&ISO||||201506011605|||||||||RSLT
</tr>
</table>

**HL7 FHIR Bundle**
<br>To be provided

### Medical Records Messages
#### MDM_T02
**HL7 v2**
<table>
<tr>
MSH|^~\&|HIE|REDDING HOSPITAL|||20230814022400||MDM^T02^MDM_T02|10819306|P|2.5.1
EVN||20230814022400
PID|||000322330^^^REDDING HOSPITAL&1.1.1.1&GUID^MR||JOHN^DOE^TEST^JR.^^^D||19941201|M|||3003 TESTING RD LOT 92^^BOULDER^CO^12345-2144^US^P^^BOULDER||(103)144-1441^P^H^^^103^1443441|||||1055989633^^^^HAR
PV1||I|F1N^F151^F151-01^FTH^^^^^HILLS 1 North Oncolog||||1123456771^MITCHELL^HILA^K^^^^^NPI^^^^NPI||||||||||||1234567891|||||||||||||||||||||||||20230729081300
ORC|RE|ORD777999^SndFac^1.2.3.4.5^ISO|432344432^FillerFac^8.7.6.5.4^ISO|GORD874299^SndFac^1.2.3.4.5^ISO|CM||||20230814011500+0000|||5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|||||Good Health Hospital^L||||||||||||I|
TQ1|1|1
OBR|1||432344432^FillerFac^8.7.6.5.4^ISO|11502-2^^LN^^Laboratory Report|||20130408141909.0+0000|20130411154157.0+0000||||||||5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|||||||||F|
TXA|1|PN|TX|20230820174913|1780850958^JOHNSON^VALERIE^^^^^^&372526&L^L^^^NPI|20230820174913||20230820191149|5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|1123456771^MITCHELL^HILA^K^^^^^&372526&L^L^^^NPI||3738931392^REDDING HOSPITAL&1.1.1.1&GUID||||PN_Radon_20230820174913.RTF|AU|R|AV||||5742200445^Smith^Natasha^^^^^^&372526&L^L^^^NPI||Discharge Summary|
OBX|1|TX|85202^Transcription Authentication Interface Message Text|1|Transcription Authentication Interface Message Text||||||F
OBX|2|FT|1055860039^Critical Values - Text||Critical Values Entered On:  08/22/2023 2:11 EDT \.br\ Performed On:  08/22/2023 2:11 EDT by BOYLE, KRISTEN C \.br\ \.br\ \.br\ \.br\ \.br\Called Critical Value Reported \.br\Critical Value Reported Lab :   Yes \.br\BOYLE, KRISTEN C - 08/22/2023 2:11 EDT \.br\Critical Lab Values \.br\Red List Hematology Grid \.br\  Heparin Test (AntiXa)        \.br\Lab Values :    1.27            \.br\  BOYLE, KRISTEN C - 08/22/2023 2:11 EDT     \.br\\.br\Result Received :   08/22/2023 02:11 EDT \.br\Received From :   K Gresco (Lab) \.br\Red List Result Read Back :   K Boyle (ED) \.br\Provider Notified :   No \.br\Reason not notified :   Protocol utilized \.br\BOYLE, KRISTEN C - 08/22/2023 2:11 EDT||||||F|||20230822021111||
OBX|3|ST|&GDT^Critical Values-String||Table formatting from the original result was not included.||||||F
OBX|4|ED|1111.2^PHQ-9 Depression Screen PDF^L^44249-1^PHQ-9 quick depression assessment panel [Reported.PHQ]^LN||CareCoordination^AP^PDF^Base64^<Base64 encoded>||||||F
</tr>
</table>

**HL7 FHIR Bundle**
<br>To be provided
  
### Immunization Messages
#### VXU_V04
**HL7 v2**
<table>
<tr>
MSH|^~\&|SndApp^1.2.3.4.5.2^ISO|SndFac^1.2.3.4.5.1^ISO|RcvISSApp^1.2.3.4.7^ISO|RcvIISFac^1.2.3.4.8^ISO|20150624084727.655-0500||VXU^V04^VXU_V04|5381910|P|2.5.1|||ER|AL|USA|ASCII|en-US^^ISO639||Z22^CDCPHINVS|SndOrg^L&Legal&HL70204^^^^^^^^1234516|RcvIIS^L^^^^^^^^41526
<br>PID|1||1032702^^^SndFac&1.2.3.4.5&ISO^MR^ AssignFac&1.2.3.4.5.6.3&ISO^20190101^20290101||Everywoman^Eve^L^Jr^Dr^^L^^^^G^20000909^20301231^PhD~ Original^Eve^L^Jr^^^M^^^19700601&20000908^G||197006010912|F||1002-5^American Indian or Alaska Native^HL70005~2106-3^White^HL70005|1000 House Lane^Appt 123^Ann Arbor ^MI^99999^USA^H^^WA||^PRN^PH^^1^555^555-8473~^NET^Internet^eve@test.test|^WPN^PH^^1^555^555-1126^12|en-US^^ISO639|M^Married^HL70002|CHR^Christian^HL70006|12345^^^ SndFact&1.2.3.4.5&ISO^AN||12345^MI^20180219||N^ Not Hispanic or Latino &HL70189|1025 House Lane^^Ann Arbor ^MI^99999^USA^H^^WA|Y|2|NL^Netherlands^ISO3166||||N|
<br>PD1|||Primary Care Docs^L^^^^CMS&1.2.3.4.6.34&ISO^NPI^^^48295|5742200012^Radon^Nicholas^^^^^^&372526&L^L^^^NPI|P^Part-time student^HL70231|228158008 ^Walking disability (finding)^SCT|Y^Yes, pateint has a living will^HL0315||||02^Reminder/recall -  any method^HL70215|N|20150624|My Place of Worship^L&Legal&HL70204||A|19830615|20150624
<br>ORC|RE|4422^SndApp^1.2.3.4.5.2^ISO|13696^SndApp^1.2.3.4.5.2^ISO||CM^Order is complete^HL70038||||201506240840|7824^Jackson^Lily^Suzanne^^^^^NIST-PI-1^L^^^PRN||654^Thomas^Wilma^Elizabeth^^^^^NIST-PI-1^L^^^MD||555-123-4567^BPN^BP^^1^555^1234567|||NISTEHRFAC^NISTEHRFacility^HL70362||||Vaccine Clinic^L^^^^Asgn Auth&1.2.3.6.4.7&ISO^^^^3748295|
<br>RXA|0|1|201506240830||49281-0215-88^TENIVAC^NDC|0.5|mL^mL^UCUM||00^New Record^NIP001|7824^Jackson^Lily^Suzanne^^^^^NIST-PI-1^L^^^PRN|^^^NIST-Clinic-1||||315841|20151216|PMC^Sanofi Pasteur^MVX|||CP|A|201506240831|||||^^^^^^^^Drive in around the corner of High Street and Walnut Avenue|123 Vaccine Lane^^Ann Arbor^MI^99999^USA^L|
<br>RXR|C28161^Intramuscular^NCIT|RD^Right Deltoid^HL70163
<br>OBX|1|CE|30963-3^Vaccine Funding Source^LN|1|PHC70^Private^CDCPHINVS||||||F|||20150624
<br>OBX|2|CE|64994-7^Vaccine Funding Program Eligibility^LN|2|V01^Not VFC Eligible^HL70064||||||F|||20150624|||VXC40^per immunization^CDCPHINVS
<br>OBX|3|CE|69764-9^Document Type^LN|3|253088698300028811170411^Tetanus/Diphtheria (Td) Vaccine VIS^cdcgs1vis||||||F|||20150624
<br>OBX|4|DT|29769-7^Date Vis Presented^LN|3|20150624||||||F|||20150624
<br>ORC|RE|4422^SndApp^1.2.3.4.5.2^ISO|13696^SndApp^1.2.3.4.5.2^ISO||CM^Order is complete^HL70038||||201506240840|7824^Jackson^Lily^Suzanne^^^^^NIST-PI-1^L^^^PRN||654^Thomas^Wilma^Elizabeth^^^^^NIST-PI-1^L^^^MD||555-123-4567^BPN^BP^^1^555^1234567|||NISTEHRFAC^NISTEHRFacility^HL70362||||Vaccine Clinic^L^^^^Asgn Auth&1.2.3.6.4.7&ISO^^^^3748295
<br>RXA|0|1|20141012||88^influenza, unspecified formulation^CVX|999|||01^Historical Administration^NIP001|||||||||||CP|A|||||||123 Vaccine Lane^^Ann Arbor^MI^99999^USA^L|
<br>ORC|RE|4422^SndApp^1.2.3.4.5.2^ISO|13696^SndApp^1.2.3.4.5.2^ISO||CM^Order is complete^HL70038||||201506240840|7824^Jackson^Lily^Suzanne^^^^^NIST-PI-1^L^^^PRN||654^Thomas^Wilma^Elizabeth^^^^^NIST-PI-1^L^^^MD||555-123-4567^BPN^BP^^1^555^1234567|||NISTEHRFAC^NISTEHRFacility^HL70362||||Vaccine Clinic^L^^^^Asgn Auth&1.2.3.6.4.7&ISO^^^^3748295
<br>RXA|0|1|20131112||88^influenza, unspecified formulation^CVX|999|||01^Historical Administration^NIP001|||||||||||CP|A|||||||123 Vaccine Lane^^Ann Arbor^MI^99999^USA^L|
</tr>
</table>

**HL7 FHIR Bundle**
<br>To be provided
