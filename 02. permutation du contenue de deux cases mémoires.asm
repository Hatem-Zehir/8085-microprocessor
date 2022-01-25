	   MVI A,11	// b <- 22
	   STA 8000
	   MVI A,22
	   STA 8010
	   STA 8005
	   LDA 8000
	   STA 8010
	   LDA 8005
	   STA 8000
	   RST 1
