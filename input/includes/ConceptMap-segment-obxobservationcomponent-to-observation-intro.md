
This ConceptMap represents the mapping from the HL7 V2 OBX Segment to the FHIR Observation Resource. See also the <a href='https://github.com/HL7/v2-to-fhir/blob/master/tank/Segment OBX[ObservationComponent] to Observation.fsh'>FHIR Shorthand</a> or the <a href='https://github.com/HL7/v2-to-fhir/blob/master/mappings/segments/HL7 Segment - FHIR R4_ OBX[ObservationComponent] - PV1.csv'>CSV Source</a>.
<table class='grid'><thead>
<tr><th colspan='6'>HL7 v2</th><th colspan='3'>Condition (IF True, args)</th><th colspan='7'>HL7 FHIR</th><th rowspan='2'>Comments</th></tr>
<tr><th title='Rows are listed in sequence of how they appear in the v2 standard. The first column, Sort Order, provides a sort order that can re-create the original v2 standard sequence in case one opts to re-sort/filter the rows.'>Sort Order</th><th title='Contains the formal Segment Name and Field Sequence according to the base standard using "-" as the delimiter.'>Identifier</th><th title='The formal name of the field in the most current published version.'>Name</th><th title='The data type of the field in the most current published version if not deprecated, otherwise the data type at the time it was deprecated and removed.'>Data Type</th><th title='The V2 min cardinality expressed numerically.'>Cardinality - Min</th><td style='border-right: 2px' title='The V2 max cardinality expressed numerically.'>Cardinality - Max</td><th title='Condition in an easy to read syntax (Computable ANTLR)'>Computable ANTLR</th><th title='Condition in FHIRPath Notation'>Computable FHIRPath</th><td style='border-right: 2px' title='Condition expressed in narrative form'>Narrative</td><th title='An existing FHIR attribute in the target FHIR version.'>FHIR Attribute</th><th title='A proposed extension. It will be expressed with #ext-……# around the proposed name. '>Extension</th><th title='The FHIR attribute’s data type in the target FHIR version.'>Data Type</th><th title='The FHIR min cardinality expressed numerically.'>Cardinality - Min</th><td style='border-right: 2px' title='The FHIR max cardinality expressed numerically.'>Cardinality - Max</td><th title='The URL to the Data Type Map that is to be used for the attribute in this segment.'>Data Type Mapping</th><th title='The URL to the Vocabulary Map that is to be used for the coded element for this attribute.'>Vocabulary Mapping<br/>(IS, ID, CE, CEN, CWE)</th></tr></thead>
<tbody>
<tr><td>1</td><td>OBX-1</td><td>Set ID – OBX</td><td>SI</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<tr><td>2</td><td>OBX-2</td><td>Value Type</td><td>ID</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Value Type</td><td>OBX-2 determines the flavor of Observation.value[x] is used in OBX-5</td></tr>
<tr><td>3</td><td>OBX-3</td><td>Observation Identifier</td><td>CWE</td><td>1</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.code'>Observation.code</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#CodeableConcept'>CodeableConcept</a></td><td>1</td><td>1</td><td><a href='ConceptMap-datatype-cwecodeableconcept-to-codeableconcept.html'>CWE[CodeableConcept]</a></td><td></td><td></td></tr>
<tr><td>3</td><td>OBX-3</td><td>Observation Identifier</td><td>CWE</td><td>1</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.code'>Observation.component.code</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#CodeableConcept'>CodeableConcept</a></td><td>1</td><td>1</td><td><a href='ConceptMap-datatype-cwecodeableconcept-to-codeableconcept.html'>CWE[CodeableConcept]</a></td><td></td><td></td></tr>
<tr><td>4</td><td>OBX-4</td><td>Observation Sub-ID</td><td>ST</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'>If OBX represents a part of a structure.  See implementation guide where sub-id is used for additional guidance</td><td></td><td>Observation.partOf or Observation.hasMember or Observation.DerivedFrom</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "NM"</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueQuantity'>Observation.component.valueQuantity</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Quantity'>Quantity</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 IN ("ST", "FT", "TX")</td><td></td><td style='border-right: 2px'>Any markup in ST, FT or TX data may not present properly given that valueString is a string data type</td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueString'>Observation.component.valueString</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#string'>string</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 IN ("CF", "CNE", "CWE", "CE")</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueCodeableConcept'>Observation.component.valueCodeableConcept</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#CodeableConcept'>CodeableConcept</a></td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-cwecodeableconcept-to-codeableconcept.html'>CWE[CodeableConcept]</a></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "IS"</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueCodeableConcept'>Observation.component.valueCodeableConcept</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#CodeableConcept'>CodeableConcept</a></td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-iscodeable-concept-to-codeableconcept.html'>IS[Codeable Concept]</a></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "DR"</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valuePeriod'>Observation.component.valuePeriod</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Period'>Period</a></td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-dr-to-period.html'>DR</a></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 IN ("DTM", "DT")</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueDateTime'>Observation.component.valueDateTime</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#dateTime'>dateTime</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "NR"</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueRange'>Observation.component.valueRange</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Range'>Range</a></td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-nrrange-to-range.html'>NR[Range]</a></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "VR"</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueString'>Observation.component.valueString</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#string'>string</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "TM"</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueTime'>Observation.component.valueTime</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#time'>time</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF (OBX-2 EQUALS "SN" AND OBX-5.3 IN (":", "/")</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueRatio'>Observation.component.valueRatio</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Ratio'>Ratio</a></td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-snratio-to-ratio.html'>SN[Ratio]</a></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "SN" and OBX-5.3 EQUALS "-"</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueRange'>Observation.component.valueRange</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Range'>Range</a></td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-snrange-to-range.html'>SN[Range]</a></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "SN" and OBX-5.3 EQUALS "+"</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueString'>Observation.component.valueString</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#string'>string</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "SN" and OBX-5.3 NOT IN (":", "/", "-", "+")</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueQuantity'>Observation.component.valueQuantity</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Quantity'>Quantity</a></td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-snquantity-to-quantity.html'>SN[Quantity}</a></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "NA"</td><td></td><td style='border-right: 2px'></td><td></td><td>Observation.component[all].#ext-valueNumericArray#</td><td><a href='#broken'><span style='font-weight: bold; color: red'>complex</span></a></td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-na-to-complex.html'>NA</a></td><td></td><td></td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "ED" AND IF OBX-5.4 EQUALS "Base64"</td><td></td><td style='border-right: 2px'></td><td></td><td>Observation.component[all].#ext-valueAttachment#</td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Attachment'>Attachment</a></td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-edattachment-to-attachment.html'>ED[Attachment]</a></td><td></td><td>We are for now addressing Base64 that cover .pdf, pictures and other binaries.  If somebody does this, we will address those.</td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "EI"</td><td></td><td style='border-right: 2px'></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Requires more work to properly map.  Use case: An OBX under OBR that points to the calibration/quality control/etc. settings/values/result/etc. that the other OBX-s under the OBR would be "subject" to.</td></tr>
<tr><td>5</td><td>OBX-5</td><td>Observation Value</td><td>varies</td><td>0</td><td style='border-right: 2px'>-1</td><td>IF OBX-2 EQUALS "RP"</td><td></td><td style='border-right: 2px'></td><td></td><td>Observation.component[all]#ext-valueAttachment#</td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Attachment'>Attachment</a></td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-rpattachment-to-attachment.html'>RP[Attachment]</a></td><td></td><td>To be resolved when we resolve DocumentReference and valueAttachment</td></tr>
<tr><td>6</td><td>OBX-6</td><td>Units</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td>IF OBX-2 EQUALS "SN" and OBX-5.3 NOT IN (":", "/", "-", "+")</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueQuantity'>Observation.component.valueQuantity</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Quantity'>Quantity</a></td><td></td><td></td><td><a href='ConceptMap-datatype-cwequantity-to-quantity.html'>CWE[Quantity]</a></td><td></td><td></td></tr>
<tr><td>6</td><td>OBX-6</td><td>Units</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td>IF OBX-2 IN ("NA", "NM")</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueQuantity'>Observation.component.valueQuantity</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Quantity'>Quantity</a></td><td></td><td></td><td><a href='ConceptMap-datatype-cwequantity-to-quantity.html'>CWE[Quantity]</a></td><td></td><td></td></tr>
<tr><td>6</td><td>OBX-6</td><td>Units</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td>IF OBX-2 EQUALS "SN" AND OBX-5.3 EQUALS "-"</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueRange.low'>Observation.component.valueRange.low</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#SimpleQuantity'>SimpleQuantity</a></td><td></td><td></td><td><a href='ConceptMap-datatype-cwequantity-to-simplequantity.html'>CWE[Quantity]</a></td><td></td><td></td></tr>
<tr><td>6</td><td>OBX-6</td><td>Units</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td>IF OBX-2 EQUALS "SN" AND OBX-5.3 EQUALS "-"</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueRange.high'>Observation.component.valueRange.high</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#SimpleQuantity'>SimpleQuantity</a></td><td></td><td></td><td><a href='ConceptMap-datatype-cwequantity-to-simplequantity.html'>CWE[Quantity]</a></td><td></td><td></td></tr>
<tr><td>6</td><td>OBX-6</td><td>Units</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td>IF (OBX-2 EQUALS "SN" AND (OBX-5.3 IN (":", "/"))</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueRatio.numerator'>Observation.component.valueRatio.numerator</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Quantity'>Quantity</a></td><td></td><td></td><td><a href='ConceptMap-datatype-cwequantity-to-quantity.html'>CWE[Quantity]</a></td><td></td><td></td></tr>
<tr><td>6</td><td>OBX-6</td><td>Units</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td>IF (OBX-2 EQUALS "SN" AND (OBX-5.3 IN (":", "/"))</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.valueRatio.denominator'>Observation.component.valueRatio.denominator</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Quantity'>Quantity</a></td><td></td><td></td><td><a href='ConceptMap-datatype-cwequantity-to-quantity.html'>CWE[Quantity]</a></td><td></td><td></td></tr>
<tr><td>7</td><td>OBX-7</td><td>References Range</td><td>ST</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.component.referenceRange.text'>Observation.component.referenceRange.text</a></td><td></td><td></td><td></td><td></td><td></td><td></td><td>If OBX-7 is sufficiently parseable, then the low, high, type, appliesTo, and/or age may be used.</td></tr>
<tr><td>8</td><td>OBX-8</td><td>Interpretation Codes</td><td>CWE</td><td>0</td><td style='border-right: 2px'>-1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.nterpretation'>Observation.nterpretation</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#CodeableConcept'>CodeableConcept</a></td><td>0</td><td>-1</td><td><a href='ConceptMap-datatype-cwecodeableconcept-to-codeableconcept.html'>CWE[CodeableConcept]</a></td><td>Interpretation Code</td><td></td></tr>
<tr><td>9</td><td>OBX-9</td><td>Probability</td><td>NM</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<tr><td>10</td><td>OBX-10</td><td>Nature of Abnormal Test</td><td>ID</td><td>0</td><td style='border-right: 2px'>-1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td>Observation.component.#ext-natureOfAbnormalTest#</td><td><a href='https://hl7.org/fhir/R4/datatypes.html#CodeableConcept'>CodeableConcept</a></td><td>0</td><td>-1</td><td><a href='ConceptMap-datatype-cwecodeableconcept-to-codeableconcept.html'>CWE[CodeableConcept]</a></td><td></td><td></td></tr>
<tr><td>11</td><td>OBX-11</td><td>Observation Result Status</td><td>ID</td><td>1</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.status'>Observation.status</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#code'>code</a></td><td>1</td><td>1</td><td></td><td>Observation Status</td><td></td></tr>
<tr><td>12</td><td>OBX-12</td><td>Effective Date of Reference Range</td><td>DTM</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<tr><td>13</td><td>OBX-13</td><td>User Defined Access Checks</td><td>ST</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<tr><td>14</td><td>OBX-14</td><td>Date/Time of the Observation</td><td>DTM</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.effectiveDateTime'>Observation.effectiveDateTime</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#dateTime'>dateTime</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
<tr><td>15</td><td>OBX-15</td><td>Producer's ID</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td>Observation.#ext-producerIdentifier#</td><td><a href='https://hl7.org/fhir/R4/datatypes.html#CodeableConcept'>CodeableConcept</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
<tr><td>16</td><td>OBX-16</td><td>Responsible Observer</td><td>XCN</td><td>0</td><td style='border-right: 2px'>-1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.performer'>Observation.performer</a>(<a href='https://hl7.org/fhir/R4/PractitionerRole-definitions.html#PractitionerRole.practitioner'>PractitionerRole.practitioner</a>(<a href='https://hl7.org/fhir/R4/Practitioner.html'>Practitioner</a>)</td><td></td><td><a href='https://hl7.org/fhir/R4/references.html'>Reference</a>(<a href='https://hl7.org/fhir/R4/PractitionerRole.html'>PractitionerRole</a>)</td><td>0</td><td>-1</td><td><a href='ConceptMap-datatype-xcnpractitionerrole-to-practitionerrole.html'>XCN(PractitionerRole)</a></td><td></td><td></td></tr>
<tr><td>16</td><td>OBX-16</td><td>Responsible Observer</td><td>XCN</td><td>0</td><td style='border-right: 2px'>-1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.performer'>Observation.performer</a>(<a href='https://hl7.org/fhir/R4/PractitionerRole-definitions.html#PractitionerRole.code'>PractitionerRole.code</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#CodeableConcept'>CodeableConcept</a></td><td>0</td><td>-1</td><td></td><td></td><td></td></tr>
<tr><td>17</td><td>OBX-17</td><td>Observation Method</td><td>CWE</td><td>0</td><td style='border-right: 2px'>-1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.method'>Observation.method</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#CodeableConcept'>CodeableConcept</a></td><td>0</td><td>1</td><td></td><td></td><td>The cardinality of Observation.method is 0..1 while the source allows for multiple methods.  As we are not aware of anybody populating multiples in HL7 v2, we did not provide further mapping guidance.  If you need to support multiples, please submit a gForge to OO for the HL7 v2 to FHIR mapping Implementation Guide.</td></tr>
<tr><td>18</td><td>OBX-18</td><td>Equipment Instance Identifier</td><td>EI</td><td>0</td><td style='border-right: 2px'>-1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.device'>Observation.device</a>(<a href='https://hl7.org/fhir/R4/Device-definitions.html#Device.identifier'>Device.identifier</a>)</td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Identifier'>Identifier</a></td><td>0</td><td>-1</td><td><a href='ConceptMap-datatype-eiidentifier-to-identifier.html'>EI(Identifier)</a></td><td></td><td></td></tr>
<tr><td>19</td><td>OBX-19</td><td>Date/Time of the Analysis</td><td>DTM</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td>Observation.#ext-analysisDateTime#</td><td><a href='https://hl7.org/fhir/R4/datatypes.html#dateTime'>dateTime</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
<tr><td>20</td><td>OBX-20</td><td>Observation Site</td><td>CWE</td><td>0</td><td style='border-right: 2px'>-1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.bodySite'>Observation.bodySite</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#CodeableConcept'>CodeableConcept</a></td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-cwecodeableconcept-to-codeableconcept.html'>CWE[CodeableConcept]</a></td><td></td><td>The cardinality of Observation.bodySite is 0..1 while the source allows for multiple body sites.  As we are not aware of anybody populating multiples in HL7 v2, we did not provide further mapping guidance.  If you need to support multiples, please submit a gForge to OO for the HL7 v2 to FHIR mapping Implementation Guide.</td></tr>
<tr><td>21</td><td>OBX-21</td><td>Observation Instance Identifier</td><td>EI</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.identifier'>Observation.identifier</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Identifier'>Identifier</a></td><td>0</td><td>-1</td><td><a href='ConceptMap-datatype-eiidentifier-to-identifier.html'>EI(Identifier)</a></td><td></td><td></td></tr>
<tr><td>21</td><td>OBX-21</td><td>Observation Instance Identifier</td><td>EI</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.identifier.type.coding.code'>Observation.identifier.type.coding.code</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#code'>code</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
<tr><td>22</td><td>OBX-22</td><td>Mood Code</td><td>CNE</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<tr><td>23</td><td>OBX-23</td><td>Performing Organization Name</td><td>XON</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.performer'>Observation.performer</a>(<a href='https://hl7.org/fhir/R4/Organization.html'>Organization</a>)</td><td></td><td><a href='https://hl7.org/fhir/R4/references.html'>Reference</a>(<a href='https://hl7.org/fhir/R4/Organization.html'>Organization</a>)</td><td>0</td><td>-1</td><td><a href='ConceptMap-datatype-xonorganization-to-organization.html'>XON[Organization]</a></td><td></td><td></td></tr>
<tr><td>23</td><td>OBX-23</td><td>Performing Organization Name</td><td>XON</td><td>0</td><td style='border-right: 2px'>1</td><td>IF OBX-25 VALUED</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.performer'>Observation.performer</a>(<a href='https://hl7.org/fhir/R4/PractitionerRole-definitions.html#PractitionerRole.organization'>PractitionerRole.organization</a>(<a href='https://hl7.org/fhir/R4/Organization.html'>Organization</a>)</td><td></td><td><a href='https://hl7.org/fhir/R4/references.html'>Reference</a>(<a href='https://hl7.org/fhir/R4/Organization.html'>Organization</a>)</td><td>0</td><td>-1</td><td><a href='ConceptMap-datatype-xonorganization-to-organization.html'>XON[Organization]</a></td><td></td><td></td></tr>
<tr><td>24</td><td>OBX-24</td><td>Performing Organization Address</td><td>XAD</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.performer'>Observation.performer</a>(<a href='https://hl7.org/fhir/R4/Organization-definitions.html#Organization.address'>Organization.address</a>)</td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Address'>Address</a></td><td>0</td><td>-1</td><td><a href='ConceptMap-datatype-xad-to-address.html'>XAD</a></td><td></td><td></td></tr>
<tr><td>24</td><td>OBX-24</td><td>Performing Organization Address</td><td>XAD</td><td>0</td><td style='border-right: 2px'>1</td><td>IF OBX-25 VALUED</td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.performer'>Observation.performer</a>(<a href='https://hl7.org/fhir/R4/PractitionerRole-definitions.html#PractitionerRole.organization'>PractitionerRole.organization</a>(<a href='https://hl7.org/fhir/R4/Organization-definitions.html#Organization.address'>Organization.address</a>)</td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#Address'>Address</a></td><td>0</td><td>-1</td><td><a href='ConceptMap-datatype-xad-to-address.html'>XAD</a></td><td></td><td></td></tr>
<tr><td>25</td><td>OBX-25</td><td>Performing Organization Medical Director</td><td>XCN</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.performer'>Observation.performer</a>(<a href='https://hl7.org/fhir/R4/PractitionerRole.html'>PractitionerRole</a>)</td><td></td><td><a href='https://hl7.org/fhir/R4/references.html'>Reference</a>(<a href='#broken'><span style='font-weight: bold; color: red'>PracitionerRole</span></a>)</td><td>0</td><td>1</td><td><a href='ConceptMap-datatype-xcnpractitionerrole-to-pracitionerrole.html'>XCN(PractitionerRole)</a></td><td></td><td></td></tr>
<tr><td>25</td><td>OBX-25</td><td>Performing Organization Medical Director</td><td>XCN</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td><a href='https://hl7.org/fhir/R4/Observation-definitions.html#Observation.performer'>Observation.performer</a>(<a href='https://hl7.org/fhir/R4/PractitionerRole-definitions.html#PractitionerRole.code'>PractitionerRole.code</a></td><td></td><td><a href='https://hl7.org/fhir/R4/datatypes.html#code'>code</a></td><td></td><td></td><td></td><td></td><td></td></tr>
<tr><td>26</td><td>OBX-26</td><td>Patient Results Release Category</td><td>ID</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<tr><td>27</td><td>OBX-27</td><td>Root Cause</td><td>CWE</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<tr><td>28</td><td>OBX-28</td><td>Local Process Control</td><td>CWE</td><td>0</td><td style='border-right: 2px'>-1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
<tr><td>29</td><td>OBX-29</td><td>Observation Type</td><td>ID</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td>Observation.#ext-type#</td><td><a href='https://hl7.org/fhir/R4/datatypes.html#code'>code</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
<tr><td>30</td><td>OBX-30</td><td>Observation Sub-Type</td><td>ID</td><td>0</td><td style='border-right: 2px'>1</td><td></td><td></td><td style='border-right: 2px'></td><td></td><td>Observation.#ext-subType#</td><td><a href='https://hl7.org/fhir/R4/datatypes.html#code'>code</a></td><td>0</td><td>1</td><td></td><td></td><td></td></tr>
</tbody>
</table>