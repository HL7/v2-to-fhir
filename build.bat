REM TODO: Make this an ant build, and add the ant tasks to mvn
REM Clean Folders
rmdir /s/q output 
rmdir /s/q fsh-generated
REM Remove generated mapping input files (input/fsh/ is entirely Convert-generated output;
REM the previous pattern targeted input/*.fsh - the wrong directory - and silently left
REM every prior run's stale/error-stub .fsh files in place, contaminating cross-reference
REM validation on the next run)
rm -f input/fsh/*.fsh
REM Build the source
call mvn compile package
REM Run it over the data
"%JAVA_HOME%\bin\java" -jar target\v2-to-fhir.jar -oinput/fsh mappings/messages mappings/segments mappings/datatypes mappings/codesystems
REM Build the files from Sushi source
REM Generate the guide
call _genonce.bat -Xmx2G

