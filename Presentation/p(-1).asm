
LXI H , 2500H
MOV A,M
MVI B , 00H
MVI C , 09H
LOOP: INX H
ADD M
JNC SKIP
INR B
SKIP: DCR C
JNZ LOOP
STA 2600H
MOV A,B
STA 2601H

HLT