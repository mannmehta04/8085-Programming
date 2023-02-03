
;Program 1, Lab 2
;Compare 16 bit data and store data accordingly
; a>b = 1, zf = 0, cf=0
; a=b 0, zf = 1, cf=0
; a<b 2, zf = 0, cf=1

;store in memory:
lxi h, 2600h
mvi m, 2Dh

lxi h, 2601h
mvi m, 14h

lxi h, 2602h
mvi m, 20h

lxi h, 2603h
mvi m, 14h

;load from memory
lxi h, 2600h
mov b, m

lxi h, 2601h
mov c, m

lxi h, 2602h
mov d, m

lxi h, 2603h
mov e, m

;load immidiate data
;lxi b, 2D14h
;lxi d, 2014h

;compare higher bits
mov a, b
cmp d

;jump if carry
jc smaller

;jump if not zero
jnz greater

;compare lower bit
mov a, c
cmp e

;jump if carry
jc smaller

;jump if not zero
jnz greater

;store 00 as values are equal
equal: lxi h, 2500h
	mvi m, 00h
;mvi h, 00h
hlt

;labels

greater: lxi h, 2500h
	mvi m, 01h
;greater: mvi h, 01h
hlt

smaller: lxi h, 2500h
	mvi m, 02h
;smaller: mvi h, 02h
hlt

