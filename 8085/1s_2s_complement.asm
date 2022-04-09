LDA [3000]
CMA         ; 1's compliment, Compliment Content of Accumulator
STA [3001]
ADI 01      ; 2's compliment, A = A + 1
STA [3002]
HLT
