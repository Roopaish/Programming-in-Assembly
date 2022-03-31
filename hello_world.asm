.model small
.stack 100h
.data
    msg db "Hello World!$"
.code
    main proc
        .startup 
        lea dx, msg
        mov ah, 09h
        int 21h
        .exit
    main endp
end main