.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
L DWORD ?
W DWORD ?
P1 BYTE "Enter rectangle length",0
P2 BYTE "Enter rectangle width",0
String BYTE 40 Dup(?)
RE BYTE "rectangle perimeter",0
inp BYTE 11 Dup(?)
.CODE
MainProc PROC
input P1,String,40
atod String
mov L,eax
input P2,String,40
atod String
mov W,eax
mov eax,L
add eax,W
imul eax,2
dtoa inp,eax
output RE,inp
mov eax,0
ret
MainProc ENDP
END