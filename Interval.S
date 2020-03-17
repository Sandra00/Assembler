#Ispitati da li broj pripada intervalu, ako da %esi je 1, ne %esi je 0

.section .data
	a: .long 3
	b: .long 5
	c: .long 8

.section .text
.globl main

main:
	movl a, %eax
	cmpl %eax, b
	ja ne
	cmpl %eax, c
	jb ne
	movl $1, %esi
	jmp kraj
ne:
	movl $0, %esi
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
