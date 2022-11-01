.MODEL SMALL  

.STACK 100H  

.DATA
    ; DEFINE YOUR VARIABLES HERE 
     
    a db 5 dup(?)
    c db 02h 
    
    sum db 00h
    
    ;sherajus salehin

.CODE
    MAIN PROC
        ; YOUR CODE STARTS HERE
 
        mov cx,5
        lea SI,a
        
        INPUT:
           MOV AH,1
           INT 21H
           sub al,30h
           MOV a[SI],AL
           INC SI
        LOOP INPUT 
        
        
        ;mov ax, 1
        mov bl, 2
        ;div bl
       mov cx,0
       mov dx,0
       sub si,5  
       findeven:
        mov ax,00h
        mov al,[si]
        div bl
        cmp ah,0
        je addeven
        jmp end
        
        
        addeven:
         add dl,[si]
        
        end:
        
         cmp cx,5
         je final
         inc cx
         inc si
         jmp findeven
         
          
        final:
        
        mov bl,dl
        
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
