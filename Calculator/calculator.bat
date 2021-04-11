@echo off
color
title Calculator
::tell the user to set color
echo -=====================================================================-
echo Welcome to The Calculator.
echo Please set your color.
echo -=====================================================================-
pause
cls
:: goes to the "Texts" directory
cd Texts
::shows the user color options
type colorlist.txt
set /p color=
pause
::changes the color
color %color%
cls
:: goes back to parent directory
cd ..
::starts the calculator
:top
echo -=====================================================================-
echo Please type in your sum. Use + for addition and - for subtraction.
echo You can use the star (*) for multiplication and slash (/) for division.
echo -=====================================================================-
set /p sum=
set /a ans=%sum%
echo Your answer is %ans%
pause
cls
echo Previous Answer: %ans%
goto top
pause
exit