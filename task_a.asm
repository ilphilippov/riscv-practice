.text
.globl main

main:
    li a7, 5
    ecall

    li t0, 20
    beq a0, t0, equal

    li a0, 0
    li a7, 1
    ecall
    j exit

equal:
    li a0, 1
    li a7, 1
    ecall

exit:
    li a7, 10
    ecall