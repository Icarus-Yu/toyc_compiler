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
endif3:
    lw t4, -24(fp)
    lw t5, -24(fp)
    li t6, 1
    sub s2, t5, t6
    mv a0, s2
    jal ra, factorial
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
fibonacci:
    # Function: fibonacci
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
    li t1, 0
    slt t2, t1, t0
    xori t2, t2, 1
    beq t2, zero, else8
    li a0, 0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif9
else8:
endif9:
    lw t3, -24(fp)
    li t4, 1
    sub t5, t3, t4
    sltiu t5, t5, 1
    beq t5, zero, else10
    li t6, 1
    mv a0, t6
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif11
else10:
endif11:
    lw s2, -24(fp)
    li s3, 1
    sub s4, s2, s3
    mv a0, s4
    jal ra, fibonacci
    mv t0, a0
    lw t1, -24(fp)
    li t2, 2
    sub t3, t1, t2
    mv a0, t3
    jal ra, fibonacci
    add t4, t0, a0
    mv a0, t4
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
gcd:
    # Function: gcd
    # prologue
    addi sp, sp, -32
    sw ra, 28(sp)
    sw fp, 24(sp)
    addi fp, sp, 32
    sw s2, 20(sp)
    sw a0, -16(fp)
    sw a1, -20(fp)
    lw t0, -20(fp)
    li t1, 0
    sub t2, t0, t1
    sltiu t2, t2, 1
    beq t2, zero, else14
    lw t3, -16(fp)
    mv a0, t3
    lw s2, 20(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif15
else14:
endif15:
    lw t4, -20(fp)
    mv a0, t4
    lw t5, -16(fp)
    lw t6, -20(fp)
    rem s2, t5, t6
    mv a1, s2
    jal ra, gcd
    mv a0, a0
    lw s2, 20(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
is_prime:
    # Function: is_prime
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
    beq t2, zero, else26
    li a0, 0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif27
else26:
endif27:
    lw t3, -24(fp)
    li t4, 3
    slt t5, t4, t3
    xori t5, t5, 1
    beq t5, zero, else28
    li t6, 1
    mv a0, t6
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif29
else28:
endif29:
    lw s2, -24(fp)
    li s3, 2
    rem s4, s2, s3
    li t0, 0
    sub t1, s4, t0
    sltiu t1, t1, 1
    mv t2, t1
    lw t3, -24(fp)
    li t4, 3
    rem t5, t3, t4
    li t6, 0
    sub s2, t5, t6
    sltiu s2, s2, 1
    sltu t5, zero, t2
    sltu t6, zero, s2
    or s3, t5, t6
    beq s3, zero, else30
    li a0, 0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif31
else30:
endif31:
    li s4, 5
    sw s4, -28(fp)
loop32:
    lw t0, -28(fp)
    lw t1, -28(fp)
    mul t2, t0, t1
    lw t3, -24(fp)
    slt t4, t3, t2
    xori t4, t4, 1
    beq t4, zero, endloop33
    lw t5, -24(fp)
    lw t6, -28(fp)
    rem s2, t5, t6
    li s3, 0
    sub s4, s2, s3
    sltiu s4, s4, 1
    mv t0, s4
    lw t1, -24(fp)
    lw t2, -28(fp)
    li t3, 2
    add t4, t2, t3
    rem t5, t1, t4
    li t6, 0
    sub s2, t5, t6
    sltiu s2, s2, 1
    sltu t5, zero, t0
    sltu t6, zero, s2
    or s3, t5, t6
    beq s3, zero, else34
    li a0, 0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif35
else34:
endif35:
    lw s4, -28(fp)
    li t0, 6
    add t1, s4, t0
    sw t1, -28(fp)
    j loop32
endloop33:
    li t2, 1
    mv a0, t2
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
main:
    # Function: main
    # prologue
    addi sp, sp, -128
    sw ra, 124(sp)
    sw fp, 120(sp)
    addi fp, sp, 128
    sw s4, 116(sp)
    sw s3, 112(sp)
    sw s2, 108(sp)
    li t0, 1
    sw t0, -24(fp)
    li t1, 2
    sw t1, -28(fp)
    li t2, 3
    sw t2, -32(fp)
    li t3, 4
    sw t3, -36(fp)
    lw t4, -24(fp)
    lw t5, -28(fp)
    add t6, t4, t5
    lw s2, -32(fp)
    mul s3, t6, s2
    lw s4, -36(fp)
    lw t0, -24(fp)
    mul t1, s4, t0
    add t2, s3, t1
    lw t3, -28(fp)
    lw t4, -32(fp)
    add t5, t3, t4
    lw t6, -24(fp)
    lw s2, -36(fp)
    sub s3, zero, s2
    add s4, t6, s3
    li t0, 2048
    add t1, s4, t0
    rem t2, t5, t1
    li t3, 1
    add t4, t2, t3
    div t5, t2, t4
    lw t6, -24(fp)
    lw s2, -28(fp)
    mul s3, t6, s2
    lw s4, -32(fp)
    mul t0, s3, s4
    lw t1, -36(fp)
    li t2, 2
    sub t3, t1, t2
    lw t4, -32(fp)
    sub t5, t3, t4
    mul t6, t0, t5
    add s2, t5, t6
    sw s2, -40(fp)
    li s3, 0
    sw s3, -44(fp)
    li s4, 1
    sw s4, -48(fp)
    li t0, 2
    sw t0, -52(fp)
    li t1, 0
    sw t1, -56(fp)
    lw t2, -44(fp)
    lw t3, -48(fp)
    slt t4, t3, t2
    mv t5, t4
    lw t6, -52(fp)
    li s2, 1
    add s3, t6, s2
    li s4, 1
    sub t0, s3, s4
    sltiu t0, t0, 1
    sltu t5, zero, t5
    sltu t6, zero, t0
    and t1, t5, t6
    beq t1, zero, else72
    li t2, 1
    sw t2, -56(fp)
    j endif73
else72:
endif73:
    li t3, 0
    sw t3, -60(fp)
    lw t4, -44(fp)
    lw t5, -48(fp)
    slt t6, t4, t5
    mv s2, t6
    lw s3, -52(fp)
    li s4, 2
    add t0, s3, s4
    li t1, 2
    sub t2, t0, t1
    sltiu t2, t2, 1
    sltu t5, zero, s2
    sltu t6, zero, t2
    or t3, t5, t6
    beq t3, zero, else74
    li t4, 1
    sw t4, -60(fp)
    j endif75
else74:
endif75:
    li t5, 0
    sw t5, -64(fp)
    lw t6, -44(fp)
    li s2, 0
    slt s3, s2, t6
    mv s4, s3
    lw t0, -48(fp)
    li t1, 0
    slt t2, t0, t1
    sltu t5, zero, s4
    sltu t6, zero, t2
    and t3, t5, t6
    mv t4, t3
    lw t5, -52(fp)
    li t6, 0
    slt s2, t6, t5
    mv s3, s2
    lw s4, -44(fp)
    li t0, 0
    slt t1, s4, t0
    sltu t5, zero, s3
    sltu t6, zero, t1
    and t2, t5, t6
    sltu t5, zero, t4
    sltu t6, zero, t2
    or t3, t5, t6
    sltiu t4, t3, 1
    mv t5, t4
    lw t6, -48(fp)
    li s2, 0
    slt s3, s2, t6
    mv s4, s3
    lw t0, -44(fp)
    li t1, 0
    slt t2, t0, t1
    sltu t5, zero, s4
    sltu t6, zero, t2
    or t3, t5, t6
    sltu t5, zero, t5
    sltu t6, zero, t3
    and t4, t5, t6
    beq t4, zero, else76
    li t5, 1
    sw t5, -64(fp)
    j endif77
else76:
endif77:
    li t6, 42
    sw t6, -68(fp)
    li s2, 56
    sw s2, -72(fp)
    li s3, 87
    sw s3, -76(fp)
    lw s4, -72(fp)
    mv a0, s4
    lw t0, -76(fp)
    mv a1, t0
    jal ra, gcd
    mv a0, a0
    jal ra, factorial
    mv t1, a0
    lw t2, -68(fp)
    li t3, 5
    div t4, t2, t3
    mv a0, t4
    jal ra, fibonacci
    add t5, t1, a0
    sw t5, -80(fp)
    li t6, 0
    sw t6, -84(fp)
    lw s2, -68(fp)
    lw s3, -72(fp)
    slt s4, s3, s2
    mv t0, s4
    lw t1, -68(fp)
    lw t2, -76(fp)
    slt t3, t2, t1
    sltu t5, zero, t0
    sltu t6, zero, t3
    and t4, t5, t6
    beq t4, zero, else78
    lw t5, -68(fp)
    sw t5, -84(fp)
    j endif79
else78:
    lw t6, -72(fp)
    lw s2, -68(fp)
    slt s3, s2, t6
    mv s4, s3
    lw t0, -72(fp)
    lw t1, -76(fp)
    slt t2, t1, t0
    sltu t5, zero, s4
    sltu t6, zero, t2
    and t3, t5, t6
    beq t3, zero, else80
    lw t4, -72(fp)
    sw t4, -84(fp)
    j endif81
else80:
    lw t5, -76(fp)
    sw t5, -84(fp)
endif81:
endif79:
    li t6, 0
    sw t6, -88(fp)
    li s2, 1
    sw s2, -92(fp)
loop82:
    lw s3, -92(fp)
    li s4, 10
    slt t0, s4, s3
    xori t0, t0, 1
    beq t0, zero, endloop83
    lw t1, -92(fp)
    li t2, 2
    rem t3, t1, t2
    li t4, 0
    sub t5, t3, t4
    sltiu t5, t5, 1
    beq t5, zero, else84
    lw t6, -88(fp)
    lw s2, -92(fp)
    lw s3, -92(fp)
    mul s4, s2, s3
    add t0, t6, s4
    sw t0, -88(fp)
    j endif85
else84:
    lw t1, -92(fp)
    li t2, 3
    rem t3, t1, t2
    li t4, 0
    sub t5, t3, t4
    sltiu t5, t5, 1
    beq t5, zero, else86
    lw t6, -88(fp)
    lw s2, -92(fp)
    lw s3, -92(fp)
    mul s4, s2, s3
    lw t0, -92(fp)
    mul t1, s4, t0
    add t2, t6, t1
    sw t2, -88(fp)
    j endif87
else86:
    lw t3, -88(fp)
    lw t4, -92(fp)
    add t5, t3, t4
    sw t5, -88(fp)
endif87:
endif85:
    lw t6, -92(fp)
    li s2, 1
    add s3, t6, s2
    sw s3, -92(fp)
    j loop82
endloop83:
    li s4, 0
    sw s4, -96(fp)
    li t0, 1
    sw t0, -92(fp)
loop88:
    lw t1, -92(fp)
    li t2, 5
    slt t3, t2, t1
    xori t3, t3, 1
    beq t3, zero, endloop89
    li t4, 1
    sw t4, -100(fp)
    li t5, 1
    sw t5, -104(fp)
loop90:
    lw t6, -100(fp)
    lw s2, -92(fp)
    slt s3, s2, t6
    xori s3, s3, 1
    beq s3, zero, endloop91
    lw s4, -104(fp)
    lw t0, -100(fp)
    mul t1, s4, t0
    sw t1, -104(fp)
    lw t2, -100(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -100(fp)
    j loop90
endloop91:
    lw t5, -96(fp)
    lw t6, -104(fp)
    add s2, t5, t6
    sw s2, -96(fp)
    lw s3, -92(fp)
    li s4, 1
    add t0, s3, s4
    sw t0, -92(fp)
    j loop88
endloop89:
    li t1, 0
    sw t1, -100(fp)
    lw t2, -68(fp)
    mv a0, t2
    jal ra, is_prime
    beq a0, zero, else92
    lw t3, -72(fp)
    mv a0, t3
    jal ra, is_prime
    beq a0, zero, else94
    lw t4, -68(fp)
    lw t5, -72(fp)
    mul t6, t4, t5
    sw t6, -100(fp)
    j endif95
else94:
    lw s2, -76(fp)
    mv a0, s2
    jal ra, is_prime
    beq a0, zero, else96
    lw s3, -68(fp)
    lw s4, -76(fp)
    mul t0, s3, s4
    sw t0, -100(fp)
    j endif97
else96:
    lw t1, -68(fp)
    sw t1, -100(fp)
endif97:
endif95:
    j endif93
else92:
    lw t2, -72(fp)
    mv a0, t2
    jal ra, is_prime
    beq a0, zero, else98
    lw t3, -76(fp)
    mv a0, t3
    jal ra, is_prime
    beq a0, zero, else100
    lw t4, -72(fp)
    lw t5, -76(fp)
    mul t6, t4, t5
    sw t6, -100(fp)
    j endif101
else100:
    lw s2, -72(fp)
    sw s2, -100(fp)
endif101:
    j endif99
else98:
    lw s3, -76(fp)
    mv a0, s3
    jal ra, is_prime
    beq a0, zero, else102
    lw s4, -76(fp)
    sw s4, -100(fp)
    j endif103
else102:
    lw t0, -68(fp)
    lw t1, -72(fp)
    add t2, t0, t1
    lw t3, -76(fp)
    add t4, t2, t3
    sw t4, -100(fp)
endif103:
endif99:
endif93:
    li t5, 0
    sw t5, -104(fp)
    li t6, 2345
    sw t6, -108(fp)
    li s2, 0
    sw s2, -112(fp)
loop104:
    lw s3, -108(fp)
    li s4, 0
    slt t0, s4, s3
    beq t0, zero, endloop105
    lw t1, -108(fp)
    li t2, 2
    rem t3, t1, t2
    li t4, 1
    sub t5, t3, t4
    sltiu t5, t5, 1
    beq t5, zero, else106
    lw t6, -112(fp)
    li s2, 1
    add s3, t6, s2
    sw s3, -112(fp)
    j endif107
else106:
endif107:
    lw s4, -108(fp)
    li t0, 2
    div t1, s4, t0
    sw t1, -108(fp)
    j loop104
endloop105:
    lw t2, -40(fp)
    lw t3, -56(fp)
    add t4, t2, t3
    lw t5, -60(fp)
    add t6, t4, t5
    lw s2, -64(fp)
    add s3, t6, s2
    lw s4, -80(fp)
    add t0, s3, s4
    lw t1, -84(fp)
    add t2, t0, t1
    lw t3, -88(fp)
    add t4, t2, t3
    lw t5, -96(fp)
    add t6, t4, t5
    lw s2, -100(fp)
    add s3, t6, s2
    lw s4, -112(fp)
    add t0, s3, s4
    sw t0, -116(fp)
    lw t1, -116(fp)
    li t2, 256
    rem t3, t1, t2
    mv a0, t3
    lw s4, 116(sp)
    lw s3, 112(sp)
    lw s2, 108(sp)
    lw ra, 124(sp)
    lw t0, 120(sp)
    addi sp, sp, 128
    mv fp, t0
    ret