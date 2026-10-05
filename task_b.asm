.text
.globl main

main:
    li a7, 5
    ecall
    mv t0, a0         

    li t1, 138

    ble t0, t1, x_is_min

    mv t2, t1          
    mv t3, t0          
    j print_loop

x_is_min:
    mv t2, t0          
    mv t3, t1          

print_loop:
    bgt t2, t3, exit

    mv a0, t2
    li a7, 1
    ecall

    li a0, 32
    li a7, 11
    ecall

    addi t2, t2, 20

    j print_loop

exit:
    li a7, 10
    ecall