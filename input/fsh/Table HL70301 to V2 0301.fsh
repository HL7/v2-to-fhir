// HL7 Concept Map_ UniversalIDType - Sheet1.csv
Instance: TableHL70301ToV20301
InstanceOf: ConceptMap
Title: "Table HL70301 to V2 0301 Map"
Usage: #definition
* title = "Table HL70301 to V2 0301 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70301 to the FHIR V2 0301 Value Set."
* id = "table-hl70301-to-v2-0301"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70301-to-v2-0301"
* name = "TableHL70301ToV20301"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0301"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0301"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70301 to V2 0301.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1YC0HqPfyRswWwvWh_9iHaTECvY8m2vk4DjYl0K56pc0/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0301"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0301"
* group[0].element[0].code = #DNS
* group[0].element[0].display = "An Internet host name, in accordance with RFC 1035; or an IP address. Either in ASCII or as integers, with periods between components (“dotted” notation)."
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #DNS
* group[0].element[0].target.display = "An Internet host name, in accordance with RFC 1035; or an IP address. Either in ASCII or as integers, with periods between components (“dotted” notation)."
* group[0].element[1].code = #EUI64
* group[0].element[1].display = "IEEE 64-bit Extended Unique Identifier is comprised of a 24-bit company identifier and a 40-bit instance identifier. The value shall be formatted as 16 ASCII HEX digits, for example, “AABBCC1122334455”. The 24-bit company identifier, formally known as Organizationally Unique Identifier (OUI-24), is guaranteed to be globally unique. The 40-bit extensions are assigned by manufacturers. This identifier is often used in equipment interfaces (e.g., “MAC” address format for IPv4 & IPv6). [See http://standards.ieee.org/regauth/oui/tutorials/EUI64.html for a detailed explanation of the format.]"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #EUI64
* group[0].element[1].target.display = "IEEE 64-bit Extended Unique Identifier is comprised of a 24-bit company identifier and a 40-bit instance identifier. The value shall be formatted as 16 ASCII HEX digits, for example, “AABBCC1122334455”. The 24-bit company identifier, formally known as Organizationally Unique Identifier (OUI-24), is guaranteed to be globally unique. The 40-bit extensions are assigned by manufacturers. This identifier is often used in equipment interfaces (e.g., “MAC” address format for IPv4 & IPv6). [See http://standards.ieee.org/regauth/oui/tutorials/EUI64.html for a detailed explanation of the format.]"
* group[0].element[2].code = #CLIA
* group[0].element[2].display = "Clinical Laboratory Improvement Amendments. Allows for the ability to designate organization identifier as a “CLIA” assigned number (for labs)"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #CLIA
* group[0].element[2].target.display = "Clinical Laboratory Improvement Amendments. Allows for the ability to designate organization identifier as a “CLIA” assigned number (for labs)"
* group[0].element[3].code = #CLIP
* group[0].element[3].display = "Clinical laboratory Improvement Program. Allows for the ability to designate organization identifier as a “CLIP” assigned number (for labs). Used by US Department of Defense."
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #CLIP
* group[0].element[3].target.display = "Clinical laboratory Improvement Program. Allows for the ability to designate organization identifier as a “CLIP” assigned number (for labs). Used by US Department of Defense."
* group[0].element[4].code = #GUID
* group[0].element[4].display = "Same as UUID."
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #GUID
* group[0].element[4].target.display = "Same as UUID."
* group[0].element[5].code = #HCD
* group[0].element[5].display = "The CEN Healthcare Coding Scheme Designator"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #HCD
* group[0].element[5].target.display = "The CEN Healthcare Coding Scheme Designator"
* group[0].element[6].code = #HL7
* group[0].element[6].display = "HL7 registration schemes"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #HL7
* group[0].element[6].target.display = "HL7 registration schemes"
* group[0].element[7].code = #ISO
* group[0].element[7].display = "An International Standards Organization Object Identifier (OID), in accordance with ISO/IEC 8824. Formatted as decimal digits separated by periods; recommended limit of 64 characters"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #ISO
* group[0].element[7].target.display = "An International Standards Organization Object Identifier (OID), in accordance with ISO/IEC 8824. Formatted as decimal digits separated by periods; recommended limit of 64 characters"
* group[0].element[8].code = #L,M,N
* group[0].element[8].display = "Locally defined coding entity identifier."
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #L
* group[0].element[8].target.display = "Locally defined coding entity identifier."
* group[0].element[8].target.comment = ",M,N."
* group[0].element[9].code = #Random
* group[0].element[9].display = """
Usually a base64 encoded string of random bits.
 Note: Random IDs are typically used for instance identifiers, rather than an identifier of an Assigning Authority that issues instance identifiers\
"""
* group[0].element[9].target.equivalence = #equivalent
* group[0].element[9].target.code = #Random
* group[0].element[9].target.display = """
Usually a base64 encoded string of random bits.
 Note: Random IDs are typically used for instance identifiers, rather than an identifier of an Assigning Authority that issues instance identifiers\
"""
* group[0].element[10].code = #URI
* group[0].element[10].display = "Uniform Resource Identifier"
* group[0].element[10].target.equivalence = #equivalent
* group[0].element[10].target.code = #URI
* group[0].element[10].target.display = "Uniform Resource Identifier"
* group[0].element[11].code = #UUID
* group[0].element[11].display = "The DCE Universal Unique Identifier, in accordance with RFC 4122. Recommended format is 32 hexadecimal digits separated by hyphens, in the digit grouping 8-4-4-4-12"
* group[0].element[11].target.equivalence = #equivalent
* group[0].element[11].target.code = #UUID
* group[0].element[11].target.display = "The DCE Universal Unique Identifier, in accordance with RFC 4122. Recommended format is 32 hexadecimal digits separated by hyphens, in the digit grouping 8-4-4-4-12"
* group[0].element[12].code = #x400
* group[0].element[12].display = "An X.400 MHS identifier. Recommended format is in accordance with RFC 1649"
* group[0].element[12].target.equivalence = #equivalent
* group[0].element[12].target.code = #x400
* group[0].element[12].target.display = "An X.400 MHS identifier. Recommended format is in accordance with RFC 1649"
* group[0].element[13].code = #x500
* group[0].element[13].display = "An X.500 directory name"
* group[0].element[13].target.equivalence = #equivalent
* group[0].element[13].target.code = #x500
* group[0].element[13].target.display = "An X.500 directory name"
