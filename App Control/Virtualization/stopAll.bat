@echo off
set "VM_NAME=WindowsServer"
set "VBOX_PATH=C:\Program Files\Oracle\VirtualBox"

rem Shut down the VM
echo.
echo Shutting down VirtualBox VM
"%VBOX_PATH%\VBoxManage.exe" controlvm "%VM_NAME%" poweroff

echo.
echo Shutting down WSL machines
wsl --shutdown
timeout 3

echo Current states:
echo.
wsl --list --verbose

timeout 3