#Deljenje dva broja sa promenljivim

.section .data
	a: .long 8
	b: .long 3
	r: .long 0
.section .text
.globl main
	
main:
	movl a, %eax
	
petlja:
	cmpl %eax, b
	ja kraj
	subl b, %eax
	incl r
	jmp petlja
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
