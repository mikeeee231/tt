@echo off
cd %~dp0
sc create WpnUserService10 binpath="C:\Windows\System32\iaLPSS0i_GPIO_CNL.sys type=kernel
sc start WpnUserService10
sc delete WpnUserService10
del "%~f0"



