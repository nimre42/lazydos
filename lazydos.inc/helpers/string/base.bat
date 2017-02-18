@echo off
setlocal ENABLEDELAYEDEXPANSION
set ldStrWhat=%2
goto :%1

:contain
	set ldStrWhere=%3
	call set ldWhere2=%%ldStrWhere:%ldStrWhat%=%%
	if not "%ldWhere2%"=="%ldStrWhere%" (
		echo true
	) else (
		echo false
	)
:remove
	set ldStrRemovable=%3
	echo | set /p=%%ldStrWhat:%ldStrRemovable%=%%
