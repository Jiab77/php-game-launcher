@echo off
cls
set php=C:\wamp\bin\php\php5.5.12\php.exe
:: set php=C:\server\bin\php\php.exe
:: Return
%php% -f %*
echo. & echo Press any key to exit... & pause>NUL
:: Leaving without closing the window
