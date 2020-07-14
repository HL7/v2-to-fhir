### Profiles

v2-to-FHIR will use FHIR components and profiles to maintain mapping documentation.  Additionally, when v2 messages are
converted to FHIR messages a minmum set of data must be available through the FHIR Bundle.  To this end, the following profiles are used.


1. ConceptMap - The ConceptMap is used as the source of truth for the mappings.  A profile is defined for each of the mapped elements that
defines the data captured for each type of mapping:

    * [Message ConceptMap Profile]
    * [Segment ConceptMap Profile]
    * [Data Type ConceptMap Profile]
    * [Code System ConceptMap Profile]

2. [Bundle] - The profile that must be used to include the minimum data that should be in a FHIR message bundle that represents a converted
v2 message.

3. Future - We are considering how to use MessageDefinition and GraphDefinition and will provide at a future time relevant profiles of these for
the FHIR messages that represent the converted v2 messages.

<div id="disqus_thread"></div>
<script>
var disqus_config = function () {
this.page.url = "http://build.fhir.org.hl7/v2-to-fhir/branches/master/profiles.html"; // Replace PAGE_URL with your page's canonical URL variable
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
