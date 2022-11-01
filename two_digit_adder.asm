.DATA
    ; DEFINE YOUR VARIABLES HERE
 .MODEL SMALL  
.STACK 100H  
   a dw "X= $"
    b db 00h
    c db 00h
    d db 00h
    e db 00h
    
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX    
        
        
        ; YOUR CODE STARTS HERE
        
        lea dx,a
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        sub al,30h
        mov bh,al
        mov b,al
         
        
        mov ah,1
        int 21h
        sub al,030h
        mov bl,al
        mov c,al
       
        mov ah,1       
        int 21h
        sub al,030h
        mov ch,al
        mov d,al
        
        mov ah,1
        int 21h
        sub al,030h
        mov cl,al
        mov e,al
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h

       
        mov dl,b
        add dl,030h
        mov ah,2
        int 21h
        
        mov dl,c
        add dl,030h
        mov ah,2
        int 21h
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h

        mov dl,d
        add dl,030h
        mov ah,2
        int 21h
        
        mov dl,e
        add dl,030h
        mov ah,2
        int 21h
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h

       
        add bl,cl
        mov al,0Ah
        cmp bl,al
        jge overA
        add bh,ch
        cmp bh,al
        jge again
        jmp end2
        
        overA:
        sub bl,0Ah 
        add ch,01h
        add bh,ch
        cmp bh,al
        jge again
        jmp end2
        
        
        again:
        sub bh,0Ah 
        mov ch,01h
        
        
        
        end:
        mov dl,ch
        add dl,030h
        mov ah,2
        int 21h 
        
        mov dl,bh
        add dl,030h
        mov ah,2
        int 21h
        
        mov dl,bl
        add dl,030h
        mov ah,2
        int 21h
        jmp end3
        
        
        end2:
        mov dl,bh
        add dl,030h
        mov ah,2
        int 21h
        
        mov dl,bl
        add dl,030h
        mov ah,2
        int 21h
        
        
        end3:
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
    END MAIN
