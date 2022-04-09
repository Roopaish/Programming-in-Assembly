LHLD 2050H  ; H = [2050], L = [2051]
XCHG        ; D <-> H, E <-> L
LHLD 2052H  ; H = [2052], L = [2053]
DAD D       ; H = H + D, L = L + E i.e HL = HL + DE
MVI C, 00H  ; Carry
JNC label   ; if Carry = 0, skip next instruction
INR C       ; C = C + 1

label
SHLD 3050H  ; [3050] = H, [3051] = L
MOV A, C
STA 3056H   ; [3056] = A
HLT

; The result will be stored in [3050] and [3051]
; Carry will be stored in [3056]