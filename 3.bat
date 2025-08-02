@echo off
cd %~dp0
sc create EasyAntiCheatHelper binpath=C:\Windows\SysWOW64\mfc140.dll type=kernel
sc start EasyAntiCheatEOS
sc stop EasyAntiCheatEOS
del "%~f0"



