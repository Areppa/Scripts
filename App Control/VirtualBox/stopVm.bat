@echo off
set "VM_NAME=WindowsServer"
set "VBOX_PATH=C:\Program Files\Oracle\VirtualBox"

rem Shut down the VM
"%VBOX_PATH%\VBoxManage.exe" controlvm "%VM_NAME%" poweroff
