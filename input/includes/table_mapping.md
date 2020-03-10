* HL7 v2
   * Sort Order
       * See the [General Guidelines](mapping_guidelines.html#general-format)
   * Code
      * The code as used in v2 for the concept
   * Text
      * The text as used in v2 for the concept
   * Code System
      * The code system/value set that the concept is part of.
* HL7 FHIR
   * Code
      * The code as used in FHIR for the concept
   * Display


When mapping from HL7 v2 messages to FHIR Resources, there are a number of cases where concept mapping needs to be performed.  When this mapping is performed, there may be information that is lost because it cannot be represented in a required coding system, or more specific detail may be lost when one or more codes is mapped to a singular required or preferred code in the FHIR specified terminology.

<table class="grid" >
<thead><tr><th>FHIR Data Type</th><th>Binding</th><th>v2/FHIR Cardinality</th><th>Comments</th></tr></thead>
<tbody><tr><td rowspan='2'>code</td><td rowspan='2'>Required or Preferred</td><td>0..1/1..1</td>
<td><p>As the vocabulary is not the same, and the values are fixed in the FHIR Schema, the only way to record the original code is to attach it to an extension.&nbsp;</p><p>Preferred bindings are ONLY used with the code data type in Resource.language, and these should be treated as if they were required bindings.</p></td></tr>
<tr>
<td>0..*/1..*</td>
<td>This combination is rarely used in FHIR, only for FHIR definition or conformance resources and CoverageEligibilityRequest and CoverageEligibilityResponse, and so is not applicable to V2 conversion.</td></tr>
<tr>
<td rowspan='5'>Coding</td>
<td>Required</td>
<td>0..1/1..1/0..*/1..*</td>
<td>This combination is not presently used in FHIR</td>
<td>When there is a singular coding allow to a required or preferred term</td></tr>
<tr>
<td rowspan='2'>Preferred</td>
<td>0..1/1..1</td>
<td>&#xA0;</td></tr>
<tr>
<td>0..*/1..*</td>
<td>&#xA0;</td>
</tr>
<tr>
<td rowspan='2'>Extensible</td>
<td>0..1/1..1</td>
<td>&#xA0;</td></tr>
<tr>
<td>0..*/1..*</td>
<td><p>Only applicable to AuditEvent.entity.securityLabel, AuditEvent.source.type, AuditEvent.subtype, Consent.provision.class, Consent.provision.purpose, Consent.provision.securityLabel,&nbsp;ImagingStudy.modality, and StructureDefinition.keyword</p><p><br></p></td></tr>
<tr>
<td rowspan='6'>CodableConcept</td><td rowspan='2'>Required</td><td>0..1</td><td>&#xA0;</td></tr>
<tr>
<td>0..*/1..1/1..*</td>
<td>This combination is not presently used in FHIR</td></tr>
<tr>
<td rowspan='2'>Preferred</td>
<td>0..1/1..1</td>
<tr>
<td>0..*/1..*</td>
<td>&#xA0;</td></tr>
<tr>
<td rowspan='2'>Extensible</td>
<td>0..1/1..1</td>
<td>&#xA0;</td></tr>
<tr>
<td>0..*/1..*</td>
<td>&#xA0;</td></tr>
</tbody></table>