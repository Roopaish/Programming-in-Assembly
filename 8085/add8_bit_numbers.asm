; Adding Directly
MVI A, 02H  ; A = 02
MVI B, 03H  ; B = 03
ADD B       ; A = A + B
STA 1050H   ; [1050] = A
HLT

; Adding From Memory Without Carry
LXI H, 1000H ; [1000] = input from memory
MOV A, M     ; A = [1000]
INX H        ; HL++, [1001] = input from memory
ADD M        ; A = A + [HL]
STA 1002H    ; [1002] = A
HLT

; Adding From Memory With Carry
LXI H, 1000H ; [1000] = input from memory
MOV A, M     ; A = [1000]
INX H        ; H = H + 1, [1001] = input from memory
MVI B, 00H   ; B = 00
ADD M        ; A = A + [H]
;DAA          ; Converts A to BCD
JNC label    ; jump if no carry
INX B        ; B = B + 1

label:
STA 1003H    ; [1003] = A
MOV A, B 
STA 1004H    ; [1004] = A
HLT

; In above program [1000] and [1001] contains two numbers to be added.
; [1002] and [1003] contains the result of the addition and carry.