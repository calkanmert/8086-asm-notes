org 100h

; loop cx registeri 0'a esit olana kadar calisir
; bu ornekte loop her basladiginda al registerindeki deger 1 arttirilir 

mov al,0
mov cx,3
dongu:
    inc al
    loop dongu

ret
end



