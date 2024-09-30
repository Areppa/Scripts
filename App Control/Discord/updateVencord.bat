@echo off
setlocal
cd /d %~dp0
title Updating Vencord...

REM THIS SCRIPT WILL RUN RUN THIS SCRIPT AUTOMATICALLY!!! PLEASE MAKE SURE THAT YOU CAN TRUST THE SOURCE OF VencordInstaller SCRIPT BEFORE RUNNING THIS SCRIPT!!!
REM This script will download the latest Vencord CLI installer and install Vencord and OpenAsar.

set VENCORD_INSTALLER_URL=https://github.com/Vencord/Installer/releases/latest/download/VencordInstallerCli.exe

echo Downloading Vencord CLI installer...
curl -L -O "%VENCORD_INSTALLER_URL%" 
echo.

echo Closing Discord...
taskkill /f /im Discord.exe
echo.

echo Installing Vencord
VencordInstallerCli.exe -install -branch stable
echo.

echo Installing OpenAsar
VencordInstallerCli.exe -install-openasar -branch stable
echo.

echo Deleting Vencord CLI installer...
del /F /Q VencordInstallerCli.exe

echo Starting Discord...
cd /d "%LOCALAPPDATA%\discord"
start Update.exe --processStart Discord.exe