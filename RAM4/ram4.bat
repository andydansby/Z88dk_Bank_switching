
@cd codemaps
@	del ram4.o
@cd ..

@rem compiling string for SDCC object file
zcc +zx -vn -clib=sdcc_iy @ram4.lst -c -o RAM4.o -m

@if not exist "RAM4.o" (
call error.bat
)

copy "ram4.o" "..\"
move "ram4.o" "codemaps\"

@REM Cleanup
del zcc_opt.def

REM a nice map view
cd codemaps
	echo on
	@REM all these objects match up
	z88dk-z80nm ram4.o
	z88dk-z80nm ram4.o > ram4.txt
	copy "ram4.txt" "..\"
	echo off
cd ..

@call beep.bat
