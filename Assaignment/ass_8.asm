; Initialize A and B with data
MVI A, DataA
MVI B, DataB

; Multiply A by 4 using the subroutine
CALL MULTIPLY_BY_FOUR

; Add B to the result
ADD B

; Halt the program
HLT

MULTIPLY_BY_FOUR: PUSH B
    PUSH D

    ; Set B = 4
    MVI B, 04H

    ; Initialize HL register pair to A
    MOV H, A
    MVI L, 00H

    ; Loop to add A to HL four times
    MULTIPLY_LOOP: DAD B
        DCR B
        JNZ MULTIPLY_LOOP

    ; Move the result from HL to A
    MOV A, L

    ; Restore registers from the stack
    POP D
    POP B

    ; Return from subroutine
    RET

; Data section
DataA: DB 11H
DataB: DB 02H