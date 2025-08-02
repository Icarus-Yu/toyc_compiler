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
    li t0, 0
    sw t0, -24(fp)
    li t1, 0
    sw t1, -28(fp)
loop4:
    lw t2, -24(fp)
    li t3, 5
    slt t4, t2, t3
    beq t4, zero, endloop5
    lw t5, -24(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -24(fp)
    lw s3, -24(fp)
    li s4, 3
    sub t0, s3, s4
    sltiu t0, t0, 1
    beq t0, zero, else6
    j loop4
    j endif7
else6:
endif7:
    lw t1, -28(fp)
    li t2, 1
    add t3, t1, t2
    sw t3, -28(fp)
    j loop4
endloop5:
    lw t4, -28(fp)
    mv a0, t4
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret