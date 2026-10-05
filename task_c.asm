.data
array: .space 144

.text
.globl main

main:
    la t0, array

    li t1, 0

    li t2, 36

read_loop:
    beq t1, t2, exit

    li a7, 5
    ecall

    sw a0, 0(t0)

    addi t1, t1, 1

    beq a0, zero, exit

    addi t0, t0, 4

    j read_loop

exit:
    li a7, 10
    ecall