@echo off
setlocal

set "ZIP_URL=https://www.peak-system.com/fileadmin/media/files/PCAN-Basic.zip"
set "ZIP_FILE=%~dp0PCAN-Basic.zip"
set "EXTRACT_DIR=%~dp0src\support"

echo Downloading %ZIP_URL%...
curl -o "%ZIP_FILE%" "%ZIP_URL%"
if %ERRORLEVEL% NEQ 0 (
	echo [91mError: Unable to download %ZIP_URL%.[0m
	exit /B 1
)

if not exist "%EXTRACT_DIR%" mkdir "%EXTRACT_DIR%"

echo Extracting to %EXTRACT_DIR%...
tar -xf "%ZIP_FILE%" -C "%EXTRACT_DIR%"
if %ERRORLEVEL% NEQ 0 (
	echo [91mError: Unable to extract %ZIP_FILE%.[0m
	exit /B 1
)

echo [92mSuccess[0m