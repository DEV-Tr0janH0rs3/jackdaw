@echo off
goto b
:b 
cls
color 0f
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
goto c

:c
cls
color 0f
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

goto Beginoffile

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof

:Beginoffile
IF EXIST jckd\jackdw.dg goto accountreg
IF NOT EXIST jckd\jackdw.dg goto Setup

:SAFE
mode con: cols=70 lines=18
color 0f
echo Jackdaw
echo Checking Files...
ping -n 3 127.0.0.1>nul
echo Missing files!
echo Please wait...
ping -n 2 127.0.0.1>nul
echo 01010101>jckd\jackdw.dg
ping -n 2 127.0.0.1>nul
echo jackdw.dg OK
ping -n 2 127.0.0.1>nul
echo chckmem.dlb OK
ping -n 2 127.0.0.1>nul
echo Main OK
ping -n 2 127.0.0.1>nul
goto Beginoffile

:SETUP
mode con: cols=70 lines=18
cls
color 1f
echo Jackdaw Setup
echo =======================
echo.
echo.
echo Welcome to Setup.
echo This Setup is installing Jackdaw on your PC.
echo. 
echo.
echo.
echo [=] To set up Jackdaw now, press ENTER.
echo.
echo [=] To exit Setup without installing Jackdaw hold CTRL + C. 
echo.
echo.
echo.
echo.
call :ColorText 70 "ENTER=CONTINUE"
call :ColorText 77 "-------------------------------------------------------"
pause>nul
goto setup2
:setup2
echo Jackdaw Setup
echo =======================
echo.
echo.
echo Please wait while Setup install Jackdaw.
echo.
echo [=] To quit Setup hold CTRL + C.
echo.
echo ===================================
echo I Setup is making files...        I
echo I  _____________________________  I
echo I [             0%               ] I
echo I  `````````````````````````````  I
echo ===================================
echo.
echo.
echo.
call :ColorText 70 "CTRL+C=QUIT"
call :ColorText 77 "----------------------------------------------------------"
ping -n 2 127.0.0.1>nul
cls
echo Jackdaw Setup
echo =======================
echo.
echo.
echo Please wait while Setup install Jackdaw.
echo.
echo [=] To quit Setup hold CTRL + C.
echo.
echo ===================================
echo I Setup is making files...        I
echo I  _____________________________  I
echo I [             20               ] I
echo I  `````````````````````````````  I
echo ===================================
echo.
echo.
echo.
call :ColorText 70 "CTRL+C=QUIT"
call :ColorText 77 "----------------------------------------------------------"
ping -n 2 127.0.0.1>nul
cls
echo Jackdaw Setup
echo =======================
echo.
echo.
echo Please wait while Setup install Jackdaw.
echo.
echo [=] To quit Setup hold CTRL + C.
echo.
echo ===================================
echo I Setup is making files...        I
echo I  _____________________________  I
echo I [             50               ] I
echo I  `````````````````````````````  I
echo ===================================
echo.
echo.
echo.
call :ColorText 70 "CTRL+C=QUIT"
call :ColorText 77 "----------------------------------------------------------"
ping -n 2 127.0.0.1>nul
cls
echo Jackdaw Setup
echo =======================
echo.
echo.
echo Please wait while Setup install Jackdaw.
echo.
echo [=] To quit Setup hold CTRL + C.
echo.
echo ===================================
echo I Setup is making files...        I
echo I  _____________________________  I
echo I [             65               ] I
echo I  `````````````````````````````  I
echo ===================================
echo.
echo.
echo.
call :ColorText 70 "CTRL+C=QUIT"
call :ColorText 77 "----------------------------------------------------------"
ping -n 4 127.0.0.1>nul
cls
echo Jackdaw Setup
echo =======================
echo.
echo.
echo Please wait while Setup install Jackdaw.
echo.
echo [=] To quit Setup hold CTRL + C.
echo.
echo ===================================
echo I Setup is making files...        I
echo I  _____________________________  I
echo I [             80               ] I
echo I  `````````````````````````````  I
echo ===================================
echo.
echo.
echo.
call :ColorText 70 "CTRL+C=QUIT"
call :ColorText 77 "----------------------------------------------------------"
ping -n 1 127.0.0.1>nul
cls
echo Jackdaw Setup
echo =======================
echo.
echo.
echo Please wait while Setup install Jackdaw.
echo.
echo [=] To quit Setup hold CTRL + C.
echo.
echo ===================================
echo I Setup is making files...        I
echo I  _____________________________  I
echo I [             95               ] I
echo I  `````````````````````````````  I
echo ===================================
echo.
echo.
echo.
call :ColorText 70 "CTRL+C=QUIT"
call :ColorText 77 "----------------------------------------------------------"
ping -n 3 127.0.0.1>nul
cls
echo Jackdaw Setup
echo =======================
echo.
echo.
echo Please wait while Setup install Jackdaw.
echo.
echo [=] To quit Setup hold CTRL + C.
echo.
echo.
echo.
echo Please wait...
mkdir jckd
mkdir Main
echo 01010101>jckd\jackdw.dg
echo OK>jckd\chckmem.dlb
echo.
echo.
echo.
echo.
echo.
echo.
call :ColorText 70 "CTRL+C=QUIT"
call :ColorText 77 "----------------------------------------------------------"
ping 127.0.0.1>nul
goto setup3
:setup3
cls
echo RESTARTING...
ping -n 3 127.0.0.1>nul
goto setup4
:setup4
cls
color 40
ping -n 2 127.0.0.1>nul
color 20
ping -n 2 127.0.0.1>nul
color 10
ping -n 2 127.0.0.1>nul
color 0f
ping -n 2 127.0.0.1>nul
goto accountreg
:accountreg
IF EXIST jckd\acc.dlb goto logon
IF NOT EXIST jckd\acc.dlb goto reg
:reg
cls
mode con: cols=90 lines=20
color e0
call :ColorText e1 "Registration"
echo.
echo ===========
echo.
echo You don't have an account.
echo Register a new account to continue using Jackdaw.
echo.
echo Username:
set /p name=
echo Password:
set /p password=
goto autosave
:autosave
(
echo %name%
echo %password%
)> jckd\acc.dlb
goto logon1
:autosave2
(
echo %name%
echo %password%
)> jckd\acc.dlb
echo Password sucessfully changed.
goto terminal3
:logon
mode con: cols=70 lines=18
color e0
(
set /p name=
set /p password=
)< jckd\acc.dlb
echo Welcome %name%!
echo Please enter your password:
set /p pass=
if %pass%==%password% goto terminal
goto wrlogon
:wrlogon
mode con: cols=70 lines=18
color e0
(
set /p name=
set /p password=
)< jckd\acc.dlb
echo Welcome %name%!
call :ColorText e4 "Wrong Password"
echo.
echo Please enter your password:
set /p pass=
if %pass%==%password% goto terminal
goto wrlogon
:logon1
mode con: cols=70 lines=18
color e0
(
set /p name=
set /p password=
)< jckd\acc.dlb
echo Welcome %name%!
echo Please enter your password:
set /p pass=
if %pass%==%password% goto setup5
goto wrlogon1
:wrlogon1
mode con: cols=70 lines=18
color e0
(
set /p name=
set /p password=
)< jckd\acc.dlb
echo Welcome %name%!
call :ColorText e4 "Wrong Password"
echo.
echo Please enter your password:
set /p pass=
if %pass%==%password% goto setup5
goto wrlogon1
:setup5
color 0f
cls
echo Select a color for the background!
call :ColorText 44 " _"
call :ColorText 00 "_"
call :ColorText ee " _"
call :ColorText 00 "_"
call :ColorText 99 " _"
call :ColorText 00 "_"
call :ColorText 22 " _"
call :ColorText 00 "_"
call :ColorText 55 " _"
call :ColorText 00 "_"
call :ColorText 88 " _"
echo.
echo 1  2  3  4  5  6
set /p m3nu=
if %m3nu%==1 goto colorsave1
if %m3nu%==2 goto colorsave2
if %m3nu%==3 goto colorsave3
if %m3nu%==4 goto colorsave4
if %m3nu%==5 goto colorsave5
if %m3nu%==6 goto colorsave6
:colorsave1
(
echo 4f
)> jckd\dskclr.dlb
goto terminal
:colorsave2
(
echo e0
)> jckd\dskclr.dlb
goto terminal
:colorsave3
(
echo 9f
)> jckd\dskclr.dlb
goto terminal
:colorsave4
(
echo 2f
)> jckd\dskclr.dlb
goto terminal
:colorsave5
(
echo 5f
)> jckd\dskclr.dlb
goto terminal
:colorsave6
(
echo 8f
)> jckd\dskclr.dlb
goto terminal

:theme
color 0f
cls
echo Select a color for the background!
call :ColorText 44 " _"
call :ColorText 00 "_"
call :ColorText ee " _"
call :ColorText 00 "_"
call :ColorText 99 " _"
call :ColorText 00 "_"
call :ColorText 22 " _"
call :ColorText 00 "_"
call :ColorText 55 " _"
call :ColorText 00 "_"
call :ColorText 88 " _"
echo.
echo 1  2  3  4  5  6
set /p m3nu=
if %m3nu%==1 goto colorsave11
if %m3nu%==2 goto colorsave22
if %m3nu%==3 goto colorsave33
if %m3nu%==4 goto colorsave44
if %m3nu%==5 goto colorsave55
if %m3nu%==6 goto colorsave66
goto theme
:colorsave11
del jckd\dskclr.dlb
(
echo 4f
)> jckd\dskclr.dlb
goto terminal3
:colorsave22
del jckd\dskclr.dlb
(
echo e0
)> jckd\dskclr.dlb
goto terminal3
:colorsave33
del jckd\dskclr.dlb
(
echo 9f
)> jckd\dskclr.dlb
goto terminal3
:colorsave44
del jckd\dskclr.dlb
(
echo 2f
)> jckd\dskclr.dlb
goto terminal3
:colorsave55
del jckd\dskclr.dlb
(
echo 5f
)> jckd\dskclr.dlb
goto terminal3
:colorsave66
del jckd\dskclr.dlb
(
echo 8f
)> jckd\dskclr.dlb
goto terminal3

:terminal
mkdir Main
del jckd\chckmem.dlb

(
echo Main
)> jckd\chckmem.dlb

(
set /p selct=
)< jckd\chckmem.dlb

cls
(
set /p idk=
)< jckd\dskclr.dlb
color %idk%
mode con: cols=80 lines=22
cls
goto terminal2
:terminal2
echo Codename Jackdaw [Version 1.0 BETA]
echo (c) 2020 Tr0janH0rs3. All rights reserved.
echo =-UNDER CONSTRUCTION=-
echo.
goto terminal3
:terminal3

(
set /p idk=
)< jckd\dskclr.dlb

color %idk%
echo Selected folder: %selct%
set /p chooser=user@%name%:
if %chooser%==ver goto ver
if %chooser%==exit goto exit
if %chooser%==clear goto clear
if %chooser%==help goto help
if %chooser%==passchng goto passwordchange
if %chooser%==theme goto theme
if %chooser%==makedir goto mkdir
if %chooser%==del goto del
if %chooser%==cd goto select
if %chooser%==deldir goto deldir
if %chooser%==logout goto logon
if %chooser%==safemode goto safemode
goto nocmd

:safemode
echo Do you want to turn on Safe Mode (Y/N)?
set /p selecto=
if %answer%==Y goto SAFEMODE
if %answer%==y goto SAFEMODE
if %answer%==Yes goto SAFEMODE
if %answer%==YEs goto SAFEMODE
if %answer%==YES goto SAFEMODE
if %answer%==yes goto SAFEMODE
if %answer%==YEs goto SAFEMODE
if %answer%==yeS goto SAFEMODE
if %answer%==YeS goto SAFEMODE
if %answer%==yES goto SAFEMODE
if %answer%==N goto terminal3
if %answer%==n goto terminal3
if %answer%==No goto terminal3
if %answer%==NO goto terminal3
if %answer%==nO goto terminal3
if %answer%==no goto terminal3


:nocmd
echo '%chooser%' command not found. Type 'help' for help.
goto terminal3

:ver
echo Version 1.0 BETA
echo Build 10
echo Codename Jackdaw (c)
goto terminal3
:exit
echo Thanks For Using Jackdaw!
echo Shutting down...
ping /n 3 127.0.0.1>nul
exit
:clear
cls
goto terminal2
:help
echo Avalible commands:
echo 'ver' Displays the current version of the sistem.
echo 'exit' Shutting down Jackdaw.
echo 'clear' Clears everything on the screen.
echo 'help' Displays this text. 
echo 'passchng' Change the password of current user.   
echo 'theme' Change the backcolor of the terminal.  
echo 'makedir' Make a new folder.
echo 'del' To delete files. 
echo 'cd' To delete files.
echo 'deldir' To delete folders.
echo 'logout' Log out from your account.
goto terminal3
:passwordchange
echo Please type the password for %name%
set /p passwd=
if %passwd%==%password% goto passwdsure
goto passwordchangewrg
:passwordchangewrg
echo Please type the password for %name%
call :ColorText cf "Wrong password."
echo.
set /p passwd=
if %passwd%==%password% goto passwdsure
goto passwordchangewrg
:passwdsure
echo Do you want to change your Password for user %name%?
echo Y/N 
set /p answer=
if %answer%==Y goto passwdchange
if %answer%==y goto passwdchange
if %answer%==Yes goto passwdchange
if %answer%==YEs goto passwdchange
if %answer%==YES goto passwdchange
if %answer%==yes goto passwdchange
if %answer%==YEs goto passwdchange
if %answer%==yeS goto passwdchange
if %answer%==YeS goto passwdchange
if %answer%==yES goto passwdchange
if %answer%==N goto terminal3
if %answer%==n goto terminal3
if %answer%==No goto terminal3
if %answer%==NO goto terminal3
if %answer%==nO goto terminal3
if %answer%==no goto terminal3
goto passwdsure
:passwdchange
echo Type new password:
set /p password=
del jckd\acc.dlb
goto autosave2
:mkdir
echo Type the name of the new directory.
set /p dir=
mkdir %dir%
echo Directory %dir% is sucessfully created!
goto terminal3
:del
echo Type the name of the file that you want to delete.
echo Example = (file.txt) / (directory\file.txt)
echo 'exit' to exit.
set /p del=
if %del%==exit goto terminal3
if %del%==acc.dlb goto dont
if %del%==jackdw.dg goto dont
if %del%==jckd\jackdw.dg goto dont
if %del%==dskclr.dlb goto dont
if %del%==jckd\dskclr.dlb goto dont
if %del%==chckmem.dlb goto dont
if %del%==jckd\chckmem.dlb goto dont
if %del%==jckd goto dont
if %del%==jckd\ goto dont
if %del%==jckd* goto dont
if %del%==*.bat goto dont
if %del%==Codename JackDaw Early BETA 1.bat goto dont
if %del%==jckd\acc.dlb goto dont
IF EXIST %del% goto delete
IF NOT EXIST %del% goto deleteno
:delete
del %del%
echo %del% is sucessfully deleted.
goto terminal3
:nodelete
echo %del% was not found.
goto del
:nodelete2
echo %deldir% was not found.
goto deldir
:deldir
echo Type the name of the Folder:
set /p deldir=
goto deldirc
:deldirc
rmdir %deldir%
echo %deldir% was sucessfully deleted.
goto terminal3
:dont
call :ColorText cf "%del% is protected! Cannot be delete."
echo.
goto del
:select
set /p selct=Type the name of the folder:
if %selct%==exit goto terminal3
IF EXIST %selct% goto selectsuc
IF NOT EXIST %selct% goto selectno
goto selectno
:selectno
echo Folder not found.
set /p selct=Type the name of the folder:
if %selct%==exit goto terminal3
IF EXIST %selct% goto selectsuc
IF NOT EXIST %selct% goto selectno
goto selectno
:selectsuc
goto terminal3

::################################################(SAFE MODE)#####################################################





