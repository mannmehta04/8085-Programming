MAIN: MVI A, 25h ; Load a byte to convert into Register A
    CALL BYTE_TO_ASCII ; Call the subroutine to convert byte to ASCII
    ; The result is now in Registers B and C
    HLT ; Halt the processor

BYTE_TO_ASCII: MOV B, A
    ; Split byte into high and low nibbles
    ; MOV B, A
    ANI B, F0h ; Mask off high nibble
    CPI F0h ; Compare high nibble with F0h
    JNZ NOT_F ; Jump if high nibble is not F
    MVI C, '1' ; If high nibble is F, set C to ASCII '1'
    JMP LOW_DONE ; Jump to low nibble processing
NOT_F: CALL DIGIT_TO_ASCII ; Convert high nibble to ASCII
    MOV C, A ; Save result in Register C
LOW_DONE: MOV A, B ; Restore original byte
    ANI A, 0Fh ; Mask off low nibble
    CALL DIGIT_TO_ASCII ; Convert low nibble to ASCII
    MOV B, A ; Save result in Register B
    RET

DIGIT_TO_ASCII: ADI A, 30h ; Add 30h to convert digit to ASCII code
    RET

HLT ; End of the program