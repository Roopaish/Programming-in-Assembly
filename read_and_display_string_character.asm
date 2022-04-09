; read and display the string character by character

.model small
.stack 100h
.data
    msg1 db 13,10,"Enter a string:$"
    msg2 db 13,10,"You entered:$"
    str1 db 255 dup()    ; an array with 255 characters
    
.code
    main proc
        .startup        
        lea dx, msg1
        mov ah, 09h      ; display prompt
        int 21h
        
        lea si, str1     ; si holds address of str1, so any value stored in [si] will eventually the value of str1
        
        mov ah, 01h      ; input string and store to al
        read:
            int 21h      ; we can only enter one character at a time, so we use loop here
            mov [si],al
            inc si       ; read input string character by character
            cmp al, 0dh  ; 0dh represent Carriage Return(13 can also be used) [al < 0dh ? CF=1 ZF=0 : al = 0dh ? Cf=0 ZF=1 : CF=0 ZF=0]
            jnz read     ; jnz or jne, jump if zero flag(ZF) is not 0 or jump if not equal 
            
        mov al, '$'      ; mark the end of string
        mov [si], al 
                                                                           
        display:
            lea dx, msg2
            mov ah, 09h
            int 21h
            
            lea dx, str1
            mov ah, 09h
            int 21h
            
            mov ah, 4ch ; return control to OS i.e stop program
            int 21h
        .exit
    main endp
end main