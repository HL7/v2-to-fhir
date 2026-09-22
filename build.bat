REM TODO: Make this an ant build, and add the ant tasks to mvn
REM Clean Folders
rmdir /s/q output 
rmdir /s/q fsh-generated
REM Remove generated mapping input files. input/fsh/ is Convert-generated output, EXCEPT
REM Extensions.fsh, which is hand-authored (defines the TypeInfo/RelatedArtifact extensions
REM nearly every generated ConceptMap references) and lives at the same flat level as the
REM generated files with no Convert step that ever regenerates it - deleting it here breaks
REM the whole IG build (every extension reference becomes unresolvable) and nothing catches
REM that until IG Publisher validation. The previous pattern targeted input/*.fsh - the
REM wrong directory - and silently left every prior run's stale/error-stub .fsh files in
REM place, contaminating cross-reference validation on the next run.
find input/fsh -maxdepth 1 -name "*.fsh" ! -name "Extensions.fsh" -delete
REM Build the source
call mvn compile package
REM Run it over the data
"%JAVA_HOME%\bin\java" -jar target\v2-to-fhir.jar -oinput/fsh mappings/messages mappings/segments mappings/datatypes mappings/codesystems
REM Build the files from Sushi source
REM Generate the guide
call _genonce.bat -Xmx2G

