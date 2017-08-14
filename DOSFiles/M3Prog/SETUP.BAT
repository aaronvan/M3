ECHO OFF
CLS
rem CHECK IF DRIVE SPECIFIED.MUST SPECIFY DRIVE TO COPY FILES TO  e.g. "setup c"
if "%1"=="" goto NO_DRIVE
ECHO.
ECHO.
ECHO    COPYING FILES TO DRIVE %1. PRESS ANY KEY TO CONTINUE
PAUSE
CLS

rem 
md %1:\ma-com
md %1:\ma-com\m2e
md %1:\ma-com\m2e\radio
md %1:\ma-com\m2e\help
md %1:\ma-com\mastrutl
cd ma-com
rem copy pdf file
copy TQ0619.pdf %1:\ma-com
copy m*.bat %1:\ma-com
cd mastrutl
copy *.* %1:\ma-com\mastrutl
cd..
cd m2e
copy mastr.exe %1:\ma-com\m2e
copy m2ewrite.exe %1:\ma-com\m2e
copy m2eread.exe %1:\ma-com\m2e
copy m2eprint.exe %1:\ma-com\m2e
ECHO 
CLS
cd help
copy *.hlp %1:\ma-com\m2e\help
cd..
goto DONE
:NO_DRIVE
CLS
ECHO 
ECHO           *******************    ERROR    *******************
ECHO.
ECHO        NO DRIVE HAS BEEN SPECIFIED. THE CORRECT SYNTAX IS
ECHO        "SETUP [DRIVE LETTER]", WHERE [DRIVE LETTER] INDICATES WHICH
ECHO        HARD DRIVE THE PROGRAM IS TO BE INSTALLED ON.PLEASE TRY AGAIN
ECHO.
ECHO.
goto END
:DONE
rem  Installation complete
CLS
ECHO
ECHO          *******************    MESSAGE    *******************
ECHO       PLEASE MODIFY BAT FILES m2e,m3 and mastrutl 
ECHO       TO SPECIFY DRIVE %1 ON WHICH FILES ARE INSTALLED.
ECHO       PRESS ANY KEY TO END INSTALLATION.
PAUSE
CLS
:END

