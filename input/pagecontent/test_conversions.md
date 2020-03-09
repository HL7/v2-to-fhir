The following v2 messages and corresponding FHIR Bundles represent a robust v2 message for a particular common use of that message and
the corresponding agreed to FHIR Bundle that a mapper should create based on the mapping spreadsheets.  These are to be used for
v2-to-FHIR mapping tool validation, while they can also be used to validate that the mapping spreadsheets are complete.

While initially these are Draft, at some point they will be changed to STU and then Normative to establish them as the agreed to benchmark.   

Note that we will not create mappings this way for each structure, rather those that would exercise the most segments and/or unique
features (e.g., we may only need very few ADT messages, but would need more to clarify groupings used for Micro results or other unique
use cases).

### ADT Messages
* ADT_A01: https://confluence.hl7.org/download/attachments/20022006/ADT_A01.txt?api=v2  NOTE: CONTENT NEEDS TO BE MOVED TO A GITHUB FOLDER
  * FHIR Bundle: To be provided.

### Immunization Messages
* VXU_V04: To be provided
  * FHIR Bundle: To be provided

### Result Messages
* ORU_R01: Get LRI from ONC/NIST
  * FHIR Bundle:


<div id="disqus_thread"></div>
<script>
var disqus_config = function () {
this.page.url = "http://build.fhir.org.hl7/v2-to-fhir/branches/master/test_conversions.html"; // Replace PAGE_URL with your page's canonical URL variable
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
