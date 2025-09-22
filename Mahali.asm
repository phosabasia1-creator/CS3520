.data
prompt: .asciz "Enter number of cattle: "
msg1:   .asciz "Not enough for bohali\n"
msg2:   .asciz "Small herd\n"
msg3:   .asciz "Wealthy cattle owner\n"

.text
.global _start
_start:
    # Ask input
    la a0, prompt
    li a7, 4
    ecall

    # Read integer
    li a7, 5
    ecall
    mv t0, a0

    # Check conditions
    li t1, 5
    blt t0, t1, label1

    li t1, 11
    blt t0, t1, label2

    j label3

label1:
    la a0, msg1
    li a7, 4
    ecall
    j exit

label2:
    la a0, msg2
    li a7, 4
    ecall
    j exit

label3:
    la a0, msg3
    li a7, 4
    ecall

exit:
    li a7, 10
    ecall
