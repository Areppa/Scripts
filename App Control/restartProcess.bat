@echo off
title Restarting process

rem This will shutdown the process and might result in problems or dataloss (working files if those are not saved)!

set process="notepad.exe"
set time=10

taskkill /f /im %process%

echo waiting %time% seconds and starting %process% again.
timeout %time%

rem You may need to include full path to process here!
start "" %process%