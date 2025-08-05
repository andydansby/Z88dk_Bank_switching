z88dk-appmake +zx -b compiled_CONTENDED.bin -o contended.tap --org 24280 --noloader --blockname contended

z88dk-appmake +zx -b compiled_CODE.bin -o uncontended.tap --org 32768 --noloader --blockname uncontended

z88dk-appmake +zx -b compiled_IM2_VECTOR_PLACEMENT.bin -o im2vector.tap --org 48573 --noloader --blockname im2vector

z88dk-appmake +zx -b compiled_BANK_00.bin -o bank00.tap --org 49152 --noloader --blockname bank00
z88dk-appmake +zx -b compiled_BANK_01.bin -o bank01.tap --org 49152 --noloader --blockname bank01
z88dk-appmake +zx -b compiled_BANK_03.bin -o bank03.tap --org 49152 --noloader --blockname bank03
z88dk-appmake +zx -b compiled_BANK_04.bin -o bank04.tap --org 49152 --noloader --blockname bank04
z88dk-appmake +zx -b compiled_BANK_06.bin -o bank06.tap --org 49152 --noloader --blockname bank06

rem bas2tap -a1 -s48K loader.bas basloader.tap
bas2tap -a1 -s128K loader128.bas basloader.tap

rem new
rem copy /b basloader.tap + bankSW.tap + contended.tap + uncontended.tap + im2vector.tap + bank00.tap + bank01.tap + bank03.tap + bank04.tap + bank06.tap + bank07.tap 1output.tap
copy /b basloader.tap + bankSW.tap + bank01.tap + bank03.tap + bank04.tap + bank06.tap + bank00.tap + contended.tap + uncontended.tap + im2vector.tap   1output.tap


copy "1output.tap" "..\"

del "loader128.bas"
del "bank00.tap"
del "uncontended.tap"
del "contended.tap"

rem new
del "im2vector.tap"

move "compiled_BANK_00.bin" "bin\"
move "compiled_BANK_01.bin" "bin\"
move "compiled_BANK_03.bin" "bin\"
move "compiled_BANK_04.bin" "bin\"
move "compiled_BANK_06.bin" "bin\"

move "compiled_CODE.bin" "bin\"
move "compiled_CONTENDED.bin" "bin\"
move "compiled_UNASSIGNED.bin" "bin\"

rem new
move "compiled_IM2_VECTOR_PLACEMENT.bin" "bin\"
