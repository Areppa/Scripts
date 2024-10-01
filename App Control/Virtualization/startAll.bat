@echo off
title Starting VM and WSL
set "VM_NAME=WindowsServer"
set "VBOX_PATH=C:\Program Files\Oracle\VirtualBox"

echo Starting %VM_NAME%
rem Start the VM minimized
start /min "" "%VBOX_PATH%\VBoxManage.exe" startvm "%VM_NAME%" --type headless

echo.
echo Starting WSL
wsl start