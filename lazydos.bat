::nimre42
@set ldDir=%~dp0
@set ldBaseDir=%ldDir%lazydos.inc\
@set ldRouter=%ldBaseDir%routing.bat

@if not exist %ldBaseDir% (
	echo the lazydos directory not exists!
	pause
	goto :lazydosBatEnd
)
@if not exist %ldRouter% (
	echo the lazydos router not exists!
	pause
	goto :lazydosBatEnd
)
@%ldRouter% %*


:lazydosBatEnd
exit /b