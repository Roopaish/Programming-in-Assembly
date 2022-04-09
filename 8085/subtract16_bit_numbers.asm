LHLD 2000H  ; H = [2000], L = [2001]
XCHG        ; D <-> H, E <-> L
LHLD 2002H  ; H = [2002], L = [2003]
MOV A, E    ; A = E 

SUB L       ; A = A - L = E - L
MOV L, A    ; L = A, Store sum of lower byte

MOV A, D    ; A = D
SBB H       ; A = A - H with Borrow = D - H
MOV H, A    ; H = A, Store sum of highest byte

SHLD 2017h  ; [2017] = H, [2018] = L
HLT