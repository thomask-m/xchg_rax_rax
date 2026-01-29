; the theme here seems to be the various ways to zero out registers
section .text
	global _start
_start:
	; xor-ing a register with itself zeroes the register
	xor      eax, eax 
	; loading the effective address (lea) is an instruction
	; that calculates whatever the content is in the brackets
	; so this will just set rbx to 0.
	lea      rbx, [0] 
	; loop decrements the value of rcx by 1, checks if it's zero
	; then continues if it's not. if it is zero, it breaks out of the loop.
	; $ is a symbol for the current instruction address so this is just a
	; loop that continuously decrements rcx until it's zero, effectively
	; setting it to zero.
	; rcx has to be positive non-zero for this to work though.
	loop     $
	; mov is mov, just as always
	mov      rdx, 0
	; and-ing with a zero is the same as setting the destination to zero
	and      esi, 0
	; subtracting with yourself is the same as setting the destination to zero
	sub      edi, edi
	; these two seem to be combined. push zero decrements the stack pointer
	; by the word size and pushes the zero to the top of the stack.
	; but then pop will take whatever is at the top of the stack (so the zero)
	; and then place it into the base pointer (rbp).
	; so this is effectively setting the base pointer to 0.
	; also, remember that the "top" of the stack is a lower address, since
	; the stack grows downwards. this is why push decrements the stack pointer
	; address a word size.
	push     0
	pop      rbp
