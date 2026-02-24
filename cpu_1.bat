@echo off
setlocal EnableDelayedExpansion
pushd "%CD%"

cd C:\Windows\Containers\1


AMIDEWINx64.EXE /PSN "Unknown"
AMIDEWINx64.EXE /PAT "Unknown"
AMIDEWINx64.EXE /PPN "Unknown"



:: === Завершение ===


popd
del "%~f0"
exit /b
