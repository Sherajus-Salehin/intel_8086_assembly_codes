                                              .MODEL SMALL  
.STACK 100H  
.DATA
    ; DEFINE YOUR VARIABLES HERE
    a dw "1st side: $"
    b dw "2nd side: $"
    c dw "3rd side: $"
    d dw "4th side: $"
    
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX    
        
        
        ; YOUR CODE STARTS HERE
        lea dx,a
        mov ah,9
        int 21h
        mov dx,0
        ;bh input
        mov ah,1
        int 21h
        sub al,030h
        mov dl, 010h
        mul dl
         
        
        mov bh,al
        mov ah,1
        int 21h
        sub al,030h
        
        add bh,al

         
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        lea dx,b
        mov ah,9
        int 21h
        mov dx,0
        ;bl input
        mov dx,0 
        mov ah,1
        int 21h    
        sub al,030h
        mov dl, 010h
        mul dl
         
        
        mov bl,al
        mov ah,1
        int 21h
        sub al,030h
        
        add bl,al
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        lea dx,c
        mov ah,9
        int 21h
        mov dx,0
        ;ch input 
        mov ah,1
        int 21h    
        sub al,030h
        mov dl, 010h
        mul dl
         
        
        mov ch,al
        mov ah,1
        int 21h
        sub al,030h
        
        add ch,al
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
                
        lea dx,d
        mov ah,9
        int 21h
        mov dx,0
        ;cl input 
        mov ah,1
        int 21h    
        sub al,030h
        mov dl, 010h
        mul dl
         
        
        mov cl,al
        mov ah,1
        int 21h
        sub al,030h
        
        add cl,al
        
        ;comp against bh
        mov dl,bl
        add bl,ch
        add bl,cl
        
        cmp bh,bl
        JGE no        
        mov bl,dl
        ;comp against bl
        mov dl,bh
        add bh,ch
        add bh,cl
        
        cmp bl,bh
        JGE no  
        mov bh,dl
        ;comp against ch
        mov dl,cl
        add cl,bh
        add cl,bl
        
        cmp ch,cl
        JGE no
        mov cl,dl
        ;comp against cl
        mov dl,ch
        add ch,bh
        add ch,bl
        
        cmp cl,ch
        JGE no 
        jmp yes
        
        yes:  
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov dl,'Y'      
        mov ah,2
        int 21h
        jmp end
        
        no:
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h 
        
        mov dl,'N'
        mov ah,2
        int 21h
        end:  
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
    END MAIN
