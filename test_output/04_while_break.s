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
    li t2, 10
    slt t3, t1, t2
    beq t3, zero, endloop5
    lw t4, -24(fp)
    li t5, 5
    sub t6, t4, t5
    sltiu t6, t6, 1
    beq t6, zero, else6
    j endloop5
    j endif7
else6:
endif7:
    lw s2, -24(fp)
    li s3, 1
    add s4, s2, s3
    sw s4, -24(fp)
    j loop4
endloop5:
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