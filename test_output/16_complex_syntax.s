    .text
    .globl main
    # ToyC Compiler Generated Code
factorial:
    # Function: factorial
    # prologue
    addi sp, sp, -32
    sw ra, 28(sp)
    sw fp, 24(sp)
    addi fp, sp, 32
    sw s4, 20(sp)
    sw s3, 16(sp)
    sw s2, 12(sp)
    sw a0, -24(fp)
    li t0, 1
    sw t0, -28(fp)
    lw t1, -24(fp)
    li t2, 0
    slt t3, t2, t1
    xori t3, t3, 1
    beq t3, zero, else4
    li t4, 1
    mv a0, t4
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif5
else4:
loop6:
    lw t5, -24(fp)
    li t6, 1
    slt s2, t6, t5
    beq s2, zero, endloop7
    lw s3, -28(fp)
    lw s4, -24(fp)
    mul t0, s3, s4
    sw t0, -28(fp)
    lw t1, -24(fp)
    li t2, 1
    sub t3, t1, t2
    sw t3, -24(fp)
    j loop6
endloop7:
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
endif5:
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
    li t0, 1
    sub t1, zero, t0
    sw t1, -24(fp)
    li t2, 3
    sub t3, zero, t2
    sw t3, -28(fp)
    li t4, 0
    sw t4, -32(fp)
    lw t5, -24(fp)
    lw t6, -28(fp)
    slt s2, t6, t5
    mv s3, s2
    lw s4, -24(fp)
    lw t0, -28(fp)
    sub t1, s4, t0
    li t2, 1
    slt t3, t2, t1
    sltu t5, zero, s3
    sltu t6, zero, t3
    and t4, t5, t6
    beq t4, zero, else16
    lw t5, -24(fp)
    mv a0, t5
    jal ra, factorial
    sw a0, -32(fp)
    j endif17
else16:
    lw t6, -24(fp)
    lw s2, -28(fp)
    slt s3, t6, s2
    mv s4, s3
    lw t0, -24(fp)
    lw t1, -28(fp)
    sub t2, t0, t1
    sltiu t2, t2, 1
    sltu t5, zero, s4
    sltu t6, zero, t2
    or t3, t5, t6
    beq t3, zero, else18
    lw t4, -24(fp)
    lw t5, -28(fp)
    add t6, t4, t5
    sub s2, zero, t6
    mv a0, s2
    jal ra, factorial
    sw a0, -32(fp)
    j endif19
else18:
    lw s3, -24(fp)
    lw s4, -28(fp)
    mul t0, s3, s4
    mv a0, t0
    jal ra, factorial
    sw a0, -32(fp)
endif19:
endif17:
loop20:
    lw t1, -32(fp)
    li t2, 100
    slt t3, t2, t1
    beq t3, zero, endloop21
    lw t4, -32(fp)
    li t5, 2
    rem t6, t4, t5
    li s2, 0
    sub s3, t6, s2
    sltiu s3, s3, 1
    beq s3, zero, else22
    lw s4, -32(fp)
    li t0, 2
    div t1, s4, t0
    sw t1, -32(fp)
    j endif23
else22:
    lw t2, -32(fp)
    li t3, 1
    sub t4, t2, t3
    sw t4, -32(fp)
endif23:
    j loop20
endloop21:
    lw t5, -32(fp)
    li t6, 8
    rem s2, t5, t6
    mv s3, s2
    li s4, 3
    mv a0, s4
    jal ra, factorial
    div t0, s3, a0
    mv a0, t0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret