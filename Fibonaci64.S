#Fibonaci sa visom preciznoscu

.section .data
	n: .long 5 #koji clan se trazi
	f: .quad 0 #ovde ce se upisati
	gr: .byte 0

.section .text
.globl main

main:
	movl $1, %eax
	movl $0, %ebx
	movl $1, %ecx
	movl $0, %edx
petlja:
	cmpl $2, n
	je kraj
	addl %eax, %ecx
	adcl %ebx, %edx
	jc greska
	decl n
	movl %ecx, f
	movl %edx, f+4
	xchgl %eax, %ecx
	xchgl %ebx, %edx
	jmp petlja
greska:
	incb gr
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
