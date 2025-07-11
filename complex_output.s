    .text
    .globl main
    # ToyC Compiler Generated Code
fibonacci:
    # Function: fibonacci
    addi x2, x2, -4
    sw x1, 0(x2)
    addi x2, x2, -4
    sw x8, 0(x2)
    mv x8, x2
    sw x10, -4(x8)
    lw x5, -4(x8)
    li x6, 1
    slt x7, x6, x5
    xori x7, x7, 1
    beq x7, x0, else0
    lw x28, -4(x8)
    mv x10, x28
    jalr x0, x1, 0
    j endif1
    lw x29, -4(x8)
    li x30, 1
    sub x31, x29, x30
    mv x10, x31
    jal x1, fibonacci
    lw x10, -4(x8)
    li x5, 2
    sub x6, x10, x5
    mv x10, x6
    jal x1, fibonacci
    add x7, x10, x10
    mv x10, x7
    jalr x0, x1, 0
    mv x2, x8
    lw x8, 0(x2)
    addi x2, x2, 4
    lw x1, 0(x2)
    addi x2, x2, 4
    jalr x0, x1, 0
print_numbers:
    # Function: print_numbers
    addi x2, x2, -4
    sw x1, 0(x2)
    addi x2, x2, -4
    sw x8, 0(x2)
    mv x8, x2
    sw x10, -4(x8)
    mv x5, x0
    sw x5, -8(x8)
    lw x6, -8(x8)
    lw x7, -4(x8)
    slt x28, x6, x7
    beq x28, x0, endloop1
    lw x29, -8(x8)
    mv x10, x29
    jal x1, fibonacci
    sw x10, -12(x8)
    lw x30, -8(x8)
    li x31, 1
    add x10, x30, x31
    sw x10, -8(x8)
    j loop0
    mv x2, x8
    lw x8, 0(x2)
    addi x2, x2, 4
    lw x1, 0(x2)
    addi x2, x2, 4
    jalr x0, x1, 0
main:
    # Function: main
    addi x2, x2, -4
    sw x1, 0(x2)
    addi x2, x2, -4
    sw x8, 0(x2)
    mv x8, x2
    li x5, 5
    sw x5, -4(x8)
    li x6, 10
    sw x6, -8(x8)
    lw x7, -4(x8)
    lw x28, -8(x8)
    add x29, x7, x28
    sw x29, -12(x8)
    lw x30, -12(x8)
    li x31, 10
    slt x10, x31, x30
    beq x10, x0, else0
    lw x5, -12(x8)
    mv x10, x5
    jal x1, print_numbers
    lw x6, -12(x8)
    li x7, 2
    mul x28, x6, x7
    mv x10, x28
    jalr x0, x1, 0
    j endif1
    lw x29, -12(x8)
    mv x10, x29
    jalr x0, x1, 0
    mv x2, x8
    lw x8, 0(x2)
    addi x2, x2, 4
    lw x1, 0(x2)
    addi x2, x2, 4
    jalr x0, x1, 0
