.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
W DWORD ?
X DWORD ?
Y DWORD ?
Z DWORD ?
P1 BYTE "Enter number1",0
P2 BYTE "Enter number2",0
P3 BYTE "Enter number3",0
String BYTE 40 Dup(?)
R BYTE "The Result is",0
re BYTE 40 Dup(?)
.CODE
MainProc PROC
input P1,String,40
atod String
mov X,eax
input P2,String,40
atod String
mov Y,eax
input P3,String,40
atod String
mov Z,eax
mov eax,X
add eax,Y
mov W,eax
mov eax,Z
imul eax,2
sub W,eax
add W,1
mov eax,W
neg eax
dtoa re,eax
output R,re
mov eax,0
ret
MainProc ENDP
END


