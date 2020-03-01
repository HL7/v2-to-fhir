The {org} {Profile.title} {Profile.id} profile supports the selection
of assessment instruments from a repository and the integration of those instruments
into a provider workflow for the capture of assessment data for a given patient.

This implementation guide provides the FHIR Implementation materials associated with
this {org} profile.  This guide includes content from the {org} {Profile.id} Profile Supplement,
however, the {org} published PDF content for this supplement is considered to be the
normative content.

This guide is organized into three main sections:

1. Volume I: [Overview](overview.html)
    1. [Actors and Transactions](actorsandtransactions.html)
    2. [Profile Options](profileoptions.html)
    3. [Security Considerations](securityconsiderations.html)
    4. [Cross Profile Considerations](crossprofileconsiderations.html)
2. Volume II: [Transactions](transactions.html)
   { for-each Profile.transaction T }
    1. [[{T.id}] {T.name}](transaction-{T.id}.html})
3. Volume III: [Content Profiles](contentprofiles.html)
   { for-each Profile.content C }
    1. [{C.name} FHIR Profile](StructureDefinition-{org}-{Profile.id}-{C.id}.html)

Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on [https://github.com/{org}/{Profile.id}](https://github.com/{org}/{Profile.id}).
