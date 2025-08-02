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
    sw s3, 20(sp)
    sw s2, 16(sp)
    li t0, 0
    sw t0, -20(fp)
    li t1, 1
    sw t1, -24(fp)
    lw t2, -20(fp)
    mv t3, t2
    lw t4, -24(fp)
    lw t5, -20(fp)
    div t6, t4, t5
    sltu t5, zero, t3
    sltu t6, zero, t6
    and s2, t5, t6
    beq s2, zero, else2
    li s3, 1
    mv a0, s3
    lw s3, 20(sp)
    lw s2, 16(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif3
else2:
    li a0, 0
    lw s3, 20(sp)
    lw s2, 16(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
endif3: