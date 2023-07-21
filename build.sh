#!/bin/sh
#TODO: Make this an ant build, and add the ant tasks to mvn
#Clean Folders
rm -rf output
#Remove generated mapping input files
rm -rf input/fsh/Datatype*.fsh input/fsh/Segment*.fsh input/fsh/Table*.fsh input/fsh/Message*.fsh input/fsh/Unsupported*.fsh
#Build the source
mvn compile package
#Run it over the data
$JAVA_HOME/bin/java -cp target/v2-to-fhir.jar:target/lib/* org.hl7.v2tofhir.Convert -oinput/fsh mappings/messages mappings/segments mappings/datatypes mappings/codesystems
#Build the files from Sushi source
#Generate the guide
./_genonce.sh -Xmx2G