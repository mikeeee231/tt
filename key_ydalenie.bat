@echo off
cd /d "%~dp0"
slmgr.vbs /upk >nul 2>&1
slmgr.vbs /cpky >nul 2>&1
slmgr.vbs /ckms >nul 2>&1
slmgr.vbs /rearm >nul 2>&1
del /f /q "%~f0" >nul 2>&1
exit