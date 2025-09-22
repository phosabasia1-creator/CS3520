
.data
prompt: .asciz "Enter a positive integer: "
error:  .asciz "Error: Please enter a non-negative integer!\n"
result: .asciz "The factorial is "

.text
.global _start
_start:
    # Print prompt
    la a0, prompt
    li a7, 4
    ecall

    # Read integer input
    li a7, 5
    ecall
    mv t0, a0        # store input in t0

    # Check if n < 0
    blt t0, x0, print_error

    # Initialize factorial = 1
    li t1, 1

loop:
    beq t0, x0, done  # if n == 0, stop loop
    mul t1, t1, t0    # factorial *= n
    addi t0, t0, -1   # n = n - 1
    j loop

done:
    # Print result label
    la a0, result
    li a7, 4
    ecall

    # Print factorial result
    mv a0, t1
    li a7, 1
    ecall

    # Exit
    li a7, 10
    ecall

print_error:
    la a0, error
    li a7, 4
    ecall
    li a7, 10
    ecall
