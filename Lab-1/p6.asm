
;Program 6

lxi b, 3204h ;store in bc pair
lxi d, 3108h ;store in de pair

;subtract c & e

mov a, c
sub e

mov l, a

;subtract b & d

mov a, b
sbb d

mov h, a

hlt