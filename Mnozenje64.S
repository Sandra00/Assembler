#Mnozenje preko sabiranja u visoj preciznosti

.section .data
	a: .quad 5
	b: .quad 6 #brojac
	r: .quad 0
	gr: .byte 0

.section .text
.globl main

main:
	movl a, %eax
	movl a+4, %ebx
petlja:
	cmpl $0, b
	jne mnozi
	cmpl $0, b+4
	je kraj
mnozi:
	addl %eax, r
	adcl %ebx, r+4
	jc greska
	subl $1, b
	jmp petlja
greska:
	incb gr
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
	
