@set shutdownVars=
@set shutdownVarsCount=0

@if "%1"=="shutdown" (
	set shutdownVars=%shutdownVars% -s
	set /A shutdownVarsCount += 1
)
@if "%1"=="reboot" (
	set shutdownVars=%shutdownVars% -r
	set /A shutdownVarsCount += 1
)

@if "%2"=="force" (
	set shutdownVars=%shutdownVars% -f
	set /A shutdownVarsCount += 1
)
@if "%3"=="force" (
	set shutdownVars=%shutdownVars% -f
	set /A shutdownVarsCount += 1
)

@if "%2"=="now" (
	set shutdownVars=%shutdownVars% -t 00
	set /A shutdownVarsCount += 1
)
@if "%3"=="now" (
	set shutdownVars=%shutdownVars% -t 00
	set /A shutdownVarsCount += 1
)

shutdown %shutdownVars%