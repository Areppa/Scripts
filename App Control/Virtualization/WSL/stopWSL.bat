@echo off

echo Shutting down WSL machines
wsl --shutdown

REM This part can be removed if you don't need list of WSL machines and their states
timeout 3

echo Current states:
echo.
wsl --list --verbose

timeout 3