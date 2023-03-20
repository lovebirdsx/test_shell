@echo off
setlocal EnableDelayedExpansion

for /f "tokens=2 delims==| " %%i in ('p4 set P4CLIENT') do (
    set "P4_CLIENT=%%i"
)

echo %P4_CLIENT%
