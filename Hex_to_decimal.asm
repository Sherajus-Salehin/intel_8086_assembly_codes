.MODEL SMALL  
.STACK 100H  
.DATA
    ; DEFINE YOUR VARIABLES HERE
    ;d dw"Enter$ "
    a dw "Hex Digit$"
    b dw "IN DECIMAL IT'S $"
    
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX    
        
        
        
        lea dx,a
        mov ah,9
        int 21h
        mov dx,0
        
        
        mov ah,1
        int 21h
        mov cl,al 
        sub cl,11h 
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        lea dx,b
        mov ah,9
        int 21h
        mov dx,0
        
        
        
        mov dl,1
        add dl,30h      
        mov ah,2
        int 21h
        mov dx,0
        
        mov dl,cl     
        mov ah,2
        int 21h

  
        
        
        
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
    END MAIN
