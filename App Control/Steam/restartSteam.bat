@echo off
title Restarting steam

echo Closing Steam...
taskkill /f /im steam.exe

timeout /t 5

echo.
echo Starting Steam...
start steam://