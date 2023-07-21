#!/bin/sh
#Download the data (assumes source already built, see build.bat)
rm -rf mappings/segments/*.csv mappings/messages/*.csv mappings/codesystems/*.csv mappings/datatypes/*.csv
$JAVA_HOME/bin/java -cp target/v2-to-fhir.jar:target/lib/* org.hl7.v2tofhir.Convert -omappings/segments "-rmappings/v2-to-FHIR Map Inventory - Segment.csv" -omappings/datatypes "-rmappings/v2-to-FHIR Map Inventory - Data Type.csv" -omappings/messages "-rmappings/v2-to-FHIR Map Inventory - Message.csv" -omappings/codesystems "-rmappings/v2-to-FHIR Map Inventory - Code System.csv"