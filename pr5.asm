.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
N1 DWORD ?
N2 DWORD ?
N3 DWORD ?
N4 DWORD ?
sum DWORD ?
P1 BYTE "Enter grade 1",0
P2 BYTE "Enter grade 2",0
P3 BYTE "Enter grade 3",0
P4 BYTE "Enter grade 4",0
String BYTE 40 Dup(?)
RE1 BYTE "The sum is",0
ce BYTE 11 Dup(?),0
RE2 BYTE "The average is",0
inp BYTE 11 Dup(?)
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
input P4,String,40
atod String
mov N4,eax
mov eax,N1
add eax,N2
add eax,N3
add eax,N4
mov sum,eax
dtoa ce,sum
output RE1,ce
mov eax,N1
add eax,N2
add eax,N3
add eax,N4
mov ebx,4
cdq
div ebx
dtoa inp,eax
output RE2,inp
mov eax,0
ret
MainProc ENDP
END
