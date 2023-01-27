
;Program 6

lxi b, 2504h ;store in bc pair
lxi d, 2508h ;store in de pair

;subtract c & e

mov a, c
sbb e

mov l, a

;subtract b & d

mov a, b
sbb d

mov h, a

hlt