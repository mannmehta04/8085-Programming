
;Program 4
;	Beginning from 2500h,
;	store all even and positive nubers starting
;	from adress 2600h.

mvi b, 08h
lxi h, 2500h
lxi d, 2600h

loop: dcr b
jz end
mov a, m
mov c, a
inx h

ani 81h
jnz loop

xchg
mov m, c
inx h
xchg

jmp loop

end: hlt