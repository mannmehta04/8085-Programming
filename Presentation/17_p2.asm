LXI SP,9200H
IN 0H
ORI 0DEH
ADI 01H
JNZ END
MVI A,0C0H
DIS: OUT 0H
RRC
RRC
CALL DELAY
JMP DIS
END: HLT

;DELAY SUBROUTINE
DELAY: LXI B, 09C2h
LOOP: DCX B
MOV A,C
ORA B
JNZ LOOP
RET