
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
org 100h



a1 db 18h, 72h, 22h, 25h, 31h
oddc db 00h



mov ax, @data
mov ds, ax

mov cl, 05h
mov dl, 02h
mov ch, 00h

lea si, a1
13: mov ah, 00h
    mov al, [si]
    mov dl, 02h
    div dl
    cmp ah, 00h
    jz 17
    inc oddc
17: inc si
    dec cl
    jnz 13 
    
    mov ah, 4ch
    int 21h
    
end