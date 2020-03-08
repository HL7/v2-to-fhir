The HL7 V2 to FHIR Implementation Guide supports the mapping of HL7 Version 2 messages
segments, datatypes and vocabulary to HL7 FHIR Release 4.0 Bundles, Resources, Data
Types and Coding Systems.

This implementation guide provides the Concept Maps and references to the Spreadsheets
used to generate them, as well as additional information and material to support validation
and testing of implementations.

This guide is organized into three main sections:

   1. [Introduction](introduction.html)<br/>This section provides an overview of the project, and explains [how mapping is performed](mapping_guidelines.md).
      You can also find [questions to address in this ballot](questions.html), the [glossary](glossary.html)
      and [acknowledgements](acknowledgements.html).

   2. [Mappings](mapping_outputs.html)<br/>This section provides an index to the mappings produced by this project, organized
      by [message](message_maps.html), [segment](segment_maps.html),[datatype](datatype_maps.html),
      or [vocabulary](coding_system_maps.html) mapping.

   3. [Implementation and Use](implementation_considerations.html)<br/>This section covers implementation considerations,
      [validation](validation.html), and provides example [test conversions](test_conversions.html).

Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on [GitHub](https://github.com/HL7/v2-to-fhir/).

<div id="disqus_thread"></div>
<script>
var disqus_config = function () {
this.page.url = "http://build.fhir.org.hl7/v2-to-fhir/branches/master/index.html"; // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = this.page.url.substring(this.page.url.lastIndexOf("/")+1, this.page.url.lastIndexOf(".")); // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://v2-to-fhir.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
