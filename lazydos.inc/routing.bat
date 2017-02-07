@if not defined ldBaseDir (
	set ldBaseDir=%~dp0
)
@goto :%1
:wait
@%ldBaseDir%helpers\wait.bat %2 %3
:charset
@%ldBaseDir%helpers\charset.bat %2
:datetime
@%ldBaseDir%helpers\datetime.bat %2
:shutdown
@%ldBaseDir%helpers\shutdown.bat %*
:reboot
@%ldBaseDir%helpers\shutdown.bat %*
:vol
@%ldBaseDir%helpers\vol.bat %2 %3


:ldrouterend