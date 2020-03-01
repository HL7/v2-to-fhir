This ConceptMap represents the mapping from the HL7 V2 Table v2-0498 to the FHIR Consent Status Value Set. See also the [FHIR Shorthand](https://github.com/HL7/v2-to-fhir/blob/master/tank/ConceptMap v2-0498 to Consent Status.fsh) or the [CSV Source File](https://github.com/HL7/v2-to-fhir/blob/master/mappings/)"
<table class='grid'><thead>
<tr><th colspan='3' style='border-right: 2px solid black;'>HL7 v2</th><th colspan='3' style='border-right: 2px solid black;'>Condition (IF True, args)</th><th colspan='4'>HL7 FHIR</th><th>Comments</th></tr>
<tr><th>Code</th><th>Text</th><th>Computable ANTLR</th><th>Computable FHIRPath</th><th>Code</th><th>&#xA0;</th><th>Display</th><th>Code System</th><th>&#xA0;</th></tr></thead>
<tbody>
<tr><td>A</td><td>Active – Consent has been granted</td><td style='border-right: 2px'>HL70498</td><td></td><td></td><td style='border-right: 2px'></td><td>active</td><td></td><td>Active</td><td>http://hl7.org/fhir/consent-state-codes</td><td></td></tr>
<tr><td>L</td><td>Limited – Consent has been granted with limitations</td><td style='border-right: 2px'>HL70498</td><td></td><td></td><td style='border-right: 2px'></td><td>active</td><td></td><td>Active</td><td>http://hl7.org/fhir/consent-state-codes</td><td></td></tr>
<tr><td>R</td><td>Refused – Consent has been refused</td><td style='border-right: 2px'>HL70498</td><td></td><td></td><td style='border-right: 2px'></td><td>rejected</td><td></td><td>Rejected</td><td>http://hl7.org/fhir/consent-state-codes</td><td></td></tr>
<tr><td>P</td><td>Pending – Consent has not yet been sought</td><td style='border-right: 2px'>HL70498</td><td></td><td></td><td style='border-right: 2px'></td><td>proposed</td><td></td><td>Proposed</td><td>http://hl7.org/fhir/consent-state-codes</td><td></td></tr>
<tr><td>X</td><td>Rescinded – Consent was initially granted, but was subsequently revoked or ended.</td><td style='border-right: 2px'>HL70498</td><td></td><td></td><td style='border-right: 2px'></td><td>inactive</td><td></td><td>Inactivated</td><td>http://hl7.org/fhir/consent-state-codes</td><td></td></tr>
<tr><td>B</td><td>Bypassed (Consent not sought)</td><td style='border-right: 2px'>HL70498</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td>??</td><td></td><td></td><td></td></tr>
</tbody></table>
