
;Program 9

lxi b, 0FEh
;lxi c, 01h

mov a, c
cma
adi 01h

mov c, a

hlt