call sushi .
xcopy build\input\resources\* input\resources /Y
xcopy build\input\pagecontent\* input\pagecontent /Y
copy build\input\ImplementationGuide-*.json input
_genonce