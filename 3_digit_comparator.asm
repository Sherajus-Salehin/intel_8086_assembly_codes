.MODEL SMALL  
.STACK 100H  
.DATA
    ; DEFINE YOUR VARIABLES HERE
    a dw "1st input: $"
    b dw "2nd input: $"
    c dw "3rd input: $"
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX    
        
        
        ; YOUR CODE STARTS HERE
        lea dx,a
        mov ah,9
        int 21h
        mov dx,0
        
        mov ah,1
        int 21h
        mov cl,al
        sub cl,30h 
         
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        lea dx,b
        mov ah,9
        int 21h
        mov dx,0
         
        mov ah,1
        int 21h    
        sub al,30h
        mov bl, al
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        lea dx,c
        mov ah,9
        int 21h
        mov dx,0
         
        mov ah,1
        int 21h    
        sub al,30h
        mov bh,al
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        
        
        
        cmp cl,bl
        JG clSupremacy
        JL blSupremacy
        
        
        clSupremacy:
        cmp cl,bh
        JG printcl
        JL printbh
        
        blSupremacy:
        cmp bl,bh
        JG printbl
        JL printbh
        
                     
        printbh:
        mov dl,bh
        add dl,30h      
        mov ah,2
        int 21h
        jmp end
       
        printbl: 
        mov dl,bl
        add dl,30h      
        mov ah,2
        int 21h
        jmp end           
        
        
        printcl:
        mov dl,cl
        add dl,30h      
        mov ah,2
        int 21h
         end:  
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
    END MAIN
