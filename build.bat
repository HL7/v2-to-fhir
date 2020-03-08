call mvn compile package
"%JAVA_HOME%\bin\java" -cp target\v2-to-fhir.jar;target\lib\* org.hl7.v2tofhir.Convert -otank mappings/messages mappings/segments mappings/datatypes mappings/codesystems
call sushi tank -o .
call _genonce
