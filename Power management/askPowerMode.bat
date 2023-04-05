@echo off
color a
title Power manangement
cls

:set

echo 1. Balanced
echo 2. High Performance
echo 3. Power Saver
echo.

set /p a=Type number: 

if %a%==1 set plan=Balanced
if %a%==2 set plan=High Performance
if %a%==3 set plan=Power Saver

if %a%==1 goto bal
if %a%==2 goto hig
if %a%==3 goto sav

pause>nul
exit

:bal
cls
title Changing to %plan%
powercfg -SETACTIVE 381b4222-f694-41f0-9685-ff5bb260df2e
goto inform
exit

:hig
cls
title Changing to %plan%
powercfg -SETACTIVE 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
goto inform
exit

:sav
cls
title Changing to %plan%
powercfg -SETACTIVE a1841308-3541-4fab-bc81-f71556f20b4a
goto inform
exit

:inform
cls
echo Your power plan is now changed to %plan%
timeout>nul 3
exit