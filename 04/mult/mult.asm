// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@i
M = 1	//i = 1
@R2
D = 0	//Value of R2 is 0

(LOOP)
@i
D = M 	//D = i
@R1
D = D - A	//D = i, A = @R1; D = i - @R1
@END
D; JGT	//If (i - @R1) > 0 goto END
@R0
A = M		//A = @R0
@R2
D = A + D 	//@R2 = R0 + R2
@i
M = M + 1	//i = i + 1
@LOOP
0; JMP	//Goto LOOP

(END)
@END
0; JMP	//Inf. Loop