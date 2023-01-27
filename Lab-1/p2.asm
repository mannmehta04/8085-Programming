
;Program 2

;store at 2500h & 2501h

lxi H, 2500h
mvi M, 32h

lxi H, 2501h
mvi M, 32h

;move to register

lxi h, 2500h
mov a, m

lxi h, 2501h
mov b, m

;add & store in 2502h & 2503h

add b
lxi h, 2502h
mov m, a

;lxi h, 2503h
;mov m, b

;mov b, a

;adc b

;lxi h, 2503h
;mov m, b

hlt