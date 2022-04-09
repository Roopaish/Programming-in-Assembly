LDA [3000]
CMA         ; 1's compliment, CoMplement the Accumulator
STA [3001]
ADI 01      ; 2's compliment, A = A + 1
STA [3002]
HLT
