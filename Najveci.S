#U %eax staviti najveci

.section .data
	a: .long 1
	b: .long 2
	c: .long 3

.section .text
.globl main

main:
	movl a, %eax
	
	cmpl %eax, b
	ja zamena1
dalje:
	cmpl %eax, c
	ja zamena2
	jmp kraj
zamena1:
	movl b, %eax
	jmp dalje
zamena2:
	movl c, %eax
	jmp kraj
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
