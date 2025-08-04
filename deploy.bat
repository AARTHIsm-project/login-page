@echo off
echo  Starting deployment...

REM Target folder for deployment (you can customize this)
set TARGET=C:\DeployedLoginPage

REM Create the target folder if it doesn’t exist
if not exist "%TARGET%" (
    mkdir "%TARGET%"
)

REM Copy HTML, CSS, and images folder
echo  Copying files to %TARGET%...
xcopy /Y /I "index.html" "%TARGET%"
xcopy /Y /I "style.css" "%TARGET%"
xcopy /Y /E /I "images" "%TARGET%\images"

echo  Deployment complete at %TARGET%
exit /b 0
