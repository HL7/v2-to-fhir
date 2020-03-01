
This ConceptMap represents the mapping from the HL7 V2 AL1 Segment to the FHIR AllergyIntolerance Resource representing that segment. See also the <a href='https://github.com/HL7/v2-to-fhir/blob/master/tank/Segment AL1 to AllergyIntolerance.fsh'>FHIR Shorthand</a> or the <a href='https://github.com/HL7/v2-to-fhir/blob/master/mappings/'>CSV Source</a>."
<table class='grid'><thead>
<tr><th colspan='6'>HL7 v2</th><th colspan='3'>Condition (IF True, args)</th><th colspan='7'>HL7 FHIR</th><th>&#xA0;</th><th>Comments</th></tr>
<tr><th>Sort Order</th><th>Identifier</th><th>Name</th><th>Data Type</th><th>Cardinality - Min</th><td style='border-right: 2px'>Cardinality - Max</td><th>Computable ANTLR</th><th>Computable FHIRPath</th><td style='border-right: 2px'>Narrative</td><th>FHIR Attribute</th><th>Data Type</th><th>Cardinality - Min</th><td style='border-right: 2px'>Cardinality - Max</td><th>Data Type Mapping</th><th colspan='3'>Vocabulary Mapping (IS, ID, CE, CNE, CWE)</th></tr></thead>
<tbody>
<tr><td>1</td><td>AL1-1</td><td>Set ID - AL1</td><td>SI</td><td>1</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td>N/A</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>This field doesn't warrant mapping
</td></tr>
<tr><td>2</td><td>AL1-2</td><td>Allergen Type Code</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td>AllergyIntolerance.category</td><td></td><td>code</td><td>0</td><td>-1</td><td>CWE[code]</td><td>Allergy</td><td></td><td>The FHIR table has a "required" binding. Do we need to expand the values in the FHIR table?

Could other be used for:
Miscellaneous allergy
Miscellaneous contraindication
Animal Allergy

HL70127 is a user defined table</td></tr>
<tr><td>2</td><td>AL1-2</td><td>Allergen Type Code</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td>AllergyIntolerance.category.#ext-originalCode#</td><td>coding</td><td>0</td><td>1</td><td></td><td></td><td></td><td></td></tr>
<tr><td>2</td><td>AL1-2</td><td>Allergen Type Code</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td>AllergyIntolerance.type</td><td></td><td>code</td><td>0</td><td>1</td><td>CWE[code]</td><td>Allergy Type</td><td></td><td></td></tr>
<tr><td>3</td><td>AL1-3</td><td>Allergen Code/Mnemonic/Description</td><td>CWE</td><td>1</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td>AllergyIntolerance.code</td><td></td><td>CodeableConcept</td><td>0</td><td>1</td><td>CWE[CodeableConcept]</td><td></td><td></td><td></td></tr>
<tr><td>4</td><td>AL1-4</td><td>Allergy Severity Code</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td>IF AL1-4 NOT EQUALS 'U'</td><td></td><td style='border-right: 2px'>AND If severity was used equivalent to severity in FHIR</td><td>AllergyIntolerance.reaction.severity</td><td></td><td>code</td><td>0</td><td>1</td><td>CWE[code]</td><td>Allergy Severity</td><td></td><td>HL70128 is a user defined table
Consider using AllergyIntolerance.criticality</td></tr>
<tr><td>4</td><td>AL1-4</td><td>Allergy Severity Code</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td>IF AL1-4 NOT EQUALS 'U'</td><td></td><td style='border-right: 2px'>AND If severity was used equivalent to severity in FHIR</td><td></td><td>AllergyIntolerance.reaction.severity.#ext-originalCode#</td><td>Coding</td><td>0</td><td>1</td><td>CWE[code]</td><td></td><td></td><td></td></tr>
<tr><td>4</td><td>AL1-4</td><td>Allergy Severity Code</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td>If AL1-4 EQUALS 'U'</td><td></td><td style='border-right: 2px'>AND If severity was used equivalent to severity in FHIR</td><td>AllergyIntolerance.reaction.severity.extension-data-absent-reason="unknown"</td><td></td><td>code</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<tr><td>4</td><td>AL1-4</td><td>Allergy Severity Code</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'>If severity was used equivalent to criticality</td><td>AllergyIntolerance.criticality</td><td></td><td>code</td><td>0</td><td>1</td><td>CWE[code]</td><td>Allergy Criticality</td><td></td><td></td></tr>
<tr><td>4</td><td>AL1-4</td><td>Allergy Severity Code</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'>If severity was used equivalent to criticality</td><td></td><td>AllergyIntolerance.criticality.#ext-originalCode#</td><td>coding</td><td>0</td><td>1</td><td></td><td></td><td></td><td></td></tr>
<tr><td>5</td><td>AL1-5</td><td>Allergy Reaction Code</td><td>ST</td><td>0</td><td style='border-right: 2px'>-1</td><td></td><td></td><td style='border-right: 2px'></td><td>AllergyIntolerance.reaction.manifestation.text</td><td></td><td>CodeableConcept</td><td>0</td><td>1</td><td>CWE[CodeableConcept]</td><td></td><td></td><td>AllergyIntolerance.reaction can repeat, presumably to capture both multiple manifestations of the reaction (rash and nausea) as well as reactions to independent exposures (last week and last month) - we may want to confirm this understanding.



</td></tr>
<tr><td>6</td><td>AL1-6</td><td>Identification Date</td><td>DT</td><td>1</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td>AllergyIntolerance.onsetDateTime</td><td></td><td>dateTime</td><td>0</td><td>1</td><td></td><td></td><td></td><td>Withdrawn as of 2.7, Refer to IAM-11 Onset or IAM-13 Reported Date</td></tr>
</tbody></table>
