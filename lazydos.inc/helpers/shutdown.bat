@set shutdownVars=
@SETLOCAL ENABLEDELAYEDEXPANSION
@for %%x in (%*) do @(
	@call :%%x 2>nul || call :other %%x
)
@goto :ldShutdownCmd

:shutdown
	@set shutdownVars=%shutdownVars% -s
	@goto :end
:reboot
	@set shutdownVars=%shutdownVars% -r
	@goto :end
:force
	@set shutdownVars=%shutdownVars% -f
	@goto :end
:now
	@set shutdownVars=%shutdownVars% -t 00
	@goto :end
:: not defined - other options
:other
	@set shutdownVars=%shutdownVars% %1
	@goto :end

:ldShutdownCmd
shutdown %shutdownVars%
:end