.MODEL SMALL  
.STACK 100H  
.DATA
    ; DEFINE YOUR VARIABLES HERE
    a dw "The quotient is$"
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX    
        
        
        ; YOUR CODE STARTS HERE
        mov ah,1
        int 21h
        mov bl,al
        
        sub bl,30h 
        
        mov ah,1
        int 21h   
        
        sub al,30h
        mov cl, al
        
        mov al,bl
        mov bl,cl
        mov ah,0
        div bl
        ;ret
        mov bl,al   
        
        lea dx,a
        mov ah,9
        int 21h
        mov dx,0
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        
                
        mov dl,bl
        add dl,30h      
        mov ah,2
        int 21h
        
         
        
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
    END MAIN
