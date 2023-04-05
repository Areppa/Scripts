@echo off
title Folder Sync

echo This script will sync folder and all of its files to new location
echo If destination folder contains files that are not in source folder they will be deleted!
echo.
set /p source=Source location: 
set /p destination=Destination location: 
echo.

Robocopy "%source%" "%destination%" /MIR /FFT /Z /XA:H /W:5

pause>nul