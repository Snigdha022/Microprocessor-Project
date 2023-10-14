DSEG    SEGMENT 'DATA' 
        
        ARRAYS DB  01000000B, 01111111B, 01000110B, 00000000B, 01111110B,00001001B, 00001001B, 01111110B,  00000000B,  00110110B, 01001001B, 01001001B,  01001001B,  00000000B, 01111111B,00001000B, 00001000B, 01111111B, 00000000B,  00111110B,01000001B, 01000001B,  00111110B, 00000000B
        CON DB 0
        
DSEG    ENDS

SSEG    SEGMENT STACK   'STACK'
        DW      100h    DUP(?)
SSEG    ENDS

CSEG    SEGMENT 'CODE'

START   PROC    FAR

 	PUSH    DS
 	MOV     AX, 0
 	PUSH    AX
	MOV     AX, DSEG
 	MOV     DS, AX
 	MOV     ES, AX
 	MOV CX, 0
 	MOV DI, 0
 	
MAINLOOP:
    
    MOV DX, 2070H	 
    MOV Al,00001000B 
    OUT DX, AL
    
    MOV BX, 00000010B
    MOV SI, 0
    MOV AL, 00000010B
    MOV AX, 00000010B
LOOP2:
 	MOV DX, 2001H
 	OUT DX, AX
 	
 	MUL BX
 	ADD AX,BX
 	
 	MOV CX, 04FH
    L0: LOOP L0
 	
 	INC SI
 	
 	CMP SI, 5
 	JL LOOP2
 	
 	MOV DX,2030H
    MOV AL,00000001B  
    OUT DX,AL  
    
    MOV CX, 04FH
    L1: LOOP L1
 	
 	MOV DX, 2002H
 	MOV AX, 01000000B
 	OUT DX,AX 
 	
 	MOV DX,2030H
    MOV AL,00100001B 
    OUT DX,AL
    
    MOV CX, 04FH
    L2: LOOP L2
 	
 	MOV DX, 2002H
 	MOV AX, 01000001B
 	OUT DX,AX
 	
 	MOV DX,2030H 
    MOV AL,00110001B
    OUT DX,AL
 	
 	
 	MOV CX, 04FH
    L3: LOOP L3 
 	
 	MOV DX, 2003H
 	MOV AX, 01000000B
 	OUT DX,AX  
 	
 	MOV DX,2030H
    MOV AL,00111001B
    OUT DX,AL
    MOV CX, 04FH
    L4: LOOP L4
 	
 	MOV DX, 2003H
 	MOV AX, 01000001B
 	OUT DX,AX
 	
 	MOV DX,2030H
    MOV AL,00111101B 
    OUT DX,AL
    
 	MOV CX, 04FH
    L5: LOOP L5
 	
 	MOV BX, 00000010B
    MOV SI, 0
    MOV AL, 00000010B
    MOV AX, 00000010B
LOOP3:
 	MOV DX, 2004H
 	OUT DX, AX
 	
 	MUL BX
 	ADD AX,BX
 	
 	INC SI
 	
 	CMP SI, 5
 	JL LOOP3
 		
 	MOV DX,2030H
    MOV AL,00111111B
    OUT DX,AL
    MOV CX, 04FH
    L6: LOOP L6            
 	 
 	MOV DX, 2006H
 	MOV AX, 00000001B
 	OUT DX, AX
 	 
 	MOV DX, 2006H
 	MOV AX, 00000011B
 	OUT DX, AX           
 	           
 	MOV DX, 2006H
 	MOV AX, 00000111B
 	OUT DX, AX               
 	           
 	           
 	MOV DX, 2006H
 	MOV AX, 00001111B
 	OUT DX, AX               
 	                      
 	           
 	MOV DX, 2006H
 	MOV AX, 00011111B
 	OUT DX, AX 
 	
 	MOV DX, 2006H
 	MOV AX, 00111111B
 	OUT DX, AX
 	
 	MOV DX, 2006H
 	MOV AX, 01111111B
 	OUT DX, AX 
 	MOV DX,2031H
    MOV AL,00000001B
    OUT DX,AL
    
 	MOV CX, 04FH
    L7: LOOP L7  
 	
 	MOV DX, 2007H
 	MOV AX, 00001000B
 	OUT DX, AX  
 		
 	MOV DX,2031H
    MOV AL,00000011B
    OUT DX,AL 
    
    MOV CX, 04FH
    L8: LOOP L8
 	
 	MOV DX, 2008H
 	MOV AX, 00001000B
 	OUT DX, AX
 	
 	MOV DX,2031H
    MOV AL,01000011B
    OUT DX,AL
    MOV CX, 04FH
    L9: LOOP L9         
 	 
 	MOV DX, 2009H
 	MOV AX, 00000001B
 	OUT DX, AX 
 	
 	MOV DX,2031H
    MOV AL,01000111B
    OUT DX,AL
    MOV CX, 04FH
    L10: LOOP L10
 	 
 	MOV DX, 2009H
 	MOV AX, 00000011B
 	OUT DX, AX
 	
 	MOV DX,2031H
    MOV AL,01001111B
    OUT DX,AL
    MOV CX, 04FH
    L11: LOOP L11           
 	           
 	MOV DX, 2009H
 	MOV AX, 00000111B
 	OUT DX, AX
 	
 	MOV DX,2032H
    MOV AL,00000010B
    OUT DX,AL
    MOV CX, 04FH
    L12: LOOP L12               
 	           
 	           
 	MOV DX, 2009H
 	MOV AX, 00001111B
 	OUT DX, AX
 	
 	MOV DX,2032H
    MOV AL,00000110B
    OUT DX,AL
    MOV CX, 04FH
    L13: LOOP L13             
 	                      
 	           
 	MOV DX, 2009H
 	MOV AX, 00011111B
 	OUT DX, AX
 	MOV CX, 04FH
    L14: LOOP L14 
 	
 	MOV DX, 2009H
 	MOV AX, 00111111B
 	OUT DX, AX
 	MOV CX, 04FH
    L15: LOOP L15
 	
 	MOV DX, 2009H
 	MOV AX, 01111111B
 	OUT DX, AX               
 	
    MOV CX, 04FH
    L16: LOOP L16
    
   
    
 	MOV DX, 200BH
 	MOV AX, 00000001B
 	OUT DX,AX
 	
 	MOV DX, 200BH
 	MOV AX, 00001001B
 	OUT DX,AX
 	
 	
 	MOV DX, 200BH
 	MOV AX, 01001001B
 	OUT DX,AX
 	
 	MOV CX, 04FH
    L17: LOOP L17
 	
 	MOV DX, 200CH
 	MOV AX, 00000001B
 	OUT DX,AX   
 	
 	MOV DX, 200CH
 	MOV AX, 00001001B
 	OUT DX,AX
 	
 	
 	MOV DX, 200CH
 	MOV AX, 01001001B
 	OUT DX,AX
 	
 	
 	MOV CX, 04FH
    L18: LOOP L18
 	
 	MOV DX, 200DH
 	MOV AX, 00000001B
 	OUT DX,AX
 	
 	MOV DX, 200DH
 	MOV AX, 00001001B
 	OUT DX,AX
 	
 	
 	MOV DX, 200DH
 	MOV AX, 01001001B
 	OUT DX,AX
 	
 	MOV CX, 04FH
    L19: LOOP L19
 	             
 	
 	MOV DX, 200EH
 	MOV AX, 00000010B
 	OUT DX,AX
 	
 	MOV DX, 200EH
 	MOV AX, 00000110B
 	OUT DX,AX
 	
 	
 	MOV DX, 200EH
 	MOV AX, 00010110B
 	OUT DX,AX
 	
 	
 	MOV DX, 200EH
 	MOV AX, 00110110B
 	OUT DX,AX
 	
 	MOV CX, 04FH
    L20: LOOP L20

 	
 	MOV BX, 00000010B
    MOV SI, 0
    MOV AL, 00000010B
    MOV AX, 00000010B
    
LOOP4:
 	MOV DX, 2010H
 	OUT DX, AX
 	
 	MUL BX
 	ADD AX,BX
 	
 	MOV CX, 04FH
    L21: LOOP L21
 	INC SI
 	
 	CMP SI, 6
 	JL LOOP4
 	
 	MOV DX, 2011H
 	MOV AX, 00000001B
 	OUT DX, AX
 	
 	MOV DX, 2011H
 	MOV AX, 00001001B
 	OUT DX, AX
 	
 	MOV CX, 04FH
    L22: LOOP L22
    
 	MOV DX, 2012H
 	MOV AX, 00000001B
 	OUT DX, AX

 	MOV DX, 2012H
 	MOV AX, 00001001B
 	OUT DX, AX
 	
 	MOV CX, 04FH
    L23: LOOP L23
 	
 	MOV BX, 00000010B
    MOV SI, 0
    MOV AL, 00000010B
    MOV AX, 00000010B
    
LOOP5:
 	MOV DX, 2013H
 	OUT DX, AX
 	
 	MUL BX
 	ADD AX,BX
 	
 	MOV CX, 04FH
    L24: LOOP L24
 	INC SI
 	
 	CMP SI, 6
 	JL LOOP5

    MOV DX, 2015H
    MOV AX, 00000010B
    OUT DX,AX
   
    MOV DX, 2015H
    MOV AX, 00000110B
    OUT DX,AX
    
    MOV DX, 2015H
    MOV AX, 01000110B
    OUT DX,AX
    
    MOV CX, 04FH
    L25: LOOP L25
   
 	MOV DX, 2016H
 	MOV AX, 00000001B
 	OUT DX, AX
 	 
 	MOV DX, 2016H
 	MOV AX, 00000011B
 	OUT DX, AX           
 	           
 	MOV DX, 2016H
 	MOV AX, 00000111B
 	OUT DX, AX               
       
 	MOV DX, 2016H
 	MOV AX, 00001111B
 	OUT DX, AX               
            
 	MOV DX, 2016H
 	MOV AX, 00011111B
 	OUT DX, AX 
 	
 	MOV DX, 2016H
 	MOV AX, 00111111B
 	OUT DX, AX
 	
 	MOV DX, 2016H
 	MOV AX, 01111111B
 	OUT DX, AX                
 	
    MOV CX, 04FH
    L26: LOOP L26
   
    MOV DX, 2017H
    MOV AX, 01000000B
    OUT DX,AX
    
    MOV CX, 04FH
    L27: LOOP L27
    
    MOV CON, 0 
    MOV SI, 24
REPEAT:

    MOV CX, 04FH
    L28: LOOP L28
    
    MOV DX, 2017H
    MOV CX, 24 
    DEC SI
    
    INC CON
    CMP CON, 25
    JAE CLEAR0
        
SCROLL: 
        
    MOV AL, ARRAYS[SI]
    OUT DX, AL   
    
    INC SI
    DEC DX 
    
    CMP DX, 1FFFH
    JBE REPEAT
    
    CMP SI, 24
    JAE NEXT 
    LOOP SCROLL      
          
NEXT:
    MOV SI, 0
    LOOP SCROLL 


CLEAR0:
    
    MOV CX, 04FH
    L29: LOOP L29
    
    MOV DX, 2070H	 
    MOV Al, 00000000B 
    OUT DX, AL
    MOV DX,2000H 
CLEAR1:
    MOV AL,00000000B
    OUT DX,AL
    INC CX
    INC DX
    CMP CX, 25
    JLE CLEAR1
    
    MOV CX, 04FH
    L30: LOOP L30
    
    MOV SI,0
    MOV DX, 2030H
    
CLEAR2:
    MOV AL, 00000000B
    OUT DX, AL
    INC SI
    INC DX
    
    CMP SI,3
    JLE CLEAR2

    MOV CX,0
    INC DI
    CMP DI,5
    JL MAINLOOP

 ; return to operating system:

	RET
START   ENDP

CSEG    ENDS 

        END    START