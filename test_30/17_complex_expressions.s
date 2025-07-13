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
    lw t0, -12(fp)
    li t1, 1
    slt t2, t1, t0
    xori t2, t2, 1
    beq t2, zero, else0
    li t3, 1
    mv a0, t3
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif1
else0:
endif1:
    lw t4, -12(fp)
    lw t5, -12(fp)
    li t6, 1
    sub t0, t5, t6
    mv a0, t0
    jal ra, factorial
    mul t1, t4, a0
    mv a0, t1
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
fibonacci:
    # Function: fibonacci
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    sw a0, -12(fp)
    lw t0, -12(fp)
    li t1, 0
    slt t2, t1, t0
    xori t2, t2, 1
    beq t2, zero, else0
    li a0, 0
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif1
else0:
endif1:
    lw t3, -12(fp)
    li t4, 1
    sub t5, t3, t4
    sltiu t5, t5, 1
    beq t5, zero, else2
    li t6, 1
    mv a0, t6
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif3
else2:
endif3:
    lw t0, -12(fp)
    li t1, 1
    sub t2, t0, t1
    mv a0, t2
    jal ra, fibonacci
    lw t3, -12(fp)
    li t4, 2
    sub t5, t3, t4
    mv a0, t5
    jal ra, fibonacci
    add t6, a0, a0
    mv a0, t6
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
gcd:
    # Function: gcd
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    sw a0, -12(fp)
    sw a1, -16(fp)
    lw t0, -16(fp)
    li t1, 0
    sub t2, t0, t1
    sltiu t2, t2, 1
    beq t2, zero, else0
    lw t3, -12(fp)
    mv a0, t3
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif1
else0:
endif1:
    lw t4, -16(fp)
    mv a0, t4
    lw t5, -12(fp)
    lw t6, -16(fp)
    rem t0, t5, t6
    mv a1, t0
    jal ra, gcd
    mv a0, a0
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
is_prime:
    # Function: is_prime
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    sw a0, -12(fp)
    lw t0, -12(fp)
    li t1, 1
    slt t2, t1, t0
    xori t2, t2, 1
    beq t2, zero, else0
    li a0, 0
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif1
else0:
endif1:
    lw t3, -12(fp)
    li t4, 3
    slt t5, t4, t3
    xori t5, t5, 1
    beq t5, zero, else2
    li t6, 1
    mv a0, t6
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif3
else2:
endif3:
    lw t0, -12(fp)
    li t1, 2
    rem t2, t0, t1
    li t3, 0
    sub t4, t2, t3
    sltiu t4, t4, 1
    lw t5, -12(fp)
    li t6, 3
    rem t0, t5, t6
    li t1, 0
    sub t2, t0, t1
    sltiu t2, t2, 1
    or t3, t4, t2
    sltu t3, zero, t3
    beq t3, zero, else4
    li a0, 0
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif5
else4:
endif5:
    li t4, 5
    sw t4, -16(fp)
loop6:
    lw t5, -16(fp)
    lw t6, -16(fp)
    mul t0, t5, t6
    lw t1, -12(fp)
    slt t2, t1, t0
    xori t2, t2, 1
    beq t2, zero, endloop7
    lw t3, -12(fp)
    lw t4, -16(fp)
    rem t5, t3, t4
    li t6, 0
    sub t0, t5, t6
    sltiu t0, t0, 1
    lw t1, -12(fp)
    lw t2, -16(fp)
    li t3, 2
    add t4, t2, t3
    rem t5, t1, t4
    li t6, 0
    sub t0, t5, t6
    sltiu t0, t0, 1
    or t1, t0, t0
    sltu t1, zero, t1
    beq t1, zero, else8
    li a0, 0
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif9
else8:
endif9:
    lw t2, -16(fp)
    li t3, 6
    add t4, t2, t3
    sw t4, -16(fp)
    j loop6
endloop7:
    li t5, 1
    mv a0, t5
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 16
    mv fp, t0
    ret
main:
    # Function: main
    # prologue
    addi sp, sp, -112
    sw ra, 108(sp)
    sw fp, 104(sp)
    addi fp, sp, 112
    li t0, 1
    sw t0, -12(fp)
    li t1, 2
    sw t1, -16(fp)
    li t2, 3
    sw t2, -20(fp)
    li t3, 4
    sw t3, -24(fp)
    lw t4, -12(fp)
    lw t5, -16(fp)
    add t6, t4, t5
    lw t0, -20(fp)
    mul t1, t6, t0
    lw t2, -24(fp)
    lw t3, -12(fp)
    mul t4, t2, t3
    add t5, t1, t4
    lw t6, -16(fp)
    lw t0, -20(fp)
    add t1, t6, t0
    lw t2, -12(fp)
    lw t3, -24(fp)
    sub t4, zero, t3
    add t5, t2, t4
    li t6, 2048
    add t0, t5, t6
    rem t1, t1, t0
    li t2, 1
    add t3, t1, t2
    div t4, t5, t3
    lw t5, -12(fp)
    lw t6, -16(fp)
    mul t0, t5, t6
    lw t1, -20(fp)
    mul t2, t0, t1
    lw t3, -24(fp)
    li t4, 2
    sub t5, t3, t4
    lw t6, -20(fp)
    sub t0, t5, t6
    mul t1, t2, t0
    add t2, t4, t1
    sw t2, -28(fp)
    li t3, 0
    sw t3, -32(fp)
    li t4, 1
    sw t4, -36(fp)
    li t5, 2
    sw t5, -40(fp)
    li t6, 0
    sw t6, -44(fp)
    lw t0, -32(fp)
    lw t1, -36(fp)
    slt t2, t1, t0
    lw t3, -40(fp)
    li t4, 1
    add t5, t3, t4
    li t6, 1
    sub t0, t5, t6
    sltiu t0, t0, 1
    sltu t0, zero, t2
    sltu t1, zero, t0
    and t1, t0, t1
    beq t1, zero, else0
    li t2, 1
    sw t2, -44(fp)
    j endif1
else0:
endif1:
    li t3, 0
    sw t3, -48(fp)
    lw t4, -32(fp)
    lw t5, -36(fp)
    slt t6, t4, t5
    lw t0, -40(fp)
    li t1, 2
    add t2, t0, t1
    li t3, 2
    sub t4, t2, t3
    sltiu t4, t4, 1
    or t5, t6, t4
    sltu t5, zero, t5
    beq t5, zero, else2
    li t6, 1
    sw t6, -48(fp)
    j endif3
else2:
endif3:
    li t0, 0
    sw t0, -52(fp)
    lw t1, -32(fp)
    li t2, 0
    slt t3, t2, t1
    lw t4, -36(fp)
    li t5, 0
    slt t6, t4, t5
    sltu t0, zero, t3
    sltu t1, zero, t6
    and t0, t0, t1
    lw t1, -40(fp)
    li t2, 0
    slt t3, t2, t1
    lw t4, -32(fp)
    li t5, 0
    slt t6, t4, t5
    sltu t0, zero, t3
    sltu t1, zero, t6
    and t0, t0, t1
    or t1, t0, t0
    sltu t1, zero, t1
    sltiu t2, t1, 1
    lw t3, -36(fp)
    li t4, 0
    slt t5, t4, t3
    lw t6, -32(fp)
    li t0, 0
    slt t1, t6, t0
    or t2, t5, t1
    sltu t2, zero, t2
    sltu t0, zero, t2
    sltu t1, zero, t2
    and t3, t0, t1
    beq t3, zero, else4
    li t4, 1
    sw t4, -52(fp)
    j endif5
else4:
endif5:
    li t5, 42
    sw t5, -56(fp)
    li t6, 56
    sw t6, -60(fp)
    li t0, 87
    sw t0, -64(fp)
    lw t1, -60(fp)
    mv a0, t1
    lw t2, -64(fp)
    mv a1, t2
    jal ra, gcd
    mv a0, a0
    jal ra, factorial
    lw t3, -56(fp)
    li t4, 5
    div t5, t3, t4
    mv a0, t5
    jal ra, fibonacci
    add t6, a0, a0
    sw t6, -68(fp)
    li t0, 0
    sw t0, -72(fp)
    lw t1, -56(fp)
    lw t2, -60(fp)
    slt t3, t2, t1
    lw t4, -56(fp)
    lw t5, -64(fp)
    slt t6, t5, t4
    sltu t0, zero, t3
    sltu t1, zero, t6
    and t0, t0, t1
    beq t0, zero, else6
    lw t1, -56(fp)
    sw t1, -72(fp)
    j endif7
else6:
    lw t2, -60(fp)
    lw t3, -56(fp)
    slt t4, t3, t2
    lw t5, -60(fp)
    lw t6, -64(fp)
    slt t0, t6, t5
    sltu t0, zero, t4
    sltu t1, zero, t0
    and t1, t0, t1
    beq t1, zero, else8
    lw t2, -60(fp)
    sw t2, -72(fp)
    j endif9
else8:
    lw t3, -64(fp)
    sw t3, -72(fp)
endif9:
endif7:
    li t4, 0
    sw t4, -76(fp)
    li t5, 1
    sw t5, -80(fp)
loop10:
    lw t6, -80(fp)
    li t0, 10
    slt t1, t0, t6
    xori t1, t1, 1
    beq t1, zero, endloop11
    lw t2, -80(fp)
    li t3, 2
    rem t4, t2, t3
    li t5, 0
    sub t6, t4, t5
    sltiu t6, t6, 1
    beq t6, zero, else12
    lw t0, -76(fp)
    lw t1, -80(fp)
    lw t2, -80(fp)
    mul t3, t1, t2
    add t4, t0, t3
    sw t4, -76(fp)
    j endif13
else12:
    lw t5, -80(fp)
    li t6, 3
    rem t0, t5, t6
    li t1, 0
    sub t2, t0, t1
    sltiu t2, t2, 1
    beq t2, zero, else14
    lw t3, -76(fp)
    lw t4, -80(fp)
    lw t5, -80(fp)
    mul t6, t4, t5
    lw t0, -80(fp)
    mul t1, t6, t0
    add t2, t3, t1
    sw t2, -76(fp)
    j endif15
else14:
    lw t3, -76(fp)
    lw t4, -80(fp)
    add t5, t3, t4
    sw t5, -76(fp)
endif15:
endif13:
    lw t6, -80(fp)
    li t0, 1
    add t1, t6, t0
    sw t1, -80(fp)
    j loop10
endloop11:
    li t2, 0
    sw t2, -84(fp)
    li t3, 1
    sw t3, -80(fp)
loop16:
    lw t4, -80(fp)
    li t5, 5
    slt t6, t5, t4
    xori t6, t6, 1
    beq t6, zero, endloop17
    li t0, 1
    sw t0, -88(fp)
    li t1, 1
    sw t1, -92(fp)
loop18:
    lw t2, -88(fp)
    lw t3, -80(fp)
    slt t4, t3, t2
    xori t4, t4, 1
    beq t4, zero, endloop19
    lw t5, -92(fp)
    lw t6, -88(fp)
    mul t0, t5, t6
    sw t0, -92(fp)
    lw t1, -88(fp)
    li t2, 1
    add t3, t1, t2
    sw t3, -88(fp)
    j loop18
endloop19:
    lw t4, -84(fp)
    lw t5, -92(fp)
    add t6, t4, t5
    sw t6, -84(fp)
    lw t0, -80(fp)
    li t1, 1
    add t2, t0, t1
    sw t2, -80(fp)
    j loop16
endloop17:
    li t3, 0
    sw t3, -88(fp)
    lw t4, -56(fp)
    mv a0, t4
    jal ra, is_prime
    beq a0, zero, else20
    lw t5, -60(fp)
    mv a0, t5
    jal ra, is_prime
    beq a0, zero, else22
    lw t6, -56(fp)
    lw t0, -60(fp)
    mul t1, t6, t0
    sw t1, -88(fp)
    j endif23
else22:
    lw t2, -64(fp)
    mv a0, t2
    jal ra, is_prime
    beq a0, zero, else24
    lw t3, -56(fp)
    lw t4, -64(fp)
    mul t5, t3, t4
    sw t5, -88(fp)
    j endif25
else24:
    lw t6, -56(fp)
    sw t6, -88(fp)
endif25:
endif23:
    j endif21
else20:
    lw t0, -60(fp)
    mv a0, t0
    jal ra, is_prime
    beq a0, zero, else26
    lw t1, -64(fp)
    mv a0, t1
    jal ra, is_prime
    beq a0, zero, else28
    lw t2, -60(fp)
    lw t3, -64(fp)
    mul t4, t2, t3
    sw t4, -88(fp)
    j endif29
else28:
    lw t5, -60(fp)
    sw t5, -88(fp)
endif29:
    j endif27
else26:
    lw t6, -64(fp)
    mv a0, t6
    jal ra, is_prime
    beq a0, zero, else30
    lw t0, -64(fp)
    sw t0, -88(fp)
    j endif31
else30:
    lw t1, -56(fp)
    lw t2, -60(fp)
    add t3, t1, t2
    lw t4, -64(fp)
    add t5, t3, t4
    sw t5, -88(fp)
endif31:
endif27:
endif21:
    li t6, 0
    sw t6, -92(fp)
    li t0, 2345
    sw t0, -96(fp)
    li t1, 0
    sw t1, -100(fp)
loop32:
    lw t2, -96(fp)
    li t3, 0
    slt t4, t3, t2
    beq t4, zero, endloop33
    lw t5, -96(fp)
    li t6, 2
    rem t0, t5, t6
    li t1, 1
    sub t2, t0, t1
    sltiu t2, t2, 1
    beq t2, zero, else34
    lw t3, -100(fp)
    li t4, 1
    add t5, t3, t4
    sw t5, -100(fp)
    j endif35
else34:
endif35:
    lw t6, -96(fp)
    li t0, 2
    div t1, t6, t0
    sw t1, -96(fp)
    j loop32
endloop33:
    lw t2, -28(fp)
    lw t3, -44(fp)
    add t4, t2, t3
    lw t5, -48(fp)
    add t6, t4, t5
    lw t0, -52(fp)
    add t1, t6, t0
    lw t2, -68(fp)
    add t3, t1, t2
    lw t4, -72(fp)
    add t5, t3, t4
    lw t6, -76(fp)
    add t0, t5, t6
    lw t1, -84(fp)
    add t2, t0, t1
    lw t3, -88(fp)
    add t4, t2, t3
    lw t5, -100(fp)
    add t6, t4, t5
    sw t6, -104(fp)
    lw t0, -104(fp)
    li t1, 256
    rem t2, t0, t1
    mv a0, t2
    lw ra, -4(fp)
    lw t0, -8(fp)
    addi sp, sp, 112
    mv fp, t0
    ret