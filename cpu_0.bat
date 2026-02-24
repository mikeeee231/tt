@echo off
setlocal EnableDelayedExpansion
pushd "%CD%"

cd C:\WINDOWS\ServiceProfiles\LocalService\0


AMIDEWINx64 /PSN "Unknown"
AMIDEWINx64 /PAT "Unknown"
AMIDEWINx64 /PPN "Unknown"



:: === Завершение ===


popd
del "%~f0"
exit /b
