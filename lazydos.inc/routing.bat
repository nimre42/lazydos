
@if not defined ldBaseDir (
	set ldBaseDir=%~dp0
)
:ldRouterWait
@if "%1%" == "wait" (
	%ldBaseDir%helpers\wait.bat %2
)
:ldRouterCharset
@if "%1%" == "charset" (
	%ldBaseDir%helpers\charset.bat %2
)
:ldRouterDatetime
@if "%1%" == "datetime" (
	%ldBaseDir%helpers\datetime.bat %2
)
:ldRouterShutdown
@if "%1%" == "shutdown" (
	%ldBaseDir%helpers\shutdown.bat %*
)
:ldRouterReboot
@if "%1%" == "reboot" (
	%ldBaseDir%helpers\shutdown.bat %*
)
:ldRouterReboot
@if "%1%" == "vol" (
	%ldBaseDir%helpers\vol.bat %*
)