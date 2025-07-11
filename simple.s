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
    li x5, 42
    mv x10, x5
    jalr x0, x1, 0
    mv x2, x8
    lw x8, 0(x2)
    addi x2, x2, 4
    lw x1, 0(x2)
    addi x2, x2, 4
    jalr x0, x1, 0
