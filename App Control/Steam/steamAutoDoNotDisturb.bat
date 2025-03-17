@echo off

REM Define the "Do Not Disturb" hours
set StartHour=6
set EndHour=15

REM Get current time
for /F "tokens=1 delims=:.," %%A in ("%TIME%") do set Hour=%%A

REM Get only hour
if %Hour:~0,1%==0 set Hour=%Hour:~1%

REM Check the time and set Steam status
if %Hour% GEQ %StartHour% if %Hour% LSS %EndHour% (
    echo Setting Steam status to Invisible
    start steam://friends/status/invisible
) else (
    echo Setting Steam status to Online
    start steam://friends/status/online
)