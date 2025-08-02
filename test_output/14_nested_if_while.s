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
loop4:
    lw t1, -24(fp)
    li t2, 5
    slt t3, t1, t2
    beq t3, zero, endloop5
    lw t4, -24(fp)
    li t5, 2
    rem t6, t4, t5
    li s2, 0
    sub s3, t6, s2
    sltiu s3, s3, 1
    beq s3, zero, else6
    lw s4, -24(fp)
    li t0, 2
    add t1, s4, t0
    sw t1, -24(fp)
    j endif7
else6:
    lw t2, -24(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -24(fp)
endif7:
    j loop4
endloop5:
    lw t5, -24(fp)
    mv a0, t5
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret