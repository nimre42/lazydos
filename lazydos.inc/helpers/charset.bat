@if not defined ldDefaultConsoleCharacterCode (
	set ldDefaultConsoleCharacterCode=852
)
@if not defined ldDefaultFileCharacterCode (
	set ldDefaultFileCharacterCode=65001
)

@if "%1%" == "console" (
	echo %1%
	chcp %ldDefaultConsoleCharacterCode%
	goto :ldcharsetend
)
@if "%1%" == "file" (
	echo %1%
	chcp %ldDefaultFileCharacterCode%
	goto :ldcharsetend
)



@if "%1%" == "us" (
	echo %1%
	chcp 437
	goto :ldcharsetend
)
@if "%1%" == "latin1" (
	echo %1%
	chcp 850
	goto :ldcharsetend
)
@if "%1%" == "latin2" (
	echo %1%
	chcp 852
	goto :ldcharsetend
)
@if "%1%" == "cyrill" (
	echo %1%
	chcp 855
	goto :ldcharsetend
)
@if "%1%" == "turkish" (
	echo %1%
	chcp 857
	goto :ldcharsetend
)
@if "%1%" == "portugese" (
	echo %1%
	chcp 860
	goto :ldcharsetend
)
@if "%1%" == "iceland" (
	echo %1%
	chcp 861
	goto :ldcharsetend
)
@if "%1%" == "can-fr" (
	echo %1%
	chcp 863
	goto :ldcharsetend
)
@if "%1%" == "nordic" (
	echo %1%
	chcp 865
	goto :ldcharsetend
)
@if "%1%" == "russian" (
	echo %1%
	chcp 866
	goto :ldcharsetend
)
@if "%1%" == "greek" (
	echo %1%
	chcp 869
	goto :ldcharsetend
)
@if "%1%" == "w-eu-latin" (
	echo %1%
	chcp 1252
	goto :ldcharsetend
)
@if "%1%" == "utf7" (
	echo %1%
	chcp 65000
	goto :ldcharsetend
)
@if "%1%" == "utf8" (
	echo %1%
	chcp 65001
	goto :ldcharsetend
)

:ldcharsetend