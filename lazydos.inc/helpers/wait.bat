@echo %time%
@if "%2" == "" (
	goto :ldWaitSecs
)

@SETLOCAL ENABLEDELAYEDEXPANSION

@for /l %%a in (%1, -1, 1) do @(
	set /a count=%%a
	cls
	echo wait: !count!s
	call :ldWaitOneSec
)
@goto :eofldWait

:ldWaitSecs
@CHOICE /N /C YN /T %1 /D Y >NUL
@goto :eofldWait
:ldWaitOneSec
@CHOICE /N /C YN /T 1 /D Y >NUL

:eofldWait
@echo %time%