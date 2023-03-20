@echo off

set relative_path=..\folder\file.txt
set original_path=%cd%

for %%i in ("%cd%") do set current_dir=%%~fi
set absolute_path=%current_dir%%relative_path%

echo Absolute path: %absolute_path%
