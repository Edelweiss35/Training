.section .text
.globl _start
_start:
movl $1, %eax
movl $_start, %ebx
int $0x80

