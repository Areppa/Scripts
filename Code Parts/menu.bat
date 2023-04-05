@echo off
title Menu
cls

:menu
set M==0
cls
title MENU

echo MENU
echo.
echo ----------------------------------------
echo.
echo 1. Start
echo 2. Info
echo 3. Settings
echo 4. Exit
echo.
echo ----------------------------------------
echo.

SET /P M=Type number and press ENTER : 
IF %M%==1 GOTO start
IF %M%==2 GOTO info
IF %M%==3 GOTO set
IF %M%==4 GOTO exit

goto menu


:Start
cls
echo Start

pause>nul
goto menu

:info
cls
echo Info

pause>nul
goto menu

:set
cls
echo Settings

pause>nul
goto menu

:exit
cls
exit

