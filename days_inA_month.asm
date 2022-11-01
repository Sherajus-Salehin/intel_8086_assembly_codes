.MODEL SMALL  
.STACK 100H  
.DATA
    ; DEFINE YOUR VARIABLES HERE
    a dw "specify year: $"
    b db "28$"
    c db "29$"
    d db "30$"
    e db "31$"
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX    
        
        
        ; YOUR CODE STARTS HERE
        mov ah,1
        int 21h
        sub al,030h
        
        cmp al,04h
        JE p30
        cmp al,02h
        JE feb
        jmp p31
          	
        feb:
        lea dx,a
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        sub al,030h
        mov bl, 010h
        mul bl
         
        
        mov ch,al
        mov ah,1
        int 21h
        sub al,030h
        
        add ch,al
        
        mov ah,1
        int 21h
        sub al,030h
        mul bl
       
        
        mov cl,al
        mov ah,1
        int 21h
        sub al,030h
        add cl,al
        
        mov dx,0
        mov ah,00h
        mov al,cl
        mov bl,04h
        div bl
        
        cmp ah,00
        JE p29
        jmp p28 
        
        
                
        p28:
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
      
        
        lea dx,b
        mov ah,9
        int 21h

        jmp end
        
        p29:
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
      
        
        lea dx,c
        mov ah,9
        int 21h
        jmp end
        
        
        p30:
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
      
        
        lea dx,d
        mov ah,9
        int 21h
        jmp end
        
        p31:
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
      
        
        lea dx,e
        mov ah,9
        int 21h

        end:  
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
    END MAIN
