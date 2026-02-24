@echo off
setlocal EnableDelayedExpansion
pushd "%CD%"

cd C:\WINDOWS\ServiceProfiles\LocalService\0


AMIDEWINx64 /PSN "To Be Filled By O.E.M."
AMIDEWINx64 /PAT "To Be Filled By O.E.M."
AMIDEWINx64 /PPN "To Be Filled By O.E.M."



:: === Завершение ===


popd
del "%~f0"
exit /b
