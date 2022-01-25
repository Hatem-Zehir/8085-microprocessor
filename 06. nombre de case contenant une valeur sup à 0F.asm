# ORG 7200
	   MVI B,10
	   LXI H,8000

LOOP1:	   MVI A,10
	   INX H
	   MOV M,A
	   DCR B
	   JNZ LOOP1
// **************************************************
	   LXI H,8000
	   MVI A,FF
	   MOV M,A
	   MVI C,10
	   MVI A,00
	   MVI B,00

LOOP:	   INX H
	   MVI A,F0
	   SUB M
	   JM SKIP
	   INR B

SKIP:	   JZ LOOP
	   DCR C
	   JNZ LOOP
	   MOV A,B
	   STA 8100
	   RST 1
