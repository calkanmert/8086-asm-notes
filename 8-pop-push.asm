data segment                 
    dusukDegerli db 2 dup(?)
    yuksekDegerli db 2 dup(?) 
ends                      

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax, data
    mov ds, ax
    
    push 2244h
    push 3366h
    
    pop ax
    
    mov dusukDegerli[0],al
    mov yuksekDegerli[0],ah
    pop ax
    mov dusukDegerli[1],al
    mov yuksekDegerli[1],ah
       
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
