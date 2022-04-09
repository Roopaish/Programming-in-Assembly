; 1^2 + 2^2 + ..... + 10^2
; Find sum and store at 2040H and 2041H

MVI C, 10H    ; C = 10, counts
MVI A, 0      ; A = 0

loop 
MOV B, C      ; B = C
MOV D, C      ; D = C

again 
ADD B         ; A = A + B
DCR D         ; D--
JNZ again 

DCR C         ; C--
JNZ loop 
HLT