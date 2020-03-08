[//]: # Content after this line will be prepended to the output of the list of segment maps

Segment Mapping is driven by CSV files with specific columns. The use of these columns
is described below.

{% include segment_mapping.md %}

[//End]: # Content after this marker will be updated during generation

### Chapter  2  Control

* [MSH](ConceptMap-segment-msh-to-provenance.html) - Message Header to FHIR [Provenance](http://hl7.org/fhir/R4/Provenance.html)
* [NTE](ConceptMap-segment-nte-to-annotation.html) - Notes and Comments to FHIR [Annotation](http://hl7.org/fhir/R4/datatypes.html#Annotation)
* [SFT](ConceptMap-segment-sft-to-messageheader.html) - Software Segment to FHIR [MessageHeader](http://hl7.org/fhir/R4/MessageHeader.html)

### Chapter  3  Patient Administration

* [AL1](ConceptMap-segment-al1-to-allergyintolerance.html) - Patient Allergy Information to FHIR [AllergyIntolerance](http://hl7.org/fhir/R4/AllergyIntolerance.html)
* [ARV](ConceptMap-segment-arv-to-resource.html) - Access Restriction to FHIR [Resource](http://hl7.org/fhir/R4/Resource.html)
* [IAM](ConceptMap-segment-iam-to-allergyintolerance.html) - Patient Adverse Reaction Information to FHIR [AllergyIntolerance](http://hl7.org/fhir/R4/AllergyIntolerance.html)
* [NK1](ConceptMap-segment-nk1-to-relatedperson.html) - Next of Kin / Associated Parties to FHIR [RelatedPerson](http://hl7.org/fhir/R4/RelatedPerson.html)
* [PD1](ConceptMap-segment-pd1-to-patient.html) - Patient Additional Demographic to FHIR [Patient](http://hl7.org/fhir/R4/Patient.html)
* [PID](ConceptMap-segment-pid-to-patient.html) - Patient Identification to FHIR [Patient](http://hl7.org/fhir/R4/Patient.html)
* [PV1](ConceptMap-segment-pv1-to-encounter.html) - Patient Visit to FHIR [Encounter](http://hl7.org/fhir/R4/Encounter.html)
* [PV2](ConceptMap-segment-pv2-to-encounter.html) - Patient Visit - Additional Information to FHIR [Encounter](http://hl7.org/fhir/R4/Encounter.html)

### Chapter  4  Order Entry

* [OBR](ConceptMap-segment-obr-to-diagnosticreport.html) - Observation Request to FHIR [DiagnosticReport](http://hl7.org/fhir/R4/DiagnosticReport.html)
* [ORC](ConceptMap-segment-orc-to-diagnosticreport.html) - Common Order to FHIR [DiagnosticReport](http://hl7.org/fhir/R4/DiagnosticReport.html)

### Chapter  4A  Order Entry:  Pharmacy/Treatment, Vaccination

* [RXA](ConceptMap-segment-rxa-to-immunization.html) - Pharmacy/Treatment Administration to FHIR [Immunization](http://hl7.org/fhir/R4/Immunization.html)
* [RXR](ConceptMap-segment-rxr-to-immunization.html) - Pharmacy/Treatment Route to FHIR [Immunization](http://hl7.org/fhir/R4/Immunization.html)

### Chapter  6  Financial Management

* [DG1](ConceptMap-segment-dg1-to-condition.html) - Diagnosis to FHIR [Condition](http://hl7.org/fhir/R4/Condition.html)
* [PR1](ConceptMap-segment-pr1-to-procedure.html) - Procedures to FHIR [Procedure](http://hl7.org/fhir/R4/Procedure.html)

### Chapter  7  Observation Reporting

* [OBX](ConceptMap-segment-obx-to-observation.html) - Observation/Result to FHIR [Observation](http://hl7.org/fhir/R4/Observation.html)
* [PRT](ConceptMap-segment-prt-to-operation.html) - Participation Information to FHIR [Operation](http://hl7.org/fhir/R4/codesystem-operation.html)
* [SPM](ConceptMap-segment-spm-to-specimen.html) - Specimen to FHIR [Specimen](http://hl7.org/fhir/R4/Specimen.html)

### Chapter 15  Personnel Management

* [ROL](ConceptMap-segment-rol-to-relatedperson.html) - Role to FHIR [RelatedPerson](http://hl7.org/fhir/R4/RelatedPerson.html)

<div id="disqus_thread"></div>
<script>
var disqus_config = function () {
this.page.url = "http://build.fhir.org.hl7/v2-to-fhir/branches/master/segment_maps.html"; // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = this.page.url.substring(this.page.url.lastIndexOf("/")+1, this.page.url.lastIndexOf(".")); // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://v2-to-fhir.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>
    Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a>
</noscript>

