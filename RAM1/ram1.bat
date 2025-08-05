
@cd codemaps
@	del ram1.o
@cd ..

@rem compiling string for SDCC object file
zcc +zx -vn -clib=sdcc_iy @ram1.lst -c -o RAM1.o -m

@if not exist "RAM1.o" (
call error.bat
)

copy "ram1.o" "..\"
move "ram1.o" "codemaps\"

@REM Cleanup
del zcc_opt.def

REM a nice map view
cd codemaps
	echo on
	@REM all these objects match up
	z88dk-z80nm ram1.o
	z88dk-z80nm ram1.o > ram1.txt
	copy "ram1.txt" "..\"
	echo off
cd ..

@call beep.bat
