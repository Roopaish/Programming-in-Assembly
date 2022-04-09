; find factorial of a number
; !not complete

.model small
.stack 100h
.data
    msg1 db "Enter a number:$"
    msg2 db "The factorial is:$"
.code 
    main proc
        .startup
        ;display first message
        lea dx,msg1
        mov ah, 09h
        int 21h              
        
        mov ah,01h
        int 21h
        xor ah,ah
        
    main endp
    end main
    