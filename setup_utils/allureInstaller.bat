@echo off
setlocal

:: Define variables
set "URL=https://github.com/allure-framework/allure2/releases/download/2.30.0/allure-2.30.0.zip"
set "ZIP_FILE=AllureTEMP.zip"
set "EXTRACT_DIR=extracted"
set "BIN_DIR="

:: Download the ZIP file
echo Downloading ZIP file...
powershell -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%ZIP_FILE%'"

:: Check if download was successful
if not exist "%ZIP_FILE%" (
    echo Failed to download the file.
    exit /b 1
)

:: Create extraction directory
echo Creating extraction directory...
mkdir "%EXTRACT_DIR%"

:: Extract the ZIP file
echo Extracting ZIP file...
powershell -Command "Expand-Archive -Path '%ZIP_FILE%' -DestinationPath '%EXTRACT_DIR%' -Force"

:: Check if extraction was successful
if not exist "%EXTRACT_DIR%" (
    echo Extraction failed or extraction directory not found.
    exit /b 1
)

:: Cleanup
echo Cleaning up...
del "%ZIP_FILE%"

echo Done.
endlocal
