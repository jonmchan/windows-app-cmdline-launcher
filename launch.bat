@echo off & setlocal

rem simple script to set ExecutionPolicy to run powershell script

set batchPath=%~dp0
powershell.exe -ExecutionPolicy Bypass -noexit -file "%batchPath%launch.ps1" %*