
;Program 8

;load in memory

lxi h, 2500h
mvi m, 0Ah

lxi h, 2501h
mvi m, 32h

lxi h, 2502h
mvi m, 0Ah

lxi h, 2503h
mvi m, 32h

;load back to register

lxi h, 2500h
mov b, m

lxi h, 2501h
mov c, m

lxi h, 2502h
mov d, m

lxi h, 2503h
mov e, m

;add c & e

mov a, c
sub e

lxi h, 2505h
;cma
mov m, a

;add b & d

mov a, b
sbb d

lxi h, 2504h
mov m, a

hlt