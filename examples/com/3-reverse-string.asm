
org 100h

lea bx,str
lea bp,reverse
 
mov di, 3 ; dest... index
mov si, 0 ; source index
mov cx, 4  

dongu:
   mov ah, [bx+di]
   mov [bp+si], ah
   inc si
   dec di
   loop dongu

ret

str db 'Mert'
reverse db 4 dup(?)
end
