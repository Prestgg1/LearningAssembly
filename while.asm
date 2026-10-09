
format ELF64 executable 3
segment readable executable
entry $

  
  ; sys_write
  inc rbx
  cmp rbx, 5
  jng 0x004000b0
  
  
	mov	edx,msg_size
	lea	rsi,[msg]
	mov	edi,1
	mov	eax,1
	syscall

  ; sys_exit
	xor	edi,edi
  int3
	mov	eax,60
	syscall

segment readable writeable
msg db 'Hello 64-bit world!',0xA
size db 5
msg_size = $-msg
