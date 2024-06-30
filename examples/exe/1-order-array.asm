data segment
    indis db 1,2,0
    sayilar db 4h,8h,0Ch
    hedef db 3 dup(?)
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data 
    mov ds, ax 
    
    lea bx, sayilar
    mov cx, 3
    mov si, 0
    
    dongu:
        mov al, indis+si
        xlatb
        mov hedef+si, al
        inc si
        loop dongu

    mov ax, 4c00h
    int 21h    
ends

end start
