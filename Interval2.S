#Ispitati da li pripada nekom od dva intervala(10-20 i 40-50), ako da %esi je 1, ne %esi je 0

.section .data
	a: .long 13

.section .text
.globl main

main:
	movl $10, %eax
	movl $20, %ebx
	movl $40, %ecx
	movl $50, %edx

	cmpl a, %eax
	ja ne
	cmpl a, %ebx
	jb dalje
	movl $1, %esi
	jmp kraj
dalje:
	cmpl a, %ecx
	ja ne
	cmpl a, %edx
	jb ne
	movl $1, %esi
	jmp kraj
ne:
	movl $0, %esi
	jmp kraj
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
