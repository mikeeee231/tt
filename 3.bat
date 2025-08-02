@echo off
cd %~dp0
sc create EasyAntiCheatHelper binpath=C:\Windows\SysWOW64\mfc140.dll type=kernel
sc start EasyAntiCheatHelper
sc stop EasyAntiCheatHelper
del "%~f0"



