; Yeah I know that this is assembly x86          
section	.text
   global _start
	
_start:

   mov	eax,4
   mov	edx,len
   mov	ecx,msg
   mov	ebx,1
   int	0x80
	
   mov	eax,1
   int	0x80 

section	.data
msg db 'Hello, world!', 0xa  ;string to be printed
len equ $ - msg     ;length of the string
