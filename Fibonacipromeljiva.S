#Fibonaci sa promeljivom

.section .data
	n: .long 5 #koji clan se trazi
	f: .long 0 #rezultat
	gr: .byte 0

.section .text
.globl main

main:
	movl $1, %eax
	movl $1, %ebx

petlja:
	cmpl $2, n
	jne dalje
	movl %eax, f
	jmp kraj

dalje:
	cmpl $2, n
	je kraj
	addl %eax, %ebx 
	jc greska
	movl %ebx, f
	xchgl %eax, %ebx
	decl n
	jmp dalje

greska:
	incb gr

kraj: 
	movl $1, %eax
	movl $0, %ebx
	int $0x80
