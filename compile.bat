@rem SET PATH=c:\z88dk199c;c:\z88dk199c\bin;c:\z88dk199c\lib\;c:\z88dk199c\lib\clibs;c:\z88dk199c\lib\config;C:\Program Files\SDCC\bin



SET PATH=c:\z88dk;c:\z88dk\bin;c:\z88dk\lib\;c:\z88dk\lib\clibs;c:\z88dk\lib\config;C:\Program Files\SDCC\bin;C:\Program Files\GnuWin32\bin

move "1output.tap" "archive"

cls

rem using sdcc_iy 2.03
cd gfx
    call compressGFX.bat
cd ..


cd utils
    copy "bas2tap.exe" "..\magic"
    rem copy "loader.bas" "..\magic"
    copy "loader128.bas" "..\magic"
    call bankloader.bat
cd ..

rem pause

cd CONTENDED
	call ramlow.bat
	move "contended.txt" "..\"
cd ..

rem pause

cd RAM0
	call ram0.bat
	move "ram0.txt" "..\"
cd ..

cd RAM1
	call ram1.bat
	move "ram1.txt" "..\"
cd ..

cd RAM3
	call ram3.bat
	move "ram3.txt" "..\"
cd ..

cd RAM4
	call ram4.bat
	move "ram4.txt" "..\"
cd ..

cd RAM6
	call ram6.bat
	move "ram6.txt" "..\"
cd ..

@REM pause

cd UNCONTENDED
	call uncontended.bat
	move "uncontended.txt" "..\"
cd ..

@REM pause

echo on

move "contended.o" "OBJECTS\"
move "ram0.o" "OBJECTS\"
move "ram1.o" "OBJECTS\"
move "ram3.o" "OBJECTS\"
move "ram4.o" "OBJECTS\"
move "ram6.o" "OBJECTS\"
move "uncontended.o" "OBJECTS\"


@REM pause


cd OBJECTS
	call magic.bat
cd ..

@REM pause

cd UNCONTENDED
    call rammain.bat
cd ..

@REM pause

@cd magic
@   call voodoo.bat
@   cd bin
@       call sizeTester.bat
@   cd ..
@cd ..


REM FINISHED COMPILE
call beep.bat

