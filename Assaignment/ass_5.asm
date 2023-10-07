MVI C, 05h
MVI B, 04h
XRA A
again: ADD C
DCR B
JNZ again
HLT