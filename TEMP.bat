@echo off
set a=1
:loop
echo %a%
if %a%==20 goto rest
set /A a=1+%a%
goto loop
:rest
pause 