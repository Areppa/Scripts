@echo off
color a
title Set priority

wmic process where name="firefox.exe" CALL setpriority "above normal"

rem Sets the cpu priority for the specified application
rem Process values are described below

rem idle: 64 (or "idle")
rem below normal: 16384 (or "below normal")
rem normal: 32 (or "normal")
rem above normal: 32768 (or "above normal")
rem high priority: 128 (or "high priority")
rem real time: 256 (or "realtime")
