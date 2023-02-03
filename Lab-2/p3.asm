
;Program 3, Lab 2
;pack 2 digits and make 8 bit number

;store data
lxi h, 2500h
mvi m, 03h

lxi h, 2501h
mvi m, 05h

;fetch data
lxi h, 2500h
mov b, m

lxi h, 2501h
mov c, m

;move to accumulator
mov a, b

;rotate 4 times to get higher bit
rlc
rlc
rlc
rlc

;or that bit to get data as it is
ora c

;store to memory
lxi h, 2502h ;data shown in memory is decimal
mov m, a

hlt