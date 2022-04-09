; Given: Microprocessor and Assembly Language Programming
; Display: Microprocessor Programming

.model small
.stack
.data
    str dB "Microprocessor and Assembly Language Programming$";
.code
    main proc
        .startup
        ; Microprocessor
        mov cx, 14h
        mov si, offset str
        
        label1:             ; Looping through each character
        mov dl, [si]
        mov ah, 02h
        int 21h
        inc si
        loop label1         ; loops until cx becomes 0
        
        
        ; Programming
        mov cx, 11h
        mov di, offset str
        
        add di, 36h
        
        label2:
        mov dl, [di]
        mov ah, 02h
        int 21h
        inc si
        loop label2
        
        .exit
    main endp
end main
        