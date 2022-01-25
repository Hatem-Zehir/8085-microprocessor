# ORG 7200
	   MVI A,19
	   STA 8000
	   MVI A,6A
	   STA 8001
// **************************************************
	   LXI H,8000
	   MVI C,00
	   MOV B,M
	   INX H
	   MOV A,M

LOOP:	   CMP B
	   JC SKIP
	   SUB B
	   INR C
	   JMP LOOP

SKIP:	   STA 8002
	   MOV A,C
	   STA 8003
	   RST 1
