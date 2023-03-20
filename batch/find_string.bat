@echo off

set string=Hello world
set substring=world

echo %string% | findstr /i "%substring%" && (
  echo %string% contains %substring%
) || (
  echo %string% does not contain %substring%
)
