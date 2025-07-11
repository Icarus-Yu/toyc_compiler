    .text
    .globl main
    # ToyC Compiler Generated Code
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
    mv x10, x30
    jalr x0, x1, 0
    mv x2, x8
    lw x8, 0(x2)
    addi x2, x2, 4
    lw x1, 0(x2)
    addi x2, x2, 4
    jalr x0, x1, 0
