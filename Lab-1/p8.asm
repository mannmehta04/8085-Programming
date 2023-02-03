
;Program 8

;load in memory

lxi h, 2100h
mvi m, 32h

lxi h, 2101h
mvi m, 0Ah

lxi h, 2600h
mvi m, 31h

lxi h, 2601h
mvi m, 09h

;load back to register

lxi h, 2100h
mov b, m

lxi h, 2101h
mov c, m

lxi h, 2600h
mov d, m

lxi h, 2601h
mov e, m

;add c & e

mov a, c
sub e

lxi h, 2701h
;cma
mov m, a

;add b & d

mov a, b
sbb d

lxi h, 2700h
mov m, a

hlt