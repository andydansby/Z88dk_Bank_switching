
@cd codemaps
@	del ram6.o
@cd ..

@rem compiling string for SDCC object file
zcc +zx -vn -clib=sdcc_iy @ram6.lst -c -o RAM6.o -m

@if not exist "RAM6.o" (
call error.bat
)

copy "ram6.o" "..\"
move "ram6.o" "codemaps\"

@REM Cleanup
del zcc_opt.def

REM a nice map view
cd codemaps
	echo on
	@REM all these objects match up
	z88dk-z80nm ram6.o
	z88dk-z80nm ram6.o > ram6.txt
	copy "ram6.txt" "..\"
	echo off
cd ..

@call beep.bat
