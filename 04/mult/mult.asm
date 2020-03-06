// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@i
M = 1	//i = 1
@num
M = R0	//num = initial R0 value
ADD R2, R0, num
(LOOP)
@i
D = M
D = D - R1
@END
D; JGT	//If (i - R1) > 0 goto END
R2 = R1 + num
@i
M = M + 1 //i = i + 1
@LOOP
(END)
0; JMP