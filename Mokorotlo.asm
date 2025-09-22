.data
prompt: .asciz "Enter height of Basotho Hat: "
star:   .asciz "*"
newline:.asciz "\n"

.text
.global _start
_start:
    # Prompt user
    la a0, prompt
    li a7, 4
    ecall

    # Read integer n
    li a7, 5
    ecall
    mv t0, a0        # t0 = n (height)

    li t1, 1         # line counter = 1

outer_loop:
    bgt t1, t0, exit # if line > n, stop

    mv t2, x0        # reset star counter = 0

inner_loop:
    bge t2, t1, newline_print  # if stars printed == line count, break
    la a0, star
    li a7, 4
    ecall
    addi t2, t2, 1
    j inner_loop

newline_print:
    la a0, newline
    li a7, 4
    ecall

    addi t1, t1, 1   # line++
    j outer_loop

exit:
    li a7, 10
    ecall
