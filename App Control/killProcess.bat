@echo off
title Kill application

REM This will shutdown the process and might result in problems or dataloss (working files if those are not saved)!

taskkill /f /im firefox.exe