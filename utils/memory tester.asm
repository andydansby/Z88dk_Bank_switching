org 28000
main
;Calculate the FREE SPACE left for BASIC Program in the system after you insert a clear command
ld HL,0
add HL,SP
ld DE,(23653)
and A
sbc HL,DE
ld B,H
ld C,L
ret

main2
org 28020
;Returns the length of a BASIC Program
ld HL,(23627)
ld DE,(23635)
and A
sbc HL,DE
ld B,H
ld C,L
ret

