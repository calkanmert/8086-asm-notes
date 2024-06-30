org 100h

lea bx, sayilar ; sayilar dizisinin baslangic adresini bx register'a kaydettik
lea bp, sayilar2; sayilar2 dizisinin baslangic adresini bx register'a kaydettik

mov al, [bx]
mov [bp],al

mov al, [bx+1]
mov [bp+1],al

mov al, [bx+2]
mov [bp+2],al

mov al, [bx+3]
mov [bp+3],al

ret

sayilar db 2,3,5,7
sayilar2 db 4 dup(?) ;'?' bosluk