# Unspecified Mapping
Their is no mapping from HL7 Version 2 to FHIR.  This can occur:

1. When HL7 Version 2 does not specify any vocabulary for a coded field.  In this case, the behavior for mapping the field is implementation defined.
2. When HL7 FHIR does not specify recommend vocabulary for the target resource, but there is an HL7 Version 2 value set.  In these cases, the implementation may simply use the HL7 Version 2 Value 
set to populate the codes in the FHIR Resource.

