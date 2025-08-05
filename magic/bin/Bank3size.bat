setlocal
set "file=compiled_BANK_03.bin"
set maxbytesize=16384
call :setsize %file%
if %size% gtr %maxbytesize% (
    echo RAM 3 Size TOO Large
    pause
) else (
    echo RAM 3 Size OK
)
SET /A a = %size%
SET /A b = %maxbytesize%
SET /A c = %b%-%a%
echo %c% bytes free in RAM 3

goto :eof

:setsize
set size=%~z1
goto :eof

