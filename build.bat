REM TODO: Make this an ant build, and add the ant tasks to mvn
REM Clean Folders
rmdir /s/q input output
rm tank/*.fsh
REM Build the source
call mvn compile package
REM Run it over the data
"%JAVA_HOME%\bin\java" -cp target\v2-to-fhir.jar;target\lib\* org.hl7.v2tofhir.Convert -otank mappings/messages mappings/segments mappings/datatypes mappings/codesystems
REM Build the files from Sushi source
call sushi tank -o .
REM Generate the guide
call _genonce
