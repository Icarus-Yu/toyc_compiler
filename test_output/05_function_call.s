    .text
    .globl main
    # ToyC Compiler Generated Code
add:
    # Function: add
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    sw a0, -12(fp)
    sw a1, -16(fp)
    lw t0, -12(fp)
    lw t1, -16(fp)
    add t2, t0, t1
    mv a0, t2
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
main:
    # Function: main
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    li t0, 3
    mv a0, t0
    li t1, 4
    mv a1, t1
    jal ra, add
    sw a0, -12(fp)
    lw t2, -12(fp)
    mv a0, t2
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret