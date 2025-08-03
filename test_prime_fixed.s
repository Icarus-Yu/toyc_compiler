    .text
    .globl main
    # ToyC Compiler Generated Code
is_prime:
    # Function: is_prime
    # prologue
    addi sp, sp, -64
    sw ra, 60(sp)
    sw fp, 56(sp)
    addi fp, sp, 64
    sw s1, 52(sp)
    sw s10, 48(sp)
    sw s9, 44(sp)
    sw s8, 40(sp)
    sw s7, 36(sp)
    sw s6, 32(sp)
    sw s5, 28(sp)
    sw s4, 24(sp)
    sw s3, 20(sp)
    sw s2, 16(sp)
    sw a0, -52(fp)
    lw t0, -52(fp)
    li t1, 1
    slt t2, t1, t0
    xori t2, t2, 1
    beq t2, zero, else10
    li a0, 0
    lw s1, 52(sp)
    lw s10, 48(sp)
    lw s9, 44(sp)
    lw s8, 40(sp)
    lw s7, 36(sp)
    lw s6, 32(sp)
    lw s5, 28(sp)
    lw s4, 24(sp)
    lw s3, 20(sp)
    lw s2, 16(sp)
    lw ra, 60(sp)
    lw t0, 56(sp)
    addi sp, sp, 64
    mv fp, t0
    ret
    j endif11
else10:
endif11:
    lw t3, -52(fp)
    li t4, 3
    slt t5, t4, t3
    xori t5, t5, 1
    beq t5, zero, else12
    li t6, 1
    mv a0, t6
    lw s1, 52(sp)
    lw s10, 48(sp)
    lw s9, 44(sp)
    lw s8, 40(sp)
    lw s7, 36(sp)
    lw s6, 32(sp)
    lw s5, 28(sp)
    lw s4, 24(sp)
    lw s3, 20(sp)
    lw s2, 16(sp)
    lw ra, 60(sp)
    lw t0, 56(sp)
    addi sp, sp, 64
    mv fp, t0
    ret
    j endif13
else12:
endif13:
    lw t0, -52(fp)
    li t1, 2
    rem t2, t0, t1
    li t3, 0
    sub t4, t2, t3
    sltiu t4, t4, 1
    mv t5, t4
    sltu t5, zero, t5
    sw t5, -56(fp)
    lw t6, -52(fp)
    li t0, 3
    rem t1, t6, t0
    li t2, 0
    sub t3, t1, t2
    sltiu t3, t3, 1
    sltu t6, zero, t3
    lw t0, -56(fp)
    or t4, t0, t6
    beq t4, zero, else14
    li a0, 0
    lw s1, 52(sp)
    lw s10, 48(sp)
    lw s9, 44(sp)
    lw s8, 40(sp)
    lw s7, 36(sp)
    lw s6, 32(sp)
    lw s5, 28(sp)
    lw s4, 24(sp)
    lw s3, 20(sp)
    lw s2, 16(sp)
    lw ra, 60(sp)
    lw t0, 56(sp)
    addi sp, sp, 64
    mv fp, t0
    ret
    j endif15
else14:
endif15:
    li t1, 5
    sw t1, -56(fp)
loop16:
    lw t2, -56(fp)
    lw t3, -56(fp)
    mul t4, t2, t3
    lw t5, -52(fp)
    slt t6, t5, t4
    xori t6, t6, 1
    beq t6, zero, endloop17
    lw t0, -52(fp)
    lw t1, -56(fp)
    rem t2, t0, t1
    li t3, 0
    sub t4, t2, t3
    sltiu t4, t4, 1
    mv t5, t4
    sltu t1, zero, t5
    sw t1, -64(fp)
    lw t6, -52(fp)
    lw t0, -56(fp)
    li t1, 2
    add t2, t0, t1
    lw t3, -52(fp)
    rem t4, t3, t2
    li t5, 0
    sub t6, t4, t5
    sltiu t6, t6, 1
    sltu t2, zero, t6
    lw t3, -64(fp)
    or t0, t3, t2
    beq t0, zero, else18
    li a0, 0
    lw s1, 52(sp)
    lw s10, 48(sp)
    lw s9, 44(sp)
    lw s8, 40(sp)
    lw s7, 36(sp)
    lw s6, 32(sp)
    lw s5, 28(sp)
    lw s4, 24(sp)
    lw s3, 20(sp)
    lw s2, 16(sp)
    lw ra, 60(sp)
    lw t0, 56(sp)
    addi sp, sp, 64
    mv fp, t0
    ret
    j endif19
else18:
endif19:
    lw t4, -56(fp)
    li t5, 6
    add t6, t4, t5
    sw t6, -56(fp)
    j loop16
endloop17:
    li t0, 1
    mv a0, t0
    lw s1, 52(sp)
    lw s10, 48(sp)
    lw s9, 44(sp)
    lw s8, 40(sp)
    lw s7, 36(sp)
    lw s6, 32(sp)
    lw s5, 28(sp)
    lw s4, 24(sp)
    lw s3, 20(sp)
    lw s2, 16(sp)
    lw ra, 60(sp)
    lw t0, 56(sp)
    addi sp, sp, 64
    mv fp, t0
    ret
main:
    # Function: main
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    sw s1, 4(sp)
    li t0, 25
    mv a0, t0
    jal ra, is_prime
    sw a0, -16(fp)
    lw t1, -16(fp)
    mv a0, t1
    lw s1, 4(sp)
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret