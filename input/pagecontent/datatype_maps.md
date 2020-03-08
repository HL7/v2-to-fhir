[//]: # Content after this line will be prepended to the output of the list of datatype maps

Data Type Mapping is driven by CSV files with specific columns. The use of these columns
is described below.

{% include datatype_mapping.md %}

[//End]: # Content after this marker will be updated during generation

### Chapter 2A  Control|Data Types

* [CM](ConceptMap-datatype-cm-to-codeableconcept.html) - Composite to FHIR [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#CodeableConcept)
* [CNE](ConceptMap-datatype-cne-to-codeableconcept.html) - Coded With No Exceptions to FHIR [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#CodeableConcept)
* [CWE](ConceptMap-datatype-cwe-to-code.html) - Coded With Exceptions to FHIR [code](http://hl7.org/fhir/R4/datatypes.html#code)
* [CX](ConceptMap-datatype-cx-to-identifier.html) - Extended Composite Id With Check Digit to FHIR [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier)
* [DLN](ConceptMap-datatype-dln-to-identifier.html) - Driver's License Number to FHIR [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier)
* [DR](ConceptMap-datatype-dr-to-period.html) - Date/Time Range to FHIR [Period](http://hl7.org/fhir/R4/datatypes.html#Period)
* [DTM](ConceptMap-datatype-dtm-to-datetime.html) - Date/Time to FHIR [dateTime](http://hl7.org/fhir/R4/datatypes.html#dateTime)
* [ED](ConceptMap-datatype-ed-to-attachment.html) - Encapsulated Data to FHIR [Attachment](http://hl7.org/fhir/R4/datatypes.html#Attachment)
* [EI](ConceptMap-datatype-ei-to-coding.html) - Entity Identifier to FHIR [Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)
* [ERL](ConceptMap-datatype-erl-to-erl.html) - Error Location to FHIR [ERL](http://hl7.org/fhir/R4/codesystem-erl.html)
* [HD](ConceptMap-datatype-hd-to-messageheader.html) - Hierarchic Designator to FHIR [MessageHeader](http://hl7.org/fhir/R4/MessageHeader.html)
* [IS](ConceptMap-datatype-is-to-codeableconcept.html) - Coded Value For User to FHIR [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#CodeableConcept)
* [MSG](ConceptMap-datatype-msg-to-coding.html) - Message Type to FHIR [coding](http://hl7.org/fhir/R4/codesystem-coding.html)
* [NA](ConceptMap-datatype-na-to-na.html) - Numeric Array to FHIR [NA](http://hl7.org/fhir/R4/codesystem-na.html)
* [NR](ConceptMap-datatype-nr-to-range.html) - Numeric Range to FHIR [Range](http://hl7.org/fhir/R4/datatypes.html#Range)
* [PL](ConceptMap-datatype-pl-to-location1.html) - Person Location to FHIR [Location[1]](http://hl7.org/fhir/R4/codesystem-location[1].html)
* [PLN](ConceptMap-datatype-pln-to-identifier.html) - Practitioner License Or Other Id Number to FHIR [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier)
* [PT](ConceptMap-datatype-pt-to-messageheader.html) - Processing Type to FHIR [MessageHeader](http://hl7.org/fhir/R4/MessageHeader.html)
* [RP](ConceptMap-datatype-rp-to-attachment.html) - Reference Pointer to FHIR [Attachment](http://hl7.org/fhir/R4/datatypes.html#Attachment)
* [SAD](ConceptMap-datatype-sad-to-address.html) - Street Address to FHIR [Address](http://hl7.org/fhir/R4/datatypes.html#Address)
* [SN](ConceptMap-datatype-sn-to-ratio.html) - Structured Numeric to FHIR [Ratio](http://hl7.org/fhir/R4/datatypes.html#Ratio)
* [ST](ConceptMap-datatype-st-to-identifier.html) - String Data to FHIR [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier)
* [TQ](ConceptMap-datatype-tq-to-servicerequest.html) - Timing/Quantity to FHIR [ServiceRequest](http://hl7.org/fhir/R4/ServiceRequest.html)
* [XAD](ConceptMap-datatype-xad-to-address.html) - Extended Address to FHIR [Address](http://hl7.org/fhir/R4/datatypes.html#Address)
* [XCN](ConceptMap-datatype-xcn-to-practitioner.html) - Extended Composite Id Number And Name For Persons to FHIR [Practitioner](http://hl7.org/fhir/R4/Practitioner.html)
* [XON](ConceptMap-datatype-xon-to-string.html) - Extended Composite Name And Identification Number For Organizations to FHIR [string](http://hl7.org/fhir/R4/datatypes.html#string)
* [XPN](ConceptMap-datatype-xpn-to-humanname.html) - Extended Person Name to FHIR [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName)
* [XTN](ConceptMap-datatype-xtn-to-contactpoint1.html) - Extended Telecommunication Number to FHIR [ContactPoint[1]](http://hl7.org/fhir/R4/codesystem-contactpoint[1].html)

<div id="disqus_thread"></div>
<script>
var disqus_config = function () {
this.page.url = "http://build.fhir.org.hl7/v2-to-fhir/branches/master/datatype_maps.html"; // Replace PAGE_URL with your page's canonical URL variable
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

