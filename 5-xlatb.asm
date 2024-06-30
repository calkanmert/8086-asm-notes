org 100h
;bx dizinin baslangic adresi
;al istenilen elemanin sirasi;

;xlatb bx kaydeticisindeki sayilar dizisinin baslangic adresini alip, al kaydeticisindeki sayiyi ekleyip, al kaydeticisine kaydeder, yani "al = sayilar + al"

lea bx,sayilar
mov al,1
xlatb

ret
sayilar db 12h,14h,16h,18h

