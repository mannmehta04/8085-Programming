
;Program 4

;load in memory

lxi h, 2500h
mvi m, 32h

lxi h, 2501h
mvi m, 31h

;subtract data

lxi h, 2500h
mov a, m

lxi h, 2501h
mov b, m

sbb b

lxi h, 2502h
mov m, a

hlt