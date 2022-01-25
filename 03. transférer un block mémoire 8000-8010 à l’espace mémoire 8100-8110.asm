# ORG 7200
	   LXI H,8000	// hl<-8000
	   LXI D,8100	// de<-8100
	   MVI C,07	// c<-07

LOOP:	   MOV A,M	// a<-m(hl)
	   STAX D	// m(de)<-a
	   INX H	// hl<-hl+1
	   INX D	// de <- de+1
	   DCR C
	   JNZ LOOP
	   RST 1
