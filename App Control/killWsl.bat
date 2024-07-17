@echo off

echo Shutting down WSL machines
wsl --shutdown

echo Current states:
echo.
wsl --list --verbose

timeout 5