REM TODO: Make this an ant build, and add the ant tasks to mvn
REM Clean Folders
rmdir /s/q output 
rmdir /s/q fsh-generated
REM Remove generated mapping input files
rm input/Datatype*.fsh input/Segment*.fsh input/Table*.fsh input/Message*.fsh
REM Build the source
call mvn compile package
REM Run it over the data
"%JAVA_HOME%\bin\java" -cp target\v2-to-fhir.jar;target\lib\* org.hl7.v2tofhir.Convert -oinput/fsh mappings/messages mappings/segments mappings/datatypes mappings/codesystems
REM Build the files from Sushi source
REM Generate the guide
call _genonce.bat -Xmx2G

