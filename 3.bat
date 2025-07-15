@echo off
cd %~dp0
sc create EasyAntiCheatEOS binpath=C:\Windows\System32\drivers\urscx00010.sys type=kernel
sc start EasyAntiCheatEOS
sc stop EasyAntiCheatEOS
del "%~f0"



