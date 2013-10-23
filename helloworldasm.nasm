global _start
section .text

_start:
  mov eax, 4; sys_write
  mov ebx, 1; stdout
  mov ecx, message; message
  mov edx, mlen; size
  int 0x80

  ;exit 
  mov eax, 1
  mov ebx, 5
  int 0x80

section .data
  message: db "Hello World!"
  mlen equ $-message
