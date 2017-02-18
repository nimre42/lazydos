:: be careful - counting slower than the clock, in "show mode" more
:: check with logMode!
@echo off
:ldStart
	if "%logMode%" == "true" @echo %time%
	set ldWait=%1

:ldWaitMe
	if %ldWait% GTR 9999 goto :ldWaitoutOfRange
	if %ldWait% LSS 0 goto :ldWaitoutOfRange
	goto :waitStart

:ldWaitoutOfRange
	echo error - out of range
	goto :eofldWait


:waitStart
	if "%2" == "" (
		goto :ldWaitSecs
	)

	SETLOCAL ENABLEDELAYEDEXPANSION
	for /l %%a in (%ldWait%, -1, 1) do (
		set /a count=%%a
		cls
		echo wait: !count!s
		call :ldWaitOneSec
	)

	goto :eofldWait

:ldWaitSecs
	CHOICE /N /C YN /T %1 /D Y >NUL
	goto :eofldWait
:ldWaitOneSec
	CHOICE /N /C YN /T 1 /D Y >NUL

:eofldWait
	if "%logMode%" == "true" echo %time%
