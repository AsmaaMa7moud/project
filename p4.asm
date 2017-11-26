.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
ce DWORD ?
N DWORD ?
D DWORD ?
Q DWORD ?
F DWORD ?
DO DWORD ?
P1 BYTE "Enter cents",0
P2 BYTE "Enter nicklkes",0
P3 BYTE "Enter dime",0
P4 BYTE "Enter quarter",0
P5 BYTE "Enter fifty_cent",0
P6 BYTE "Enter dollar",0
String BYTE 40 Dup(?)
V1 BYTE "Dollars is",0
String2 BYTE 11 Dup(?),0
V2 BYTE "Cents is",0
String3 BYTE 11 Dup(?)
.CODE
MainProc PROC
input P1,String,40
atod String
mov ce,eax
input P2,String,40
atod String
mov N,eax
input P3,String,40
atod String
mov D,eax
input P4,String,40
atod String
mov Q,eax
input P5,String,40
atod String
mov F,eax
input P6,String,40
atod String
mov DO,eax
mov eax,N
imul eax,5
mov N,eax
mov eax,D
imul eax,10
mov D,eax
mov eax,Q
imul eax,25
mov Q,eax
mov eax,F
imul eax,50
mov F,eax
mov eax,DO
imul eax,100
add eax,F
add eax,Q
add eax,D
add eax,N
add eax,ce
mov ebx,100
cdq
idiv ebx
dtoa String2,eax
output V1,String2
dtoa String3,edx
output V2,String3
mov eax,0
ret
MainProc ENDP
END
