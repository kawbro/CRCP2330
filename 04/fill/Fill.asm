// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(RESTART)
@SCREEN
D = A
@0
M = D	//PUT SCREEN START LOCATION IN RAM0


(KBDCHECK)

@KBD
D = M
@BLACK
D;JGT	//Jump if key pressed
@WHITE
D;JEQ	//Jump to white

@KBDCHECK
0;JMP

(BLACK)
@1
M = -1	//Fill screen with black
@CHANGE
0;JMP

(WHITE)
@1
M = 0	//Fill screen with white
@CHANGE
0;JMP

(CHANGE)
@1	//Check screen
D = M	//D = Black or White

@0
A = M	
M = D	//FILL pixel

@0
D = M + 1	//Next pixel
@KBD
D = A - D	//KBD - SCREEN = A

@0
M = M + 1	//Next pixel
A = M

@CHANGE
D;JGT	//Exit if screen is black

@RESTART
0;JMP