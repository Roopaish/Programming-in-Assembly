LHLD 2000H  ; H = [2000], L = [2001]
XCHG        ; D <-> H, E <-> L
LHLD 2002H  ; H = [2002], L = [2003]
MOV A, E    ; A = E 
SUB L       ; A = A - L = E - L
STA 2017H   ; [2017] = A
MOV A, D    ; A = D
SBB H       ; A = A - H with Borrow = D - H
STA 2018H   ; [2018] = A
HLT