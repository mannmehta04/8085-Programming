
;Program 5

lxi b, 3202h
lxi d, 3204h

;add c & e

mov a, c
adc e

mov l, a

;add b & d

mov a, b
adc d

mov h, a

hlt