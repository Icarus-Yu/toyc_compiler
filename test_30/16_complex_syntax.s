    .text
    .globl main
    # ToyC Compiler Generated Code
factorial:
    # Function: factorial
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    sw a0, -12(fp)
    li t0, 1
    sw t0, -16(fp)
    lw t1, -12(fp)
    li t2, 0
    slt t3, t2, t1
    xori t3, t3, 1
    beq t3, zero, else0
    li t4, 1
    mv a0, t4
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif1
else0:
loop2:
    lw t5, -12(fp)
    li t6, 1
    slt t0, t6, t5
    beq t0, zero, endloop3
    lw t1, -16(fp)
    lw t2, -12(fp)
    mul t3, t1, t2
    sw t3, -16(fp)
    lw t4, -12(fp)
    li t5, 1
    sub t6, t4, t5
    sw t6, -12(fp)
    j loop2
endloop3:
    lw t0, -16(fp)
    mv a0, t0
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
endif1:
main:
    # Function: main
    # prologue
    addi sp, sp, -32
    sw ra, 28(sp)
    sw fp, 24(sp)
    addi fp, sp, 32
    li t0, 1
    sub t1, zero, t0
    sw t1, -12(fp)
    li t2, 3
    sub t3, zero, t2
    sw t3, -16(fp)
    li t4, 0
    sw t4, -20(fp)
    lw t5, -12(fp)
    lw t6, -16(fp)
    slt t0, t6, t5
    lw t1, -12(fp)
    lw t2, -16(fp)
    sub t3, t1, t2
    li t4, 1
    slt t5, t4, t3
    sltu t0, zero, t0
    sltu t1, zero, t5
    and t6, t0, t1
    beq t6, zero, else0
    lw t0, -12(fp)
    mv a0, t0
    jal ra, factorial
    sw a0, -20(fp)
    j endif1
else0:
    lw t1, -12(fp)
    lw t2, -16(fp)
    slt t3, t1, t2
    lw t4, -12(fp)
    lw t5, -16(fp)
    sub t6, t4, t5
    sltiu t6, t6, 1
    or t0, t3, t6
    sltu t0, zero, t0
    beq t0, zero, else2
    lw t1, -12(fp)
    lw t2, -16(fp)
    add t3, t1, t2
    sub t4, zero, t3
    mv a0, t4
    jal ra, factorial
    sw a0, -20(fp)
    j endif3
else2:
    lw t5, -12(fp)
    lw t6, -16(fp)
    mul t0, t5, t6
    mv a0, t0
    jal ra, factorial
    sw a0, -20(fp)
endif3:
endif1:
loop4:
    lw t1, -20(fp)
    li t2, 100
    slt t3, t2, t1
    beq t3, zero, endloop5
    lw t4, -20(fp)
    li t5, 2
    rem t6, t4, t5
    li t0, 0
    sub t1, t6, t0
    sltiu t1, t1, 1
    beq t1, zero, else6
    lw t2, -20(fp)
    li t3, 2
    div t4, t2, t3
    sw t4, -20(fp)
    j endif7
else6:
    lw t5, -20(fp)
    li t6, 1
    sub t0, t5, t6
    sw t0, -20(fp)
endif7:
    j loop4
endloop5:
    lw t1, -20(fp)
    li t2, 8
    rem t3, t1, t2
    li t4, 3
    mv a0, t4
    jal ra, factorial
    div t5, t3, a0
    mv a0, t5
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 32
    mv fp, t0
    ret