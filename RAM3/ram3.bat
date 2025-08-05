
@cd codemaps
@	del ram3.o
@cd ..

@rem compiling string for SDCC object file
zcc +zx -vn -clib=sdcc_iy @ram3.lst -c -o RAM3.o -m

@if not exist "RAM3.o" (
call error.bat
)

copy "ram3.o" "..\"
move "ram3.o" "codemaps\"

@REM Cleanup
del zcc_opt.def

REM a nice map view
cd codemaps
	echo on
	@REM all these objects match up
	z88dk-z80nm ram3.o
	z88dk-z80nm ram3.o > ram3.txt
	copy "ram3.txt" "..\"
	echo off
cd ..

@call beep.bat
