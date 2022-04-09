.model small
.stack
.data
.code
    main proc
        .startup
        mov ah, 01h
        int 21h
        sub al, 30h   ; ascii -> hex
        
        mov bl, al    ; bl = 1st number
        
        mov ah, 01
        int 21h
        sub al, 30h   ; al = 2nd number, ascii -> hex
        
        add al, bl
        jnc skip
        mov dl, 01h
        mov ah, 02h  ; display carry
        int 21h
        
        skip:
        add al, 30h  ; hex -> ascii
        
        mov dl, al
        mov ah, 02h  ; display sum
        int 21h
        
        .exit
    main endp
end main