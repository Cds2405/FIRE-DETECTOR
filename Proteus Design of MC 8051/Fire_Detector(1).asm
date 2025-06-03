
_main:
	MOV SP+0, #128
;Fire_Detector.c,1 :: 		void main()
;Fire_Detector.c,3 :: 		P2_1_bit = 1;
	SETB P2_1_bit+0
;Fire_Detector.c,4 :: 		P2_0_bit = 1;
	SETB P2_0_bit+0
;Fire_Detector.c,5 :: 		while(1)
L_main0:
;Fire_Detector.c,7 :: 		if(!P2_0_bit)
	JB P2_0_bit+0, L_main2
	NOP
;Fire_Detector.c,9 :: 		P2_1_bit = 0;
	CLR P2_1_bit+0
;Fire_Detector.c,10 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 205
	MOV R7, 189
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;Fire_Detector.c,11 :: 		P2_1_bit = 1;
	SETB P2_1_bit+0
;Fire_Detector.c,12 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 205
	MOV R7, 189
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;Fire_Detector.c,13 :: 		}
L_main2:
;Fire_Detector.c,16 :: 		}
	SJMP L_main0
;Fire_Detector.c,19 :: 		}
	SJMP #254
; end of _main
