Extension: TypeInfo
Description: "Type information for conversion"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* extension contains type 0..1 MS and
    cardinalityMin 0..1 MS and
    cardinalityMax 0..1 MS

* extension[type].value[x] only code
* extension[type] ^short = "Data Type of the item"
* extension[cardinalityMin].value[x] only integer
* extension[cardinalityMin] ^short = "Minimum cardinality of the item"
* extension[cardinalityMax].value[x] only integer
* extension[cardinalityMax] ^short = "Maximum cardinality of the item"

Extension: RelatedArtifact
Description: "Related artifacts for a ConceptMap"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* extension contains type 1..1 MS and
    label 1..1 MS and
    url 1..1 MS and
    description 0..1 MS

// Cannot use RelatedArtifact in extension because it is a metadata type.
* extension[type].value[x] only code
* extension[type].valueCode from http://hl7.org/fhir/ValueSet/related-artifact-type
* extension[label].value[x] only string
* extension[label].valueString 1..1
* extension[url].value[x] only uri
* extension[url].valueUri 1..1
* extension[description].value[x] only string
* extension[description].valueString 1..1
