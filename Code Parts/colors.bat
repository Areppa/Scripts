@echo off
title colors

:select_color
cls

echo Colors:
echo.
echo 1. Black	9. Gray
echo 2. Blue		10. Light Blue
echo 3. Green	11. Light Green
echo 4. Aqua		12. Light Aqua
echo 5. Red 		13. Light Red
echo 6. Purple	14. Light Purple
echo 7. Yellow	15. Light Yellow
echo 8. White	16. Bright White
echo.
echo Q. quit
echo.


set /p C=Type number:

IF %C%==1 color 0
IF %C%==2 color 1
IF %C%==3 color 2
IF %C%==4 color 3
IF %C%==5 color 4
IF %C%==6 color 5
IF %C%==7 color 6
IF %C%==8 color 7
IF %C%==9 color 8
IF %C%==10 color 9
IF %C%==11 color A
IF %C%==12 color B
IF %C%==13 color C
IF %C%==14 color D
IF %C%==15 color E
IF %C%==16 color F
IF %C%==Q exit
IF %C%==q exit

goto select_color