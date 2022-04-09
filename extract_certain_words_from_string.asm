; Given: Microprocessor and Assembly Language Programming
; Display: Microprocessor Programming

.model small
.stack
.data
    str dB "Microprocessor and Assembly Language Programming";
.code
    main proc
        .startup
        ; Microprocessor
        mov cx, 0Eh         ; 14 dec = 0E hex
        mov si, offset str
        
        label1:             ; Looping through each character
        mov dl, [si]
        mov ah, 02h
        int 21h
        inc si
        loop label1         ; loops until cx becomes 0
        
        
        ; Programming
        mov cx, 0Ch         ; 12 dec = C hex
        
        add si, 16h         ; 36 - 14 = 22 in dec = 16 in hex
        
        label2:
        mov dl, [si]
        mov ah, 02h
        int 21h
        inc si
        loop label2
        
        .exit
    main endp
end main
        