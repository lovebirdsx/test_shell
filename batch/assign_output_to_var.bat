@echo off
setlocal EnableDelayedExpansion

for /f %%i in ('get_p4_client') do (set CMD_OUTPUT=%%i)

if "%CMD_OUTPUT%"=="" (
  echo No client found
) else (
  echo Client found: %CMD_OUTPUT%
)
