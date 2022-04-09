LXI H, 2000H
MOV B, M         ; B = [2000H]
MVI D, 01H       ; D = 01H

factorial
CALL multiply

DCR B            ; B--
JNZ factorial 
INX H            ; HL++
MOV M, D         ; M = D
HLT 

; multiply fxn
multiply
MOV E, B         ; E = B
MOV A, 00H       ; A = 00

multiplyLoop
ADD D            ; A = A + D
DCR E            ; E--
JNZ multiplyLoop

MOV D, A         ; D = A
RET

; Working for B = 4
; D = 1 + 1 + 1 + 1 = 4   (4 x 1)
; D = 4 + 4 + 4 = 12      (4 x 3)
; D = 12 + 12 = 24        ((4 x 3) x 2)
; D = 24 = 24             ((4 x 3 x 2) x 1)
; Result is 24            4 x 3 x 2 x 1