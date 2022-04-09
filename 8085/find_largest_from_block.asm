LXI H, CB06H      ; input size of the array
MOV C, M          ; C = size of array

INX H             ; Inputting data
DCR C             ; Decreasing C indicating a data is entered

MOV A, M          ; A = M

loop2:
INX H             ; next data
CMP M             ; A < M ? CY = 1 
JNC loop 
MOV A, M          ; Update A = M if M > A

loop:
DCR C 
JNZ loop2         ; loop if zero not generated i.e. until all data is finished
STA C100H
HLT
