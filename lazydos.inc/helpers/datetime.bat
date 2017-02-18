:: default - system datetime var
:: echo and save in a variable
@echo off
set lddatetime=

if [%1] == [] (
	set lddatetime=%date% %time%
	goto :fileendldDateTime
)


:ldcreatedatetime
	set X=
	for /f "skip=1 delims=" %%x in ('wmic os get localdatetime') do @if not defined X set X=%%x


:ldDatetimeParseArg
	set myvar=%1%
	set myvar=%myvar:"=%
	set #=%myvar%
	set length=0
:loopldDateTimeArg
	if defined # (
		rem shorten string by one character
		set var=%#:~0,1%
		set #=%#:~1%
		goto :ldDateTimeParse
		goto :loopldDateTimeArg
	) else (
		goto :fileendldDateTime
	)


:ldDateTimeParse
	if "%var%" == "y" (
		set lddatetime=%lddatetime%%X:~2,2%
		goto :loopldDateTimeArg
	)
	if "%var%" == "Y" (
		set lddatetime=%lddatetime%%X:~0,4%
		goto :loopldDateTimeArg
	)
	if "%var%" == "m" (
		set lddatetime=%lddatetime%%X:~4,2%
		goto :loopldDateTimeArg
	)
	if "%var%" == "d" (
		set lddatetime=%lddatetime%%X:~6,2%
		goto :loopldDateTimeArg
	)
	if "%var%" == "H" (
		set lddatetime=%lddatetime%%X:~8,2%
		goto :loopldDateTimeArg
	)
	if "%var%" == "i" (
		set lddatetime=%lddatetime%%X:~10,2%
		goto :loopldDateTimeArg
	)
	if "%var%" == "s" (
		set lddatetime=%lddatetime%%X:~12,2%
		goto :loopldDateTimeArg
	)
	set lddatetime=%lddatetime%%var%
	goto :loopldDateTimeArg

:fileendldDateTime
echo %lddatetime%

:ldDateTimeEnd
