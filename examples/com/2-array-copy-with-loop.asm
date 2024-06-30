org 100h

lea bx, sayilar ; sayilar dizisinin baslangic adresini bx register'a kaydettik
lea bp, sayilar2; sayilar2 dizisinin baslangic adresini bx register'a kaydettik

mov si, 0
mov cx, 4
dongu:
 mov ah, [bx+si]
 mov [bp+si], ah
 inc si
 loop dongu
ret

sayilar db 2,3,5,7
sayilar2 db 4 dup(?) ;'?' bosluk