.intel_syntax noprefix
.global _start
.text

print:
  mov rax, 1
  mov rdi, 1
  lea rsi, hello_string
  mov rdx, 14
  syscall
  ret
_start:

  ;# sys_write
  call print
  

  ;# sys_exit
  mov rax, 60
  xor rdi, rdi
  syscall

.data
hello_string:
        .asciz  "Hello, world!\n"
