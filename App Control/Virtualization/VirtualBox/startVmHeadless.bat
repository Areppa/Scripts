@echo off
set "VM_NAME=WindowsServer"
set "VBOX_PATH=C:\Program Files\Oracle\VirtualBox"

rem Start the VM minimized
start /min "" "%VBOX_PATH%\VBoxManage.exe" startvm "%VM_NAME%" --type headless
