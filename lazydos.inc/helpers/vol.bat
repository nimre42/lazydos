@set ldVolumeCmd=vol
@set ldLastWord=
@set ldVolName=
@set ldVolID=
@set count=0
@SETLOCAL ENABLEDELAYEDEXPANSION

@FOR /f "tokens=*" %%a IN ('call %ldVolumeCmd%') DO @(
	set /A count += 1
	set cab=%%a
	@for %%c in (%%a) do @(
		set ldLastWord=%%c
	)
	if !count! == 1 (
		set ldVolName=!ldLastWord!
	)
	if !count! == 2 (
		set ldVolID=!ldLastWord!
	)
)
@set ldVolName=%ldVolName:.=%

@if "%2" == "" (
	goto :echoldVolName
)
@if "%2" == "name" (
	goto :echoldVolName
)
:echoldVolName
@echo %ldVolName%
@goto :eofldVolBat


@if "%2" == "sn" (
	goto :echoldVolID
)
@if "%2" == "id" (
	goto :echoldVolID
)
:echoldVolID
echo %ldVolID%
@goto :eofldVolBat

@goto :eofldVolBat
:eofldVolBat