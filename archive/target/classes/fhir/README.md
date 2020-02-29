This folder contains FHIR resources organized in subfolders by FHIR version.  Within each subfolder, the resources will
be further subdivided by resource type, and named by resource identifier.

Files in the ValueSet folder with .json extension would be ValueSet resources in fhir+json format.  Files in the ConceptMap 
folder with .xml extension would be ConceptMap resources in fhir+xml format.

The identifier of the resource should be a mnemonic to help explain its rationale for being.

e.g., dstu2/ConceptMap/ai_v2tofhir.xml would represent a conversion ConceptMap in DSTU2 format represented in XML. 

For each of the dstu2, stu3, and r4 subfolders, treat the contents of the folder as a [base] url for FHIR Resources
and identifiers within those resources as being relative to that base address.

By convention, resource ids in resources and references in these files should be 
relative to the base folder (dstu2, stu3, or r4). 
  