.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC FAR
LEA AX, @DATA
MOV DS, AX
MOV AH, 1
INPUT:
INT 21H
CMP AL, 13
JE EXIT
JMP INPUT
EXIT:
MOV AH, 4CH
INT 21H
MAIN ENDP
END MAIN