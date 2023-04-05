@echo off

rem Requires administrator!

net start W32Time
w32tm /resync
echo.
echo Time sync complete

pause>nul