@echo off
git config user.email "liviu+zazalt+github.com@sindla.com"
git config user.name "Zazalt"
mode con:cols=180
@echo off
echo. && @echo - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

echo. && CALL:ECHORED "$ git pull origin master" && echo.
git pull origin master

echo. && @echo - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

echo. && CALL:ECHORED "$ git status" && echo.
git status

echo. && @echo - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

echo. && CALL:ECHORED "$ git add --all" && echo.
git add --all

echo. && @echo - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

echo. && CALL:ECHORED "$ git commit -m ..." && echo.
git commit -m "The cake is a lie."

echo. && @echo - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

echo. && CALL:ECHORED "$ git push origin master" && echo.
git push origin master

echo. && @echo - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof