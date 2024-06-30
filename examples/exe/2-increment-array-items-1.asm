data segment
    sayilar db 7,2,9,1
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax

    lea bx, sayilar
    mov si, 0
    mov cx, 4
    dongu:
       mov dl, [sayilar+si]
       inc dl
       mov [bx+si], dl
       inc si
       loop dongu
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start
