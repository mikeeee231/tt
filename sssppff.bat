@echo off
cd %~dp0
sc create winhelper10 binpath=C:\winhelper.sys type=kernel
sc start winhelper10

