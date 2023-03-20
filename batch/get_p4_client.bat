@echo off
setlocal EnableDelayedExpansion

set CWD=%cd%
set P4_CLIENT=

for /f "tokens=2,5 delims= " %%a in ('p4 clients --me') do (
	echo !CWD! | findstr /i /c:"%%b" > nul && (
		echo %%a
		exit /b 0
	)
)

exit /b 1
