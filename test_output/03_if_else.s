    .text
    .globl main
    # ToyC Compiler Generated Code
main:
    # Function: main
    # prologue
    addi sp, sp, -32
    sw ra, 28(sp)
    sw fp, 24(sp)
    addi fp, sp, 32
    sw s4, 20(sp)
    sw s3, 16(sp)
    sw s2, 12(sp)
    li t0, 3
    sw t0, -24(fp)
    lw t1, -24(fp)
    li t2, 2
    slt t3, t2, t1
    beq t3, zero, else2
    lw t4, -24(fp)
    li t5, 1
    add t6, t4, t5
    sw t6, -24(fp)
    j endif3
else2:
    lw s2, -24(fp)
    li s3, 1
    sub s4, s2, s3
    sw s4, -24(fp)
endif3:
    lw t0, -24(fp)
    mv a0, t0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret