@ECHO OFF

REM // build the ROM
call build %1


REM  // run fc
echo -------------------------------------------------------------
IF EXIST rr2built.bin ( fc /b rr2built.bin rr2original.bin
) ELSE echo rr2built.bin does not exist, probably due to an assembly error

REM // clean up after us
IF EXIST rr2.lst del rr2.lst
IF EXIST rr2built.bin del rr2built.bin
IF EXIST errors.txt del errors.txt

REM // if someone ran this from Windows Explorer, prevent the window from disappearing immediately
pause
