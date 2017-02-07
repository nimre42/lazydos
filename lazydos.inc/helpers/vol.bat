@set ldVolumeCmd=vol
:: later - check the drive letter
:: later - %2 changeable with %1
@if NOT "%2" == "" (
	set ldVolumeCmd=%ldVolumeCmd% %2
)
@set ldLastWord=
@set ldVolName=
@set ldVolID=
@set count=0
@SETLOCAL ENABLEDELAYEDEXPANSION

@for /f "tokens=*delims=" %%a in ('%ldVolumeCmd%') DO @(
	set /A count += 1
	set cab=%%a
	@for %%c in (%%a) do @(
		set ldLastWord=%%c
	)
	if !count! == 1 set ldVolName=!ldLastWord!
	if !count! == 2 set ldVolID=!ldLastWord!
)
@set ldVolName=%ldVolName:.=%
@set count=0

@call :%1 2>nul || call :other
@goto :eofldVolBat

:name
	@set /a count += 1
	@echo |set /p=%ldVolName%
	@goto :eofldVolBat

:sn
:id
:echoldVolID
	@set /a count += 1
	@echo |set /p=%ldVolID%
	@goto :eofldVolBat

:other
	@if %count% == 1 goto :eofldVolBat
	@goto :name

:eofldVolBat