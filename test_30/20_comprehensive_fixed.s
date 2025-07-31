    .text
    .globl main
    # ToyC Compiler Generated Code
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
    li t1, 1
    slt t2, t1, t0
    xori t2, t2, 1
    beq t2, zero, else2
    lw t3, -24(fp)
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
    li t5, 1
    sub t6, t4, t5
    mv a0, t6
    jal ra, fibonacci
    mv s2, a0
    lw s3, -24(fp)
    li s4, 2
    sub t0, s3, s4
    mv a0, t0
    jal ra, fibonacci
    add t1, s2, a0
    mv a0, t1
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
endif3:
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
    beq t2, zero, else6
    lw t3, -16(fp)
    mv a0, t3
    lw s2, 20(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif7
else6:
endif7:
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
isPrime:
    # Function: isPrime
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
    beq t2, zero, else18
    li a0, 0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif19
else18:
endif19:
    lw t3, -24(fp)
    li t4, 3
    slt t5, t4, t3
    xori t5, t5, 1
    beq t5, zero, else20
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
    j endif21
else20:
endif21:
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
    beq s3, zero, else22
    li a0, 0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif23
else22:
endif23:
    li s4, 5
    sw s4, -28(fp)
loop24:
    lw t0, -28(fp)
    lw t1, -28(fp)
    mul t2, t0, t1
    lw t3, -24(fp)
    slt t4, t3, t2
    xori t4, t4, 1
    beq t4, zero, endloop25
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
    beq s3, zero, else26
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
    lw s4, -28(fp)
    li t0, 6
    add t1, s4, t0
    sw t1, -28(fp)
    j loop24
endloop25:
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
loop30:
    lw t1, -24(fp)
    li t2, 0
    slt t3, t2, t1
    beq t3, zero, endloop31
    lw t4, -28(fp)
    lw t5, -24(fp)
    mul t6, t4, t5
    sw t6, -28(fp)
    lw s2, -24(fp)
    li s3, 1
    sub s4, s2, s3
    sw s4, -24(fp)
    j loop30
endloop31:
    lw t0, -28(fp)
    mv a0, t0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
combination:
    # Function: combination
    # prologue
    addi sp, sp, -32
    sw ra, 28(sp)
    sw fp, 24(sp)
    addi fp, sp, 32
    sw s4, 20(sp)
    sw s3, 16(sp)
    sw s2, 12(sp)
    sw a0, -24(fp)
    sw a1, -28(fp)
    lw t0, -28(fp)
    lw t1, -24(fp)
    slt t2, t1, t0
    beq t2, zero, else36
    li a0, 0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif37
else36:
endif37:
    lw t3, -28(fp)
    li t4, 0
    sub t5, t3, t4
    sltiu t5, t5, 1
    mv t6, t5
    lw s2, -28(fp)
    lw s3, -24(fp)
    sub s4, s2, s3
    sltiu s4, s4, 1
    sltu t5, zero, t6
    sltu t6, zero, s4
    or t0, t5, t6
    beq t0, zero, else38
    li t1, 1
    mv a0, t1
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif39
else38:
endif39:
    lw t2, -24(fp)
    mv a0, t2
    jal ra, factorial
    mv t3, a0
    lw t4, -28(fp)
    mv a0, t4
    jal ra, factorial
    mv t5, a0
    lw t6, -24(fp)
    lw s2, -28(fp)
    sub s3, t6, s2
    mv a0, s3
    jal ra, factorial
    mul s4, t5, a0
    div t0, t3, s4
    mv a0, t0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
power:
    # Function: power
    # prologue
    addi sp, sp, -32
    sw ra, 28(sp)
    sw fp, 24(sp)
    addi fp, sp, 32
    sw s4, 20(sp)
    sw s3, 16(sp)
    sw s2, 12(sp)
    sw a0, -24(fp)
    sw a1, -28(fp)
    li t0, 1
    sw t0, -32(fp)
loop44:
    lw t1, -28(fp)
    li t2, 0
    slt t3, t2, t1
    beq t3, zero, endloop45
    lw t4, -28(fp)
    li t5, 2
    rem t6, t4, t5
    li s2, 1
    sub s3, t6, s2
    sltiu s3, s3, 1
    beq s3, zero, else46
    lw s4, -32(fp)
    lw t0, -24(fp)
    mul t1, s4, t0
    sw t1, -32(fp)
    j endif47
else46:
endif47:
    lw t2, -24(fp)
    lw t3, -24(fp)
    mul t4, t2, t3
    sw t4, -24(fp)
    lw t5, -28(fp)
    li t6, 2
    div s2, t5, t6
    sw s2, -28(fp)
    j loop44
endloop45:
    lw s3, -32(fp)
    mv a0, s3
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
complexFunction:
    # Function: complexFunction
    # prologue
    addi sp, sp, -48
    sw ra, 44(sp)
    sw fp, 40(sp)
    addi fp, sp, 48
    sw s4, 36(sp)
    sw s3, 32(sp)
    sw s2, 28(sp)
    sw a0, -24(fp)
    sw a1, -28(fp)
    sw a2, -32(fp)
    li t0, 0
    sw t0, -36(fp)
    lw t1, -24(fp)
    lw t2, -28(fp)
    slt t3, t2, t1
    mv t4, t3
    lw t5, -28(fp)
    lw t6, -32(fp)
    slt s2, t6, t5
    sltu t5, zero, t4
    sltu t6, zero, s2
    and s3, t5, t6
    sltiu s4, s3, 1
    beq s4, zero, else68
    lw t0, -24(fp)
    lw t1, -28(fp)
    mul t2, t0, t1
    lw t3, -32(fp)
    li t4, 1
    sub t5, zero, t4
    add t6, t3, t5
    sub s2, zero, t6
    sub s3, t2, s2
    sw s3, -36(fp)
    j endif69
else68:
    lw s4, -24(fp)
    lw t0, -32(fp)
    slt t1, s4, t0
    sltiu t2, t1, 1
    mv t3, t2
    lw t4, -32(fp)
    lw t5, -28(fp)
    slt t6, t4, t5
    sltu t5, zero, t3
    sltu t6, zero, t6
    or s2, t5, t6
    beq s2, zero, else70
    lw s3, -24(fp)
    lw s4, -32(fp)
    lw t0, -28(fp)
    mv t1, t0
    sub t2, s4, t1
    li t3, 2
    sub t4, zero, t3
    sub t5, t2, t4
    mul t6, s3, t5
    sw t6, -36(fp)
    j endif71
else70:
    lw s2, -28(fp)
    lw s3, -24(fp)
    slt s4, s2, s3
    xori s4, s4, 1
    mv t0, s4
    lw t1, -24(fp)
    lw t2, -32(fp)
    slt t3, t1, t2
    xori t3, t3, 1
    sltu t5, zero, t0
    sltu t6, zero, t3
    and t4, t5, t6
    mv t5, t4
    lw t6, -28(fp)
    lw s2, -32(fp)
    slt s3, s2, t6
    xori s3, s3, 1
    sltu t5, zero, t5
    sltu t6, zero, s3
    or s4, t5, t6
    beq s4, zero, else72
    lw t0, -28(fp)
    lw t1, -24(fp)
    mul t2, t0, t1
    lw t3, -32(fp)
    li t4, 3
    sub t5, zero, t4
    add t6, t3, t5
    sub s2, zero, t6
    sub s3, t2, s2
    sw s3, -36(fp)
    j endif73
else72:
    lw s4, -28(fp)
    lw t0, -32(fp)
    slt t1, t0, s4
    mv t2, t1
    lw t3, -32(fp)
    lw t4, -24(fp)
    slt t5, t4, t3
    mv t6, t5
    lw s2, -24(fp)
    lw s3, -28(fp)
    slt s4, s3, s2
    xori s4, s4, 1
    sltu t5, zero, t6
    sltu t6, zero, s4
    and t0, t5, t6
    sltu t5, zero, t2
    sltu t6, zero, t0
    or t1, t5, t6
    beq t1, zero, else74
    lw t2, -28(fp)
    lw t3, -32(fp)
    lw t4, -24(fp)
    mv t5, t4
    sub t6, t3, t5
    li s2, 4
    sub s3, zero, s2
    sub s4, t6, s3
    mul t0, t2, s4
    sw t0, -36(fp)
    j endif75
else74:
    lw t1, -32(fp)
    lw t2, -24(fp)
    slt t3, t2, t1
    mv t4, t3
    lw t5, -28(fp)
    lw t6, -24(fp)
    sub s2, t5, t6
    sltu s2, zero, s2
    sltu t5, zero, t4
    sltu t6, zero, s2
    or s3, t5, t6
    sltiu s4, s3, 1
    mv t0, s4
    lw t1, -24(fp)
    lw t2, -28(fp)
    sub t3, t1, t2
    sltiu t3, t3, 1
    sltu t5, zero, t0
    sltu t6, zero, t3
    and t4, t5, t6
    beq t4, zero, else76
    lw t5, -32(fp)
    lw t6, -24(fp)
    mul s2, t5, t6
    lw s3, -28(fp)
    li s4, 5
    sub t0, zero, s4
    add t1, s3, t0
    mv t2, t1
    sub t3, s2, t2
    sw t3, -36(fp)
    j endif77
else76:
    lw t4, -32(fp)
    lw t5, -28(fp)
    lw t6, -24(fp)
    sub s2, zero, t6
    sub s3, t5, s2
    li s4, 6
    sub t0, zero, s4
    sub t1, s3, t0
    mul t2, t4, t1
    sw t2, -36(fp)
endif77:
endif75:
endif73:
endif71:
endif69:
    li t3, 0
    sw t3, -40(fp)
loop78:
    lw t4, -40(fp)
    li t5, 10
    slt t6, t4, t5
    beq t6, zero, endloop79
    lw s2, -40(fp)
    li s3, 1
    add s4, s2, s3
    sw s4, -40(fp)
    lw t0, -40(fp)
    li t1, 3
    rem t2, t0, t1
    li t3, 0
    sub t4, t2, t3
    sltiu t4, t4, 1
    beq t4, zero, else80
    lw t5, -36(fp)
    lw t6, -40(fp)
    add s2, t5, t6
    sw s2, -36(fp)
    j endif81
else80:
    lw s3, -40(fp)
    li s4, 3
    rem t0, s3, s4
    li t1, 1
    sub t2, t0, t1
    sltiu t2, t2, 1
    beq t2, zero, else82
    lw t3, -36(fp)
    lw t4, -40(fp)
    sub t5, t3, t4
    sw t5, -36(fp)
    j endif83
else82:
    lw t6, -36(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -36(fp)
    lw s4, -36(fp)
    li t0, 50
    slt t1, s4, t0
    beq t1, zero, else84
    j loop78
    j endif85
else84:
endif85:
    lw t2, -36(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -36(fp)
    lw t5, -36(fp)
    li t6, 100
    slt s2, t6, t5
    beq s2, zero, else86
    j endloop79
    j endif87
else86:
endif87:
endif83:
endif81:
    j loop78
endloop79:
    lw s3, -36(fp)
    mv a0, s3
    lw s4, 36(sp)
    lw s3, 32(sp)
    lw s2, 28(sp)
    lw ra, 44(sp)
    lw t0, 40(sp)
    addi sp, sp, 48
    mv fp, t0
    ret
shortCircuit:
    # Function: shortCircuit
    # prologue
    addi sp, sp, -32
    sw ra, 28(sp)
    sw fp, 24(sp)
    addi fp, sp, 32
    sw s4, 20(sp)
    sw s3, 16(sp)
    sw s2, 12(sp)
    sw a0, -24(fp)
    sw a1, -28(fp)
    li t0, 0
    sw t0, -32(fp)
    lw t1, -24(fp)
    li t2, 0
    slt t3, t2, t1
    mv t4, t3
    lw t5, -28(fp)
    lw t6, -24(fp)
    div s2, t5, t6
    li s3, 2
    slt s4, s3, s2
    sltu t5, zero, t4
    sltu t6, zero, s4
    and t0, t5, t6
    beq t0, zero, else92
    lw t1, -32(fp)
    li t2, 12
    add t3, t1, t2
    sw t3, -32(fp)
    j endif93
else92:
endif93:
    lw t4, -24(fp)
    li t5, 0
    slt t6, t4, t5
    mv s2, t6
    lw s3, -28(fp)
    lw s4, -24(fp)
    lw t0, -24(fp)
    sub t1, s4, t0
    li t2, 1
    add t3, t1, t2
    div t4, s3, t3
    li t5, 0
    slt t6, t4, t5
    sltu t5, zero, s2
    sltu t6, zero, t6
    or s2, t5, t6
    beq s2, zero, else94
    lw s3, -32(fp)
    li s4, 30
    add t0, s3, s4
    sw t0, -32(fp)
    j endif95
else94:
endif95:
    lw t1, -32(fp)
    mv a0, t1
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
nestedLoopsAndConditions:
    # Function: nestedLoopsAndConditions
    # prologue
    addi sp, sp, -48
    sw ra, 44(sp)
    sw fp, 40(sp)
    addi fp, sp, 48
    sw s4, 36(sp)
    sw s3, 32(sp)
    sw s2, 28(sp)
    sw a0, -24(fp)
    li t0, 0
    sw t0, -28(fp)
    li t1, 0
    sw t1, -32(fp)
loop108:
    lw t2, -32(fp)
    lw t3, -24(fp)
    slt t4, t2, t3
    beq t4, zero, endloop109
    li t5, 0
    sw t5, -36(fp)
loop110:
    lw t6, -36(fp)
    lw s2, -32(fp)
    slt s3, t6, s2
    beq s3, zero, endloop111
    lw s4, -32(fp)
    lw t0, -36(fp)
    add t1, s4, t0
    li t2, 2
    rem t3, t1, t2
    li t4, 0
    sub t5, t3, t4
    sltiu t5, t5, 1
    beq t5, zero, else112
    lw t6, -28(fp)
    lw s2, -32(fp)
    lw s3, -36(fp)
    mul s4, s2, s3
    sub t0, t6, s4
    sw t0, -28(fp)
    j endif113
else112:
    lw t1, -28(fp)
    lw t2, -32(fp)
    lw t3, -36(fp)
    mul t4, t2, t3
    add t5, t1, t4
    sw t5, -28(fp)
    lw t6, -28(fp)
    li s2, 0
    slt s3, t6, s2
    beq s3, zero, else114
    li s4, 0
    sw s4, -28(fp)
    j loop110
    j endif115
else114:
endif115:
endif113:
    lw t0, -28(fp)
    li t1, 1053
    slt t2, t1, t0
    beq t2, zero, else116
    j endloop111
    j endif117
else116:
endif117:
    lw t3, -36(fp)
    li t4, 1
    add t5, t3, t4
    sw t5, -36(fp)
    j loop110
endloop111:
    lw t6, -28(fp)
    li s2, 913
    slt s3, s2, t6
    beq s3, zero, else118
    j endloop109
    j endif119
else118:
endif119:
    lw s4, -32(fp)
    li t0, 1
    add t1, s4, t0
    sw t1, -32(fp)
    j loop108
endloop109:
    lw t2, -28(fp)
    mv a0, t2
    lw s4, 36(sp)
    lw s3, 32(sp)
    lw s2, 28(sp)
    lw ra, 44(sp)
    lw t0, 40(sp)
    addi sp, sp, 48
    mv fp, t0
    ret
func1:
    # Function: func1
    # prologue
    addi sp, sp, -32
    sw ra, 28(sp)
    sw fp, 24(sp)
    addi fp, sp, 32
    sw s4, 20(sp)
    sw s3, 16(sp)
    sw s2, 12(sp)
    sw a0, -24(fp)
    sw a1, -28(fp)
    sw a2, -32(fp)
    lw t0, -32(fp)
    li t1, 0
    sub t2, t0, t1
    sltiu t2, t2, 1
    beq t2, zero, else122
    lw t3, -24(fp)
    mv t4, t3
    lw t5, -28(fp)
    mul t6, t4, t5
    mv a0, t6
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif123
else122:
    lw s2, -24(fp)
    mv a0, s2
    lw s3, -28(fp)
    lw s4, -32(fp)
    sub t0, s3, s4
    mv a1, t0
    li t1, 0
    mv a2, t1
    jal ra, func1
    mv a0, a0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
endif123:
func2:
    # Function: func2
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    sw a0, -12(fp)
    sw a1, -16(fp)
    lw t0, -16(fp)
    beq t0, zero, else126
    lw t1, -12(fp)
    lw t2, -16(fp)
    mv t3, t2
    rem t4, t1, t3
    mv a0, t4
    li t5, 0
    mv a1, t5
    jal ra, func2
    mv a0, a0
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif127
else126:
    lw t6, -12(fp)
    mv a0, t6
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
endif127:
func3:
    # Function: func3
    # prologue
    addi sp, sp, -32
    sw ra, 28(sp)
    sw fp, 24(sp)
    addi fp, sp, 32
    sw s4, 20(sp)
    sw s3, 16(sp)
    sw s2, 12(sp)
    sw a0, -24(fp)
    sw a1, -28(fp)
    lw t0, -28(fp)
    li t1, 0
    sub t2, t0, t1
    sltiu t2, t2, 1
    beq t2, zero, else130
    lw t3, -24(fp)
    li t4, 1
    add t5, t3, t4
    mv a0, t5
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif131
else130:
    lw t6, -24(fp)
    lw s2, -28(fp)
    add s3, t6, s2
    mv a0, s3
    li s4, 0
    mv a1, s4
    jal ra, func3
    mv a0, a0
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
endif131:
func4:
    # Function: func4
    # prologue
    addi sp, sp, -32
    sw ra, 28(sp)
    sw fp, 24(sp)
    addi fp, sp, 32
    sw a0, -12(fp)
    sw a1, -16(fp)
    sw a2, -20(fp)
    lw t0, -12(fp)
    beq t0, zero, else134
    lw t1, -16(fp)
    mv a0, t1
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
    j endif135
else134:
    lw t2, -20(fp)
    mv a0, t2
    lw ra, 28(sp)
    lw t0, 24(sp)
    addi sp, sp, 32
    mv fp, t0
    ret
endif135:
func5:
    # Function: func5
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    sw a0, -12(fp)
    lw t0, -12(fp)
    sub t1, zero, t0
    mv a0, t1
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
func6:
    # Function: func6
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    sw a0, -12(fp)
    sw a1, -16(fp)
    lw t0, -12(fp)
    mv t1, t0
    lw t2, -16(fp)
    sltu t5, zero, t1
    sltu t6, zero, t2
    and t3, t5, t6
    beq t3, zero, else138
    li t4, 1
    mv a0, t4
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif139
else138:
    li a0, 0
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
endif139:
func7:
    # Function: func7
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    sw a0, -12(fp)
    lw t0, -12(fp)
    sltiu t1, t0, 1
    beq t1, zero, else142
    li t2, 1
    mv a0, t2
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif143
else142:
    li a0, 0
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
endif143:
nestedCalls:
    # Function: nestedCalls
    # prologue
    addi sp, sp, -80
    sw ra, 76(sp)
    sw fp, 72(sp)
    addi fp, sp, 80
    sw s4, 68(sp)
    sw s3, 64(sp)
    sw s2, 60(sp)
    sw a0, -24(fp)
    sw a1, -28(fp)
    sw a2, -32(fp)
    sw a3, -36(fp)
    sw a4, -40(fp)
    sw a5, -44(fp)
    sw a6, -48(fp)
    sw a7, -52(fp)
    lw t0, 0(fp)
    sw t0, -56(fp)
    lw t1, 4(fp)
    sw t1, -60(fp)
    li t2, 2
    sw t2, -64(fp)
    li t3, 8
    sw t3, -68(fp)
    li t4, 8
    sw t4, -72(fp)
    li t5, 9
    sw t5, -76(fp)
    lw t6, -64(fp)
    mv a0, t6
    jal ra, func7
    mv s2, a0
    lw s3, -68(fp)
    mv a0, s3
    jal ra, func5
    mv a1, a0
    mv a0, s2
    jal ra, func6
    mv s4, a0
    lw t0, -72(fp)
    mv a1, t0
    mv a0, s4
    jal ra, func2
    mv t1, a0
    lw t2, -76(fp)
    mv a1, t2
    mv a0, t1
    jal ra, func3
    mv a0, a0
    jal ra, func5
    mv t3, a0
    lw t4, -24(fp)
    mv a1, t4
    lw t5, -28(fp)
    mv a0, t5
    jal ra, func5
    mv t6, a0
    lw s2, -32(fp)
    mv a0, s2
    lw s3, -36(fp)
    mv a0, s3
    jal ra, func7
    mv a1, a0
    jal ra, func6
    mv s4, a0
    lw t0, -40(fp)
    mv a0, t0
    lw t1, -44(fp)
    mv a0, t1
    jal ra, func7
    mv a1, a0
    jal ra, func2
    mv a2, a0
    mv a0, t6
    mv a1, s4
    jal ra, func4
    mv t2, a0
    lw t3, -48(fp)
    mv a1, t3
    mv a0, t2
    jal ra, func3
    mv t4, a0
    lw t5, -52(fp)
    mv a1, t5
    mv a0, t4
    jal ra, func2
    mv t6, a0
    lw s2, -56(fp)
    mv a0, s2
    lw s3, -60(fp)
    mv a0, s3
    jal ra, func7
    mv a1, a0
    jal ra, func3
    mv s4, a0
    lw t0, -64(fp)
    mv a2, t0
    mv a0, t6
    mv a1, s4
    jal ra, func1
    mv a2, a0
    mv a0, t3
    jal ra, func4
    mv t1, a0
    lw t2, -68(fp)
    mv a0, t2
    lw t3, -72(fp)
    mv a0, t3
    jal ra, func7
    mv t4, a0
    lw t5, -76(fp)
    mv a1, t5
    mv a0, t4
    jal ra, func3
    mv a1, a0
    jal ra, func2
    mv a1, a0
    mv a0, t1
    jal ra, func3
    mv t6, a0
    lw s2, -24(fp)
    mv a1, s2
    lw s3, -28(fp)
    mv a2, s3
    mv a0, t6
    jal ra, func1
    mv s4, a0
    lw t0, -32(fp)
    mv a1, t0
    mv a0, s4
    jal ra, func2
    mv t1, a0
    lw t2, -36(fp)
    mv a1, t2
    lw t3, -40(fp)
    mv a0, t3
    lw t4, -44(fp)
    mv a0, t4
    jal ra, func5
    mv a1, a0
    jal ra, func3
    mv t5, a0
    lw t6, -48(fp)
    mv a0, t6
    jal ra, func5
    mv a1, a0
    mv a0, t5
    jal ra, func2
    mv s2, a0
    lw s3, -52(fp)
    mv a1, s3
    lw s4, -56(fp)
    mv a0, s4
    jal ra, func7
    mv a2, a0
    mv a0, s2
    jal ra, func1
    mv t0, a0
    lw t1, -60(fp)
    mv a0, t1
    jal ra, func5
    mv a1, a0
    mv a0, t0
    jal ra, func2
    mv t2, a0
    lw t3, -64(fp)
    mv a1, t3
    mv a0, t2
    jal ra, func3
    mv a2, a0
    mv a0, t1
    jal ra, func1
    sw a0, -80(fp)
    lw t4, -80(fp)
    mv a0, t4
    lw s4, 68(sp)
    lw s3, 64(sp)
    lw s2, 60(sp)
    lw ra, 76(sp)
    lw t0, 72(sp)
    addi sp, sp, 80
    mv fp, t0
    ret
main:
    # Function: main
    # prologue
    addi sp, sp, -64
    sw ra, 60(sp)
    sw fp, 56(sp)
    addi fp, sp, 64
    sw s4, 52(sp)
    sw s3, 48(sp)
    sw s2, 44(sp)
    li t0, 0
    sw t0, -24(fp)
    li t1, 12
    mv a0, t1
    jal ra, fibonacci
    sw a0, -28(fp)
    li t2, 22
    mv a0, t2
    li t3, 15
    mv a1, t3
    jal ra, gcd
    sw a0, -32(fp)
    li t4, 17
    mv a0, t4
    jal ra, isPrime
    sw a0, -36(fp)
    li t5, 8
    mv a0, t5
    jal ra, factorial
    sw a0, -40(fp)
    li t6, 7
    mv a0, t6
    li s2, 3
    mv a1, s2
    jal ra, combination
    sw a0, -44(fp)
    li s3, 3
    mv a0, s3
    li s4, 11
    mv a1, s4
    jal ra, power
    sw a0, -48(fp)
    li t0, 3
    mv a0, t0
    li t1, 5
    mv a1, t1
    li t2, 1
    mv a2, t2
    jal ra, complexFunction
    sw a0, -52(fp)
    li t3, 5
    sub t4, zero, t3
    mv a0, t4
    li t5, 10
    mv a1, t5
    jal ra, shortCircuit
    sw a0, -56(fp)
    li t6, 10
    mv a0, t6
    jal ra, nestedLoopsAndConditions
    sw a0, -60(fp)
    addi sp, sp, -8
    li s2, 1
    mv a0, s2
    li s3, 2
    mv a1, s3
    li s4, 3
    mv a2, s4
    li t0, 4
    mv a3, t0
    li t1, 5
    mv a4, t1
    li t2, 6
    mv a5, t2
    li t3, 7
    mv a6, t3
    li t4, 8
    mv a7, t4
    li t5, 9
    sw t5, 0(sp)
    li t6, 10
    sw t6, 4(sp)
    jal ra, nestedCalls
    addi sp, sp, 8
    sw a0, -64(fp)
    lw s2, -28(fp)
    lw s3, -32(fp)
    add s4, s2, s3
    lw t0, -36(fp)
    add t1, s4, t0
    lw t2, -40(fp)
    add t3, t1, t2
    lw t4, -44(fp)
    sub t5, t3, t4
    lw t6, -48(fp)
    add s2, t5, t6
    lw s3, -60(fp)
    sub s4, s2, s3
    li t0, 256
    rem t1, s4, t0
    sw t1, -24(fp)
    lw t2, -24(fp)
    mv a0, t2
    lw s4, 52(sp)
    lw s3, 48(sp)
    lw s2, 44(sp)
    lw ra, 60(sp)
    lw t0, 56(sp)
    addi sp, sp, 64
    mv fp, t0
    ret