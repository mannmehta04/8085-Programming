
;Program 1
;	Progaram to store 10 bytes of data
;	starting from 2000h to 2005h

mvi b, 0Bh
lxi h, 2009h
lxi d, 200Eh

loop: mov c, m
xchg
mov m, c
xchg

dcx h
dcx d
dcr b
jnz loop

hlt