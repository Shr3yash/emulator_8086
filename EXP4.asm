include 'emu8086.inc'
.model small
.stack 100h

.data

  array db 3,6,1,9,5
  
  
.code
    
    main proc
        mov ax,@data
        mov ds,ax
        
        mov si,offset array
        mov cx,5
        mov bl,[si]
        
        shrr:
           cmp [si],bl
           jge update
           resume:
           inc si 
           loop shrr 
           
           
           print 'largest value of the array :'
           add bl,48
           mov dl,bl
           mov ah,02h
           int 21h
           
           
           update:
            mov bl,[si]
            jmp resume
            
            
    main endp
    
end main
        
        
           
         
           
      
        

