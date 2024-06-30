org 100h

lea bx, sayilar ; sayilar dizisinin ilk elemanin bellek adresini 16bitlik bx register'a kaydet            
mov al, [bx+4]  ; bx registerindan sayilar dizisinin baslangic adresini alip +2(dizi 16bit define edilmis) ekleyerek 2. indis'i 'al' registerina kaydet 

ret
sayilar dw 1,2,3,4 ;16bit
end
