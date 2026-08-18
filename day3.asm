;#---------------------
;#  Push Pop
;#---------------------
.intel_syntax noprefix
.global _start
.text
_start:

  ;# sys_write
  mov rax, 1
  mov rdi, 1
  lea rsi, hello_string
  mov rdx, 14
  syscall

  push 5000
  pop rbx
  ;# sys_exit
  mov rax, 60
  mov rdi, rbx
  syscall

.data
hello_string:
        .asciz  "Hello, world!\n"
