@echo off
:: Made by Jon
:: Based on the idea of Ivan Ferrer
:: https://php.net/manual/fr/features.commandline.webserver.php#112667

:: PHP Install
set php=C:\wamp\bin\php\php5.5.12\php.exe
:: set php=C:\server\bin\php\php.exe
set file=%~1
set dir=%~dp1
set name=%~nx1
set interface=localhost
set port=8888
set uri=%interface%:%port%

:: Open the thing first otherwise it won't load
explorer http://%uri%

:: Checking if arg is a file or a dir
if exist "%~1\" (
	REM I'm a directory
	title Running PHP Server in %dir%...
	%php% -S %uri% -t "%dir%"
) else (
	REM I'm a file
	title Running PHP Server on %name% from %dir%...
	%php% -S %uri% "%file%"
)