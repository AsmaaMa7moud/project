.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
N1 DWORD ?
N2 DWORD ?
N3 DWORD ?
P1 BYTE "Enter number 1",0
P2 BYTE "Enter number 2",0
P3 BYTE "Enter number 3",0
String BYTE 40 Dup(?)
RES BYTE "Result is",0
DR BYTE 11 Dup(?)
.CODE
MainProc PROC
input P1,String,40
atod String
mov N1,eax
input P2,String,40
atod String
mov N2,eax
input P3,String,40
atod String
mov N3,eax
mov eax,N1
add eax,N2
imul eax,2
add eax,N3
dtoa DR,eax
output RES,DR
mov eax,0
ret
MainProc ENDP
END