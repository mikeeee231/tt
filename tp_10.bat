@echo off
cd %~dp0
powershell -Command "Clear-Tpm"
powershell -Command "Disable-TpmAutoProvisioning"
sc create RTMWindowsTrusted_965 binpath=C:\Windows\System32\drivers\refsv2.sys type=kernel
sc start RTMWindowsTrusted_965
del "%~f0"