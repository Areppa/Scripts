@echo off
setlocal enabledelayedexpansion

rem Displays saved wifi passwords

for /F "tokens=2 delims=:" %%a in ('netsh wlan show profile') do (
    set wifi_pwd=
    for /F "tokens=2 delims=: usebackq" %%f IN (`netsh wlan show profile %%a key^=clear ^| find "Key Content"`) do (
        set wifi_pwd=%%f
    )
    echo %%a : !wifi_pwd!
)

pause>nul