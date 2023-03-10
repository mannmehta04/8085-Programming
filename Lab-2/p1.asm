
;Program 1, Lab 2
;Compare 16 bit data and store data accordingly
; a>b = 1, zf = 0, cf=0
; a=b 0, zf = 1, cf=0
; a<b 2, zf = 0, cf=1

;load immidiate data
lxi b, 2D14h
lxi d, 2014h

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
hlt

;labels
greater: lxi h, 2500h
	mvi m, 01h
hlt

smaller: lxi h, 2500h
	mvi m, 02h
hlt

