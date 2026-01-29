; xadd exchanges the first operand (destination) with the second operand (source)
; and then loads the sum of the two values into the destination.
; done in a loop like this, this is effectively adding two numbers:
; a cumulative sum of all the numbers that were added before and
; the term from the previous iteration.

; this is basically a good way to write fibonacci sequence. just set rax = rdx = 1.
section .text
	global _start
_start:
.loop:
	xadd     rax, rdx
	loop     .loop
