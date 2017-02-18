@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
:addSets
	set maxPosNumber=2147483647
	set number1=%1
	set number2=%2
	set final=
:addOtherSets
	set carrier=0

	if "%number1%"=="0" (
		set final=%number2%
		goto :endCalc
	)
:addLast
	if "%number1%"=="" (
		set n1l=
		goto :n2l
	)
	set n1l=!number1:~-1!
	:n2l
	if "%number2%"=="" (
		set n2l=
		goto :afterSet
	)
	set n2l=!number2:~-1!
	set number1=!number1:~0,-1!
	set number2=!number2:~0,-1!
:afterSet
	set /a counter=0
	set /a c=0

	if "%n1l%"=="" (
		set n1l=0
		set /a counter+=1
	)
	if "%n2l%"=="" (
		set n2l=0
		set /a counter+=1
	)
	if "%counter%"=="2" (
		goto :chechCarrier
	)
	set /a c=%n1l%+%n2l%+%carrier%
	set carrier=0

	if not %c% LSS 10 (
		set /a c=%c%-10
		set /a carrier=1+0
	)

	set final=%c%%final%
	goto :addLast

:chechCarrier
	if %carrier%==1 (
		set final=%carrier%%final%
	)
	
:endCalc
	@echo |set /p=%final%
