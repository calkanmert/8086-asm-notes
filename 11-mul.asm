org 100h

;---- 8 byte ----
;mov al,4
;mov bl,2
;mul bl
;---- 16 byte ----

;mov ax,256
;mul [sayi]  

;DX    AX
;0001  FFFE = 0001FFFEh
mov ax,65535
mul [sayi]
ret
;  
sayi dw 2




