@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set ldStrWhat=%1
set len=0

if [%ldStrWhat%]==[] (
	goto :eoStrLen
)

:startLoop
set /a len+=1
if not [!ldStrWhat:~%len%!]==[] (
	goto :startLoop
)

:eoStrLen
echo | set /p=%len%
