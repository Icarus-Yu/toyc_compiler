    .text
    .globl main
    # ToyC Compiler Generated Code
fact:
    # Function: fact
    # prologue
    addi sp, sp, -32
    sw ra, 28(sp)
    sw fp, 24(sp)
    addi fp, sp, 32
    sw s4, 20(sp)
    sw s3, 16(sp)
    sw s2, 12(sp)
    sw a0, -24(fp)
    lw t0, -24(fp)
    li t1, 1
    slt t2, t1, t0
    xori t2, t2, 1
    beq t2, zero, else2
    li t3, 1
    mv a0, t3
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif3
else2:
    lw t4, -24(fp)
    lw t5, -24(fp)
    li t6, 1
    sub s2, t5, t6
    mv a0, s2
    jal ra, fact
    lw s3, -24(fp)
    mul s4, s3, a0
    mv a0, s4
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
endif3:
main:
    # Function: main
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    li t0, 5
    mv a0, t0
    jal ra, fact
    mv a0, a0
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret