; add and sub 8-bit numbers

.model small
.stack 100h
.data
    msg1 db 'Enter the first number:$'
    msg2 db 10,13,'Enter the second number:$'
    msg3 dB 10,13,'Sum:$'
    msg4 dB 10,13,'Diff:$'
    
.code
    main proc
        .startup   
        lea dx, msg1
        mov ah, 09h
        int 21h 
                 
        mov ah, 01h
        int 21h
        mov bl, al       ; input first number and move to bl
        and bl, 0fh      ; converting ascii code to hex
        
        lea dx, msg2
        mov ah, 09h
        int 21h       
        
        mov ah, 01h      ; input second number
        int 21h      
        and al, 0fh
                                                  
        lea dx, msg3
        mov ah, 09h
        int 21h 
        
        add bl, al       ; bl = bl + al
        mov dl, bl       ; dl = bl
        or dl, 37h       ; converting hex to ascii   
        
        mov ah, 02h      ; print sum
        int 21h
        
        .exit
    main endp
end main