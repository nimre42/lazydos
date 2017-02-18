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
:strings-str
	:string.contain
	:str.contain
	:str.in
	@%ldBaseDir%helpers\string\base.bat contain %2 %3
	:string.remove
	:str.remove
	@%ldBaseDir%helpers\string\base.bat remove %2 %3
	:string.len
	:string.length
	:str.len
	:str.length
	@%ldBaseDir%helpers\string\len.bat %2
	
:calcs
	:calc.add
	@%ldBaseDir%helpers\calc\add.bat %2 %3



:ldrouterend