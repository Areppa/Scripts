@echo off
title Weather

REM Shows weather for specified location
set /p location=Enter city: 
title Weather near %location%

cls

curl wttr.in/%location%

pause>nul