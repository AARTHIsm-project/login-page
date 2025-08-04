@echo off
echo Starting deployment...
REM Simulate deploy (example)
mkdir C:\DeployedLoginPage
xcopy /Y /E /I "src" "C:\DeployedLoginPage"
echo  Deployed!
