
;Program 2
;	Retrive block of 7 bytes of data from location
;	2500h and store odd numbers to location 2600h

MVI B,08h
LXI H,2507h
LXI D,2100h
loop: DCX H 
MOV A,M
MOV C,A
DCR B
JZ EXIT
ANI 01H
JZ loop
XCHG
MOV M,C
INX H
XCHG
JMP loop
EXIT: HLT

hlt