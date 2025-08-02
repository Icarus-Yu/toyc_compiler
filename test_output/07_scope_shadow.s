    .text
    .globl main
    # ToyC Compiler Generated Code
main:
    # Function: main
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    li t0, 1
    sw t0, -12(fp)
    li t1, 2
    sw t1, -16(fp)
    lw t2, -16(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -16(fp)
    lw t5, -12(fp)
    mv a0, t5
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret