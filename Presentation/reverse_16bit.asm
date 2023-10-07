
;Program 2
;	Program to reverse a 16 bit data

;swap 8 bits in same position
lhld 2500h
mov a, l
rlc
rlc
rlc
rlc
mov l, a

mov a, h
rlc
rlc
rlc
rlc
mov h, a

;swap position of  bits
mov a, l
rlc
rlc
rlc
rlc
mov b, l

rlc
rlc
rlc
rlc
mov c, h

hlt