[//]: # Content after this line will be prepended to the output of the list of messsage maps

The sections below list the message mappings defined by this guide.
Message Mapping is driven by CSV files with specific columns. The use of these columns
is described in the section on [mapping](#mapping) at the bottom of this page.

[//End]: # Content after this marker will be updated during generation

### Chapter  3  Patient Administration

* [ADT_A01](ConceptMap-message-adt-a01-to-bundle.html) - Admit/Visit Notification
* [ADT_A04](ConceptMap-message-adt-a04-to-bundle.html) - Register a Patient
* [ADT_A08](ConceptMap-message-adt-a08-to-bundle.html) - Update Patient Information

### Chapter  4  Order Entry

* [OML_O21](ConceptMap-message-oml-o21-to-bundle.html) - Laboratory order
* [VXU_V04](ConceptMap-message-vxu-v04-to-bundle.html) - Vaccine Record Update

### Chapter  7  Observation Reporting

* [ORU_R01](ConceptMap-message-oru-r01-to-bundle.html) - Unsolicited Report Alarm
<h2 style='--heading-prefix: ""' id='mapping'>Mapping</h2>
{% include message_mapping.md %}

<div id="disqus_thread"></div>
<script>
var disqus_config = function () {
this.page.url = "http://build.fhir.org/hl7/v2-to-fhir/branches/master/message_maps.html"; // Replace PAGE_URL with your page's canonical URL variable
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

