MVI A, 0Fh   ; load the data into the accumulator
MOV B, A      ; copy the data to register B
MVI C, 08H    ; initialize the counter with 8 (number of bits in 8-bit number)
MVI D, 00H    ; initialize the output with 0

count_loop: RAR       ; rotate accumulator right through carry
    JNC skip  ; if carry is 0, skip the next instruction
    INR D     ; increment the count
skip: DCR C     ; decrement the counter
    JNZ count_loop  ; if counter is not 0, continue the loop

HLT          ; end the program
