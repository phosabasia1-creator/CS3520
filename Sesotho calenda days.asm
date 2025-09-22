.data
prompt: .asciz "Enter day number (1-7): "
err:    .asciz "Error: Invalid day number!\n"

day1:   .asciz "Mantaha\n"
day2:   .asciz "Labobeli\n"
day3:   .asciz "Laboraro\n"
day4:   .asciz "Labone\n"
day5:   .asciz "Labohlano\n"
day6:   .asciz "Moqebelo\n"
day7:   .asciz "Sontaha\n"

.text
.global _start
_start:
    # Prompt
    la a0, prompt
    li a7, 4
    ecall

    # Read integer input
    li a7, 5
    ecall
    mv t0, a0        # t0 = day number

    # Check range (1–7)
    li t1, 1
    blt t0, t1, invalid
    li t1, 7
    bgt t0, t1, invalid

    # Compare and branch
    li t1, 1
    beq t0, t1, d1
    li t1, 2
    beq t0, t1, d2
    li t1, 3
    beq t0, t1, d3
    li t1, 4
    beq t0, t1, d4
    li t1, 5
    beq t0, t1, d5
    li t1, 6
    beq t0, t1, d6
    li t1, 7
    beq t0, t1, d7

d1: la a0, day1
    j print
d2: la a0, day2
    j print
d3: la a0, day3
    j print
d4: la a0, day4
    j print
d5: la a0, day5
    j print
d6: la a0, day6
    j print
d7: la a0, day7
    j print

print:
    li a7, 4
    ecall
    j exit

invalid:
    la a0, err
    li a7, 4
    ecall

exit:
    li a7, 10
    ecall
