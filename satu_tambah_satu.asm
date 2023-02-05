section .data
  num1 db 1
  num2 db 1
  result db ?

section .text
  global _start

_start:
  ; Load the first number into the AL register
  mov al, num1
  
  ; Load the second number into the BL register
  mov bl, num2
  
  ; Add the two numbers together and store the result in the AL register
  add al, bl
  
  ; Store the result in the result variable
  mov [result], al
  
  ; Exit the program
  mov eax, 1
  xor ebx, ebx
  int 0x80
