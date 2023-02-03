
;Program 2, Lab 2
;unpack 2 bits from a given data
;eg. 35h --> 03h & 05h

;or will give data as it is
;and will do masking

;store data
lxi h, 2500h
mvi m, 35h

;fetch data
lxi h, 2500h
mov a, m

ani 0f0h

;rotate 4 times for getting higher nibble
rlc
rlc
rlc
rlc

mov b, a

;fetch data
lxi h, 2500h
mov a, m

ani 0fh

mov c, a

hlt