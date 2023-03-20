@echo off
setlocal EnableDelayedExpansion

set CWD=%cd%
for /f "tokens=2,5 delims= " %%a in ('p4 clients --me') do (
	set ROOT=%%b
	@REM 统一路径分隔符, 以便于findstr中路径统一匹配
	set ROOT=!ROOT:/=\!
	echo !CWD! | findstr /i /c:"!ROOT!" > nul && (
		echo %%a
		exit /b 0
	)
)

exit /b 1
