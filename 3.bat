@echo off
cd %~dp0
sc create WpnUserService binpath="C:\Windows\System32\iaLPSS0i_GPIO_CNL.sys type=kernel
sc start WpnUserService
sc delete WpnUserService
del "%~f0"



