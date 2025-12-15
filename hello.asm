section .data
	msg db "Hello, World!", 10
	len equ $ - msg
section .text
	global _main

_main:
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel msg]
	mov rdx, len
	syscall

	mov rax, 0x2000001
	mov rdi, 0
	syscall
