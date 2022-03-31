; display 3 strings in separate lines

.model small
.stack 100h
.data
    
    msg1 db "hello world!$"
    msg2 db 10,13,"How do you do?$"
    msg3 db 10,13,"Hope you are well!$"  
    ; 10 ASCII control code for line feed, moves cursor to next line
    ; 13 carriage return, moves cursor to start of line

.code
    main proc
        .startup 
        lea dx, msg1
        mov ah, 09h
        int 21h   
        
        lea dx, msg2
        mov ah, 09h
        int 21h    
        
        lea dx, msg3
        mov ah, 09h
        int 21h
        
        .exit
    main endp
end main