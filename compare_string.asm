.model small
.stack 100h
.data
    str1 db "Hello$"
    str2 db "Hello$"    
    msg1 db "Strings are same$"
    msg2 db "Strings are different$"  
    
    strlen db 0
    
    ; find length of string
    len macro str
        mov di,offset str
        mov bl,0
        l:
        cmp [di],'$'
        je ex                       ; jump if equal
        inc bl
        inc di
        jmp l
        ex:
    endm
    
.code
    main proc
        .startup 
        
        ; checking if length is equal
        len str1                    ; bl = length of strl  
        mov strlen, bl
        len str2
        cmp strlen, bl
        je enter
        jmp notSame
              
        ; comparing each character
        enter:
        mov cl,al
        mov di, offset str1
        mov si, offset str2
        check:
        mov al,[si]
        cmp [di],al
        jne notSame                ; jump if not equal
        loop check                                                                  
       
        
        same:
        mov dx, offset msg1
        mov ah, 09h
        int 21h 
        jmp skipNotSame
        
        notSame:
        mov dx, offset msg2
        mov ah, 09h
        int 21h
        
        skipNotSame
        .exit
    main endp
end main
        