@echo off
setlocal ENABLEDELAYEDEXPANSION
set ldStrWhat=%2
call :%1 %* 2>nul || call :other
goto :other

:contain
:search
:findinstr
	set ldStrSearch=%3
	call set ldWhere2=%%ldStrWhat:%ldStrSearch%=%%
	if not "%ldWhere2%"=="%ldStrWhat%" (
		echo | set /p=true
	) else (
		echo | set /p=false
	)
	goto :other
:remove
	set ldStrRemovable=%3
	echo | set /p=%%ldStrWhat:%ldStrRemovable%=%%
	goto :other





:other
