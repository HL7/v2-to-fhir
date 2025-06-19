@ECHO OFF
setlocal enabledelayedexpansion

SET "dlurl=https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar"
SET "publisher_jar=publisher.jar"
SET "input_cache_path=%CD%\input-cache\"
SET "skipPrompts=false"
SET "upper_path=..\"
SET "scriptdlroot=https://raw.githubusercontent.com/HL7/ig-publisher-scripts/main"
SET "build_bat_url=%scriptdlroot%/_build.bat"
SET "build_sh_url=%scriptdlroot%/_build.sh"



:: Debugging statements to check jar file location
ECHO Checking for publisher.jar in %input_cache_path%
IF EXIST "%input_cache_path%%publisher_jar%" (
    SET "jar_location=%input_cache_path%%publisher_jar%"
    ECHO Found publisher.jar in input-cache
) ELSE (
    ECHO Checking for publisher.jar in %upper_path%
    IF EXIST "%upper_path%%publisher_jar%" (
        SET "jar_location=%upper_path%%publisher_jar%"
        ECHO Found publisher.jar in parent folder
    ) ELSE (
        SET "jar_location=not_found"
        SET "default_choice=1"
        ECHO publisher.jar not found in input-cache or parent folder
    )
)


:: Handle command-line argument to bypass the menu
IF NOT "%~1"=="" (
    IF /I "%~1"=="update" SET "userChoice=1"
    IF /I "%~1"=="build" SET "userChoice=2"
    IF /I "%~1"=="nosushi" SET "userChoice=3"
    IF /I "%~1"=="notx" SET "userChoice=4"
    IF /I "%~1"=="jekyll" SET "userChoice=5"
    IF /I "%~1"=="clean" SET "userChoice=6"
    IF /I "%~1"=="exit" SET "userChoice=0"
    GOTO executeChoice
)

echo ---------------------------------------------------------------
ECHO Checking internet connection...
PING tx.fhir.org -4 -n 1 -w 4000 >nul 2>&1 && SET "online_status=true" || SET "online_status=false"

IF "%online_status%"=="true" (
    ECHO We're online and tx.fhir.org is available.
    FOR /F "tokens=2 delims=:" %%a IN ('curl -s https://api.github.com/repos/HL7/fhir-ig-publisher/releases/latest ^| findstr "tag_name"') DO SET "latest_version=%%a"
    SET "latest_version=!latest_version:"=!"
    SET "latest_version=!latest_version: =!"
    SET "latest_version=!latest_version:~0,-1!"
) ELSE (
    ECHO We're offline or tx.fhir.org is not available, can only run the publisher without TX...
    SET "txoption=-tx n/a"
    SET "latest_version=unknown"
    SET "default_choice=4"
)

echo ---------------------------------------------------------------


IF NOT "%jar_location%"=="not_found" (
    FOR /F "tokens=*" %%i IN ('java "-Dfile.encoding=UTF-8" -jar "%jar_location%" -v 2^>^&1') DO SET "publisher_version=%%i"
    SET "publisher_version=!publisher_version:"=!"
    ECHO Detected publisher version: !publisher_version!
) ELSE (
    SET "publisher_version=unknown"
    ECHO publisher.jar location is not found
)

ECHO Publisher version: !publisher_version!; Latest is !latest_version!

IF NOT "%online_status%"=="true" (
   ECHO We're offline.
) ELSE (
    IF NOT "!publisher_version!"=="!latest_version!" (
        ECHO An update is recommended.
        SET "default_choice=1"
    ) ELSE (
        ECHO Publisher is up to date.
        SET "default_choice=2"
    )
)

echo ---------------------------------------------------------------
echo.

echo Please select an option:
echo 1. Download or upload publisher
echo 2. Build IG
echo 3. Build IG - no sushi
echo 4. Build IG - force no TX server
echo 5. Jekyll build
echo 6. Clean up temp directories
echo 0. Exit
:: echo [Press Enter for default (%default_choice%) or type an option number:]
echo.

:: Using CHOICE to handle input with timeout
:: ECHO [Enter=Continue, 1-7=Option, 0=Exit]
choice /C 12345670 /N /CS /D %default_choice% /T 5 /M "Choose an option number or wait 5 seconds for default (%default_choice%):"
SET "userChoice=%ERRORLEVEL%"


:executeChoice
echo You selected: %userChoice%

IF "%userChoice%"=="1" GOTO downloadpublisher
IF "%userChoice%"=="2" GOTO publish_once
IF "%userChoice%"=="3" GOTO publish_nosushi
IF "%userChoice%"=="4" GOTO publish_notx
IF "%userChoice%"=="5" GOTO debugjekyll
IF "%userChoice%"=="6" GOTO clean
IF "%userChoice%"=="0" EXIT /B

:end



:debugjekyll
    echo Running Jekyll build...
    jekyll build -s temp/pages -d output
GOTO end


:clean
    echo Cleaning up directories...
    if exist ".\input-cache\publisher.jar" (
        echo Preserving publisher.jar and removing other files in .\input-cache...
        move ".\input-cache\publisher.jar" ".\"
        rmdir /s /q ".\input-cache"
        mkdir ".\input-cache"
        move ".\publisher.jar" ".\input-cache"
    ) else (
        if exist ".\input-cache\" (
            rmdir /s /q ".\input-cache"
        )
    )
    if exist ".\temp\" (
        rmdir /s /q ".\temp"
        echo Removed: .\temp
    )
    if exist ".\output\" (
        rmdir /s /q ".\output"
        echo Removed: .\output
    )
    if exist ".\template\" (
        rmdir /s /q ".\template"
        echo Removed: .\template
    )

GOTO end





:downloadpublisher
ECHO Downloading Publisher...
:processflags
SET ARG=%1
IF DEFINED ARG (
	IF "%ARG%"=="-f" SET FORCE=true
	IF "%ARG%"=="--force" SET FORCE=true
	SHIFT
	GOTO processflags
)

FOR %%x IN ("%CD%") DO SET upper_path=%%~dpx

ECHO.
IF NOT EXIST "%input_cache_path%%publisher_jar%" (
	IF NOT EXIST "%upper_path%%publisher_jar%" (
		SET jarlocation="%input_cache_path%%publisher_jar%"
		SET jarlocationname=Input Cache
		ECHO IG Publisher is not yet in input-cache or parent folder.
		REM we don't use jarlocation below because it will be empty because we're in a bracketed if statement
		GOTO create
	) ELSE (
		ECHO IG Publisher FOUND in parent folder
		SET jarlocation="%upper_path%%publisher_jar%"
		SET jarlocationname=Parent folder
		GOTO upgrade
	)
) ELSE (
	ECHO IG Publisher FOUND in input-cache
	SET jarlocation="%input_cache_path%%publisher_jar%"
	SET jarlocationname=Input Cache
	GOTO upgrade
)

:create
IF DEFINED FORCE (
	MKDIR "%input_cache_path%" 2> NUL
	GOTO download
)

IF "%skipPrompts%"=="y" (
	SET create=Y
) ELSE (
	SET /p create="Download? (Y/N) "
)
IF /I "%create%"=="Y" (
	ECHO Will place publisher jar here: %input_cache_path%%publisher_jar%
	MKDIR "%input_cache_path%" 2> NUL
	GOTO download
)
GOTO done

:upgrade
IF "%skipPrompts%"=="y" (
	SET overwrite=Y
) ELSE (
	SET /p overwrite="Overwrite %jarlocation%? (Y/N) "
)

IF /I "%overwrite%"=="Y" (
	GOTO download
)
GOTO done

:download
ECHO Downloading most recent publisher to %jarlocationname% - it's ~200 MB, so this may take a bit

FOR /f "tokens=4-5 delims=. " %%i IN ('ver') DO SET VERSION=%%i.%%j
IF "%version%" == "10.0" GOTO win10
IF "%version%" == "6.3" GOTO win8.1
IF "%version%" == "6.2" GOTO win8
IF "%version%" == "6.1" GOTO win7
IF "%version%" == "6.0" GOTO vista

ECHO Unrecognized version: %version%
GOTO done

:win10
CALL POWERSHELL -command if ('System.Net.WebClient' -as [type]) {(new-object System.Net.WebClient).DownloadFile(\"%dlurl%\",\"%jarlocation%\") } else { Invoke-WebRequest -Uri "%dlurl%" -Outfile "%jarlocation%" }

GOTO done

:win7
rem this may be triggering the antivirus - bitsadmin.exe is a known threat
rem CALL bitsadmin /transfer GetPublisher /download /priority normal "%dlurl%" "%jarlocation%"

rem this didn't work in win 10
rem CALL Start-BitsTransfer /priority normal "%dlurl%" "%jarlocation%"

rem this should work - untested
call (New-Object Net.WebClient).DownloadFile('%dlurl%', '%jarlocation%')
GOTO done

:win8.1
:win8
:vista
GOTO done



:done




ECHO.
ECHO Updating scripts
IF "%skipPrompts%"=="y" (
	SET updateScripts=Y
) ELSE (
	SET /p updateScripts="Update scripts? (Y/N) "
)
IF /I "%updateScripts%"=="Y" (
	GOTO scripts
)
GOTO end


:scripts

REM Download all batch files (and this one with a new name)

SETLOCAL DisableDelayedExpansion



:dl_script_1
ECHO Updating _build.sh
call POWERSHELL -command if ('System.Net.WebClient' -as [type]) {(new-object System.Net.WebClient).DownloadFile(\"%build_sh_url%\",\"_build.new.sh\") } else { Invoke-WebRequest -Uri "%build_sh_url%" -Outfile "_build.new.sh" }
if %ERRORLEVEL% == 0 goto upd_script_1
echo "Errors encountered during download: %errorlevel%"
goto dl_script_2
:upd_script_1
start copy /y "_build.new.sh" "_build.sh" ^&^& del "_build.new.sh" ^&^& exit


:dl_script_2
ECHO Updating _build.bat
call POWERSHELL -command if ('System.Net.WebClient' -as [type]) {(new-object System.Net.WebClient).DownloadFile(\"%build_bat_url%\",\"_build.new.bat\") } else { Invoke-WebRequest -Uri "%build_bat_url%" -Outfile "_build.new.bat" }
if %ERRORLEVEL% == 0 goto upd_script_2
echo "Errors encountered during download: %errorlevel%"
goto end
:upd_script_2
start copy /y "_build.new.bat" "_build.bat" ^&^& del "_build.new.bat" ^&^& exit


GOTO end


:publish_once

SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

:: Debugging statements before running publisher
ECHO 1jar_location is: %jar_location%
IF NOT "%jar_location%"=="not_found" (
	java %JAVA_OPTS% -jar "%jar_location%" -ig . %txoption% %*
) ELSE (
	ECHO IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
)

GOTO end



:publish_nosushi

SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

:: Debugging statements before running publisher
ECHO 3jar_location is: %jar_location%
IF NOT "%jar_location%"=="not_found" (
	java %JAVA_OPTS% -jar "%jar_location%" -ig . %txoption% -no-sushi %*
) ELSE (
	ECHO IG Publisher NOT FOUND in input-cache or parent folder. Please run _updatePublisher.  Aborting...
)

GOTO end


:publish_notx
SET txoption=-tx n/a

SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

:: Debugging statements before running publisher
ECHO 2jar_location is: %jar_location%
IF NOT "%jar_location%"=="not_found" (
	java %JAVA_OPTS% -jar "%jar_location%" -ig . %txoption% %*
) ELSE (
	ECHO IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
)

GOTO end




:publish_continuous

SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

:: Debugging statements before running publisher
ECHO Checking %input_cache_path% for publisher.jar
IF EXIST "%input_cache_path%\%publisher_jar%" (
	java %JAVA_OPTS% -jar "%input_cache_path%\%publisher_jar%" -ig . %txoption% -watch %*
) ELSE (
    ECHO Checking %upper_path% for publisher.jar
    IF EXIST "..\%publisher_jar%" (
	    java %JAVA_OPTS% -jar "..\%publisher_jar%" -ig . %txoption% -watch %*
    ) ELSE (
	    ECHO IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
    )
)

GOTO end


:end

:: Pausing at the end


IF NOT "%skipPrompts%"=="true" (
  PAUSE
)
