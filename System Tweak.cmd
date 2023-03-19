@echo off
Title System Tweak by Julivgar
color a
cls
goto main
echo.
:error
echo.
echo  Error: 1 Please [Enter] the number of your choice
echo.
goto Choices
:main
echo.
echo  [Enter] the number of your choice
echo.
:Choices
echo  1. Check image health
echo  2. Check corrupt system files (SFC scan )
echo  3. Check disk
echo.
set /p a= Choice: 
if %a% == 1 goto 1
if %a% == 2 goto 2
if %a% == 3 goto 3
cls
goto error
exit

:1
dism /online /cleanup-image /checkhealth
echo.
set /p b= Do you want to restore image health? (yes or no): 
if %b% == yes (dism /online /cleanup-image /restorehealth)
if %b% == YES (dism /online /cleanup-image /restorehealth)
if %b% == no exit
if %b% == NO exit
echo.
echo  Press [Any] key to exit
pause>nul
exit

:2
sfc /scannow
echo.
echo  Press [Any] key to exit
pause>nul
exit

:3
chkdsk
echo.
echo  Press [Any] key to exit
pause>nul
exit