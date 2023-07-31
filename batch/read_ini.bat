@echo off
setlocal enabledelayedexpansion

set "INIFile=config.ini"

for /f "usebackq tokens=1,2 delims==" %%a in ("%INIFile%") do (
    set "section=%%a"
    set "keyvalue=%%b"
    call :process_section_key !section! !keyvalue!
)

exit /b

:process_section_key
if "%~1" == "" exit /b

if "%~1" == "[General]" (
    echo Section [General]
) else (
    echo   Key: %~1
    echo   Value: %~2
)

exit /b