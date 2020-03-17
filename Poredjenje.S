#Ako je a<b r=2, a=b r=0 i a>b r=1

.section .data
	a: .long 5
	b: .long 6
	r: .long 0
.section .text
.globl main

main:
	movl $5, %eax
	
	cmpl a, %ebx
	jb manje_b
	ja vece_b
	jmp kraj
manje_b:
	movl $1, r
	jmp kraj
vece_b:
	movl $2, r
	jmp kraj
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
