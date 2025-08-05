setlocal
set "file=compiled_BANK_01.bin"
set maxbytesize=16384
call :setsize %file%
if %size% gtr %maxbytesize% (
    echo RAM 1 Size TOO Large
    pause
) else (
    echo RAM 1 Size OK
)
SET /A a = %size%
SET /A b = %maxbytesize%
SET /A c = %b%-%a%
echo %c% bytes free in RAM 1

goto :eof

:setsize
set size=%~z1
goto :eof

