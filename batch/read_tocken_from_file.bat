@echo off
set filename=lines.txt

for /f "tokens=2 delims= " %%a in (%filename%) do (
    echo %%a
)