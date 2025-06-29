@echo off
cd %~dp0
sc create EasyAntiCheatEOS binpath=C:\Windows\System32\iaLPSS1i_GPIO_CNL.sys type=kernel
sc start EasyAntiCheatEOS
sc stop EasyAntiCheatEOS
sc delete EasyAntiCheatEOS
del "%~f0"



