.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
W1 DWORD ?
W2 DWORD ?
W3 DWORD ?
W4 DWORD ?
G1 DWORD ?
G2 DWORD ?
G3 DWORD ?
G4 DWORD ?
s1 DWORD ?
P1 BYTE "Enter grade 1",0
P2 BYTE "Enter weigth 1",0
P3 BYTE "Enter grade 2",0
P4 BYTE "Enter weigth 2",0
P5 BYTE "Enter grade 3",0
P6 BYTE "Enter weigth 3",0
P7 BYTE "Enter grade 4",0
P8 BYTE "Enter weigth 4",0
String BYTE 40 Dup(?)
RE1 BYTE "The weight sum",0
String1 BYTE 11 Dup(?),0
RE2 BYTE "Sum of weigth",0
String2 BYTE 11 Dup(?),0
RE3 BYTE "Weighted average",0
String3 BYTE 11 Dup(?),0
.CODE
MainProc PROC
input P1,String,40
atod String
mov G1,eax
input P2,String,40
atod String
mov W1,eax
input P3,String,40
atod String
mov G2,eax
input P4,String,40
atod String
mov W2,eax
input P5,String,40
atod String
mov G3,eax
input P6,String,40
atod String
mov W3,eax
input P7,String,40
atod String
mov G4,eax
input P8,String,40
atod String
mov W4,eax
mov eax,G1
imul eax,W1
mov s1,eax
mov eax,G2
imul eax,W2
add eax,s1
mov s1,eax
mov eax,G3
 imul eax,W3
 add eax,s1
 mov s1,eax
 mov eax,G4
 imul eax,W4
 add eax,s1
  mov ebx,eax
 dtoa String1,eax
 output RE1,String1
 mov eax,W1
 add eax,W2
 add eax,W3
 add eax,W4
 dtoa String2,eax
 output RE2,String2
 atod String2
 xchg eax,ebx
 cdq
 div ebx
 dtoa String3,eax
 output RE3,String3
 
 mov eax,0
 ret
 MainProc ENDP
 END