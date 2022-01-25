# ORG 7200
	   MVI A,19
	   STA 8000
	   MVI A,6A
	   STA 8001
	   MVI A,15
	   STA 8002
	   MVI A,5C
	   STA 8003
// **************************************************
	   LHLD 8000
	   XCHG
	   LHLD 8002
	   MVI C,00
	   MOV A,E
	   SUB L
	   STA 8004
	   MOV A,D
	   SBB H
	   STA 8005
	   RST 1
