#Poredjenje dva broja sa visom preciznoscu

.section .data
	a: .quad 5
	b: .quad 8

.section .text
.globl main

main: 
	movl a+4, %eax
	cmpl %eax, b+4
	jg b_vece
	jl a_vece
	
	movl a, %eax
	cmpl %eax, b
	ja b_vece
	jb a_vece

	movl $0, %eax
	jmp kraj
b_vece:
	movl $-1, %eax
	jmp kraj
a_vece:
	movl $1, %eax
	jmp kraj
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
