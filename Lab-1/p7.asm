
;Program 7

;load in memory

lxi h, 2500h
mvi m, 20h

lxi h, 2501h
mvi m, 05h

lxi h, 2600h
mvi m, 20h

lxi h, 2601h
mvi m, 05h

;load back to register

lxi h, 2500h
mov b, m

lxi h, 2501h
mov c, m

lxi h, 2600h
mov d, m

lxi h, 2601h
mov e, m

;add c & e

mov a, c
adc e

lxi h, 2701h
mov m, a

;add b & d

mov a, b
adc d

lxi h, 2700h
mov m, a

hlt