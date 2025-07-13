    .text
    .globl main
    # ToyC Compiler Generated Code
sum8:
    # Function: sum8
    # prologue
    addi sp, sp, -48
    sw ra, 44(sp)
    sw fp, 40(sp)
    addi fp, sp, 48
    sw a0, -12(fp)
    sw a1, -16(fp)
    sw a2, -20(fp)
    sw a3, -24(fp)
    sw a4, -28(fp)
    sw a5, -32(fp)
    sw a6, -36(fp)
    sw a7, -40(fp)
    lw t0, -12(fp)
    lw t1, -16(fp)
    add t2, t0, t1
    lw t3, -20(fp)
    add t4, t2, t3
    lw t5, -24(fp)
    add t6, t4, t5
    lw t0, -28(fp)
    add t1, t6, t0
    lw t2, -32(fp)
    add t3, t1, t2
    lw t4, -36(fp)
    add t5, t3, t4
    lw t6, -40(fp)
    add t0, t5, t6
    mv a0, t0
    lw ra, 44(sp)
    lw t0, 40(sp)
    addi sp, sp, 48
    mv fp, t0
    ret
sum16:
    # Function: sum16
    # prologue
    addi sp, sp, -80
    sw ra, 76(sp)
    sw fp, 72(sp)
    addi fp, sp, 80
    sw a0, -12(fp)
    sw a1, -16(fp)
    sw a2, -20(fp)
    sw a3, -24(fp)
    sw a4, -28(fp)
    sw a5, -32(fp)
    sw a6, -36(fp)
    sw a7, -40(fp)
    lw t0, 8(fp)
    sw t0, -44(fp)
    lw t1, 12(fp)
    sw t1, -48(fp)
    lw t2, 16(fp)
    sw t2, -52(fp)
    lw t3, 20(fp)
    sw t3, -56(fp)
    lw t4, 24(fp)
    sw t4, -60(fp)
    lw t5, 28(fp)
    sw t5, -64(fp)
    lw t6, 32(fp)
    sw t6, -68(fp)
    lw t0, 36(fp)
    sw t0, -72(fp)
    lw t1, -12(fp)
    lw t2, -16(fp)
    add t3, t1, t2
    lw t4, -20(fp)
    add t5, t3, t4
    lw t6, -24(fp)
    add t0, t5, t6
    lw t1, -28(fp)
    add t2, t0, t1
    lw t3, -32(fp)
    add t4, t2, t3
    lw t5, -36(fp)
    add t6, t4, t5
    lw t0, -40(fp)
    add t1, t6, t0
    lw t2, -44(fp)
    add t3, t1, t2
    lw t4, -48(fp)
    add t5, t3, t4
    lw t6, -52(fp)
    add t0, t5, t6
    lw t1, -56(fp)
    add t2, t0, t1
    lw t3, -60(fp)
    add t4, t2, t3
    lw t5, -64(fp)
    add t6, t4, t5
    lw t0, -68(fp)
    add t1, t6, t0
    lw t2, -72(fp)
    add t3, t1, t2
    mv a0, t3
    lw ra, 76(sp)
    lw t0, 72(sp)
    addi sp, sp, 80
    mv fp, t0
    ret
sum32:
    # Function: sum32
    # prologue
    addi sp, sp, -160
    sw ra, 156(sp)
    sw fp, 152(sp)
    addi fp, sp, 160
    sw a0, -12(fp)
    sw a1, -16(fp)
    sw a2, -20(fp)
    sw a3, -24(fp)
    sw a4, -28(fp)
    sw a5, -32(fp)
    sw a6, -36(fp)
    sw a7, -40(fp)
    lw t0, 8(fp)
    sw t0, -44(fp)
    lw t1, 12(fp)
    sw t1, -48(fp)
    lw t2, 16(fp)
    sw t2, -52(fp)
    lw t3, 20(fp)
    sw t3, -56(fp)
    lw t4, 24(fp)
    sw t4, -60(fp)
    lw t5, 28(fp)
    sw t5, -64(fp)
    lw t6, 32(fp)
    sw t6, -68(fp)
    lw t0, 36(fp)
    sw t0, -72(fp)
    lw t1, 40(fp)
    sw t1, -76(fp)
    lw t2, 44(fp)
    sw t2, -80(fp)
    lw t3, 48(fp)
    sw t3, -84(fp)
    lw t4, 52(fp)
    sw t4, -88(fp)
    lw t5, 56(fp)
    sw t5, -92(fp)
    lw t6, 60(fp)
    sw t6, -96(fp)
    lw t0, 64(fp)
    sw t0, -100(fp)
    lw t1, 68(fp)
    sw t1, -104(fp)
    lw t2, 72(fp)
    sw t2, -108(fp)
    lw t3, 76(fp)
    sw t3, -112(fp)
    lw t4, 80(fp)
    sw t4, -116(fp)
    lw t5, 84(fp)
    sw t5, -120(fp)
    lw t6, 88(fp)
    sw t6, -124(fp)
    lw t0, 92(fp)
    sw t0, -128(fp)
    lw t1, 96(fp)
    sw t1, -132(fp)
    lw t2, 100(fp)
    sw t2, -136(fp)
    lw t3, -12(fp)
    lw t4, -16(fp)
    add t5, t3, t4
    lw t6, -20(fp)
    add t0, t5, t6
    lw t1, -24(fp)
    add t2, t0, t1
    lw t3, -28(fp)
    add t4, t2, t3
    lw t5, -32(fp)
    add t6, t4, t5
    lw t0, -36(fp)
    add t1, t6, t0
    lw t2, -40(fp)
    add t3, t1, t2
    sw t3, -140(fp)
    lw t4, -44(fp)
    lw t5, -48(fp)
    add t6, t4, t5
    lw t0, -52(fp)
    add t1, t6, t0
    lw t2, -56(fp)
    add t3, t1, t2
    lw t4, -60(fp)
    add t5, t3, t4
    lw t6, -64(fp)
    add t0, t5, t6
    lw t1, -68(fp)
    add t2, t0, t1
    lw t3, -72(fp)
    add t4, t2, t3
    sw t4, -144(fp)
    lw t5, -76(fp)
    lw t6, -80(fp)
    add t0, t5, t6
    lw t1, -84(fp)
    add t2, t0, t1
    lw t3, -88(fp)
    add t4, t2, t3
    lw t5, -92(fp)
    add t6, t4, t5
    lw t0, -96(fp)
    add t1, t6, t0
    lw t2, -100(fp)
    add t3, t1, t2
    lw t4, -104(fp)
    add t5, t3, t4
    sw t5, -148(fp)
    lw t6, -108(fp)
    lw t0, -112(fp)
    add t1, t6, t0
    lw t2, -116(fp)
    add t3, t1, t2
    lw t4, -120(fp)
    add t5, t3, t4
    lw t6, -124(fp)
    add t0, t5, t6
    lw t1, -128(fp)
    add t2, t0, t1
    lw t3, -132(fp)
    add t4, t2, t3
    lw t5, -136(fp)
    add t6, t4, t5
    sw t6, -152(fp)
    lw t0, -140(fp)
    lw t1, -144(fp)
    add t2, t0, t1
    lw t3, -148(fp)
    add t4, t2, t3
    lw t5, -152(fp)
    add t6, t4, t5
    mv a0, t6
    lw ra, 156(sp)
    lw t0, 152(sp)
    addi sp, sp, 160
    mv fp, t0
    ret
sum64:
    # Function: sum64
    # prologue
    addi sp, sp, -304
    sw ra, 300(sp)
    sw fp, 296(sp)
    addi fp, sp, 304
    sw a0, -12(fp)
    sw a1, -16(fp)
    sw a2, -20(fp)
    sw a3, -24(fp)
    sw a4, -28(fp)
    sw a5, -32(fp)
    sw a6, -36(fp)
    sw a7, -40(fp)
    lw t0, 8(fp)
    sw t0, -44(fp)
    lw t1, 12(fp)
    sw t1, -48(fp)
    lw t2, 16(fp)
    sw t2, -52(fp)
    lw t3, 20(fp)
    sw t3, -56(fp)
    lw t4, 24(fp)
    sw t4, -60(fp)
    lw t5, 28(fp)
    sw t5, -64(fp)
    lw t6, 32(fp)
    sw t6, -68(fp)
    lw t0, 36(fp)
    sw t0, -72(fp)
    lw t1, 40(fp)
    sw t1, -76(fp)
    lw t2, 44(fp)
    sw t2, -80(fp)
    lw t3, 48(fp)
    sw t3, -84(fp)
    lw t4, 52(fp)
    sw t4, -88(fp)
    lw t5, 56(fp)
    sw t5, -92(fp)
    lw t6, 60(fp)
    sw t6, -96(fp)
    lw t0, 64(fp)
    sw t0, -100(fp)
    lw t1, 68(fp)
    sw t1, -104(fp)
    lw t2, 72(fp)
    sw t2, -108(fp)
    lw t3, 76(fp)
    sw t3, -112(fp)
    lw t4, 80(fp)
    sw t4, -116(fp)
    lw t5, 84(fp)
    sw t5, -120(fp)
    lw t6, 88(fp)
    sw t6, -124(fp)
    lw t0, 92(fp)
    sw t0, -128(fp)
    lw t1, 96(fp)
    sw t1, -132(fp)
    lw t2, 100(fp)
    sw t2, -136(fp)
    lw t3, 104(fp)
    sw t3, -140(fp)
    lw t4, 108(fp)
    sw t4, -144(fp)
    lw t5, 112(fp)
    sw t5, -148(fp)
    lw t6, 116(fp)
    sw t6, -152(fp)
    lw t0, 120(fp)
    sw t0, -156(fp)
    lw t1, 124(fp)
    sw t1, -160(fp)
    lw t2, 128(fp)
    sw t2, -164(fp)
    lw t3, 132(fp)
    sw t3, -168(fp)
    lw t4, 136(fp)
    sw t4, -172(fp)
    lw t5, 140(fp)
    sw t5, -176(fp)
    lw t6, 144(fp)
    sw t6, -180(fp)
    lw t0, 148(fp)
    sw t0, -184(fp)
    lw t1, 152(fp)
    sw t1, -188(fp)
    lw t2, 156(fp)
    sw t2, -192(fp)
    lw t3, 160(fp)
    sw t3, -196(fp)
    lw t4, 164(fp)
    sw t4, -200(fp)
    lw t5, 168(fp)
    sw t5, -204(fp)
    lw t6, 172(fp)
    sw t6, -208(fp)
    lw t0, 176(fp)
    sw t0, -212(fp)
    lw t1, 180(fp)
    sw t1, -216(fp)
    lw t2, 184(fp)
    sw t2, -220(fp)
    lw t3, 188(fp)
    sw t3, -224(fp)
    lw t4, 192(fp)
    sw t4, -228(fp)
    lw t5, 196(fp)
    sw t5, -232(fp)
    lw t6, 200(fp)
    sw t6, -236(fp)
    lw t0, 204(fp)
    sw t0, -240(fp)
    lw t1, 208(fp)
    sw t1, -244(fp)
    lw t2, 212(fp)
    sw t2, -248(fp)
    lw t3, 216(fp)
    sw t3, -252(fp)
    lw t4, 220(fp)
    sw t4, -256(fp)
    lw t5, 224(fp)
    sw t5, -260(fp)
    lw t6, 228(fp)
    sw t6, -264(fp)
    lw t0, -12(fp)
    lw t1, -16(fp)
    add t2, t0, t1
    lw t3, -20(fp)
    add t4, t2, t3
    lw t5, -24(fp)
    add t6, t4, t5
    lw t0, -28(fp)
    add t1, t6, t0
    lw t2, -32(fp)
    add t3, t1, t2
    lw t4, -36(fp)
    add t5, t3, t4
    lw t6, -40(fp)
    add t0, t5, t6
    sw t0, -268(fp)
    lw t1, -44(fp)
    lw t2, -48(fp)
    add t3, t1, t2
    lw t4, -52(fp)
    add t5, t3, t4
    lw t6, -56(fp)
    add t0, t5, t6
    lw t1, -60(fp)
    add t2, t0, t1
    lw t3, -64(fp)
    add t4, t2, t3
    lw t5, -68(fp)
    add t6, t4, t5
    lw t0, -72(fp)
    add t1, t6, t0
    sw t1, -272(fp)
    lw t2, -76(fp)
    lw t3, -80(fp)
    add t4, t2, t3
    lw t5, -84(fp)
    add t6, t4, t5
    lw t0, -88(fp)
    add t1, t6, t0
    lw t2, -92(fp)
    add t3, t1, t2
    lw t4, -96(fp)
    add t5, t3, t4
    lw t6, -100(fp)
    add t0, t5, t6
    lw t1, -104(fp)
    add t2, t0, t1
    sw t2, -276(fp)
    lw t3, -108(fp)
    lw t4, -112(fp)
    add t5, t3, t4
    lw t6, -116(fp)
    add t0, t5, t6
    lw t1, -120(fp)
    add t2, t0, t1
    lw t3, -124(fp)
    add t4, t2, t3
    lw t5, -128(fp)
    add t6, t4, t5
    lw t0, -132(fp)
    add t1, t6, t0
    lw t2, -136(fp)
    add t3, t1, t2
    sw t3, -280(fp)
    lw t4, -140(fp)
    lw t5, -144(fp)
    add t6, t4, t5
    lw t0, -148(fp)
    add t1, t6, t0
    lw t2, -152(fp)
    add t3, t1, t2
    lw t4, -156(fp)
    add t5, t3, t4
    lw t6, -160(fp)
    add t0, t5, t6
    lw t1, -164(fp)
    add t2, t0, t1
    lw t3, -168(fp)
    add t4, t2, t3
    sw t4, -284(fp)
    lw t5, -172(fp)
    lw t6, -176(fp)
    add t0, t5, t6
    lw t1, -180(fp)
    add t2, t0, t1
    lw t3, -184(fp)
    add t4, t2, t3
    lw t5, -188(fp)
    add t6, t4, t5
    lw t0, -192(fp)
    add t1, t6, t0
    lw t2, -196(fp)
    add t3, t1, t2
    lw t4, -200(fp)
    add t5, t3, t4
    sw t5, -288(fp)
    lw t6, -204(fp)
    lw t0, -208(fp)
    add t1, t6, t0
    lw t2, -212(fp)
    add t3, t1, t2
    lw t4, -216(fp)
    add t5, t3, t4
    lw t6, -220(fp)
    add t0, t5, t6
    lw t1, -224(fp)
    add t2, t0, t1
    lw t3, -228(fp)
    add t4, t2, t3
    lw t5, -232(fp)
    add t6, t4, t5
    sw t6, -292(fp)
    lw t0, -236(fp)
    lw t1, -240(fp)
    add t2, t0, t1
    lw t3, -244(fp)
    add t4, t2, t3
    lw t5, -248(fp)
    add t6, t4, t5
    lw t0, -252(fp)
    add t1, t6, t0
    lw t2, -256(fp)
    add t3, t1, t2
    lw t4, -260(fp)
    add t5, t3, t4
    lw t6, -264(fp)
    add t0, t5, t6
    sw t0, -296(fp)
    lw t1, -268(fp)
    lw t2, -272(fp)
    add t3, t1, t2
    lw t4, -276(fp)
    add t5, t3, t4
    lw t6, -280(fp)
    add t0, t5, t6
    lw t1, -284(fp)
    add t2, t0, t1
    lw t3, -288(fp)
    add t4, t2, t3
    lw t5, -292(fp)
    add t6, t4, t5
    lw t0, -296(fp)
    add t1, t6, t0
    mv a0, t1
    lw ra, 300(sp)
    lw t0, 296(sp)
    addi sp, sp, 304
    mv fp, t0
    ret
main:
    # Function: main
    # prologue
    addi sp, sp, -480
    sw ra, 476(sp)
    sw fp, 472(sp)
    addi fp, sp, 480
    li t0, 1
    sw t0, -12(fp)
    li t1, 2
    sw t1, -16(fp)
    li t2, 3
    sw t2, -20(fp)
    li t3, 4
    sw t3, -24(fp)
    li t4, 5
    sw t4, -28(fp)
    li t5, 6
    sw t5, -32(fp)
    li t6, 7
    sw t6, -36(fp)
    li t0, 8
    sw t0, -40(fp)
    li t1, 9
    sw t1, -44(fp)
    li t2, 10
    sw t2, -48(fp)
    li t3, 11
    sw t3, -52(fp)
    li t4, 12
    sw t4, -56(fp)
    li t5, 13
    sw t5, -60(fp)
    li t6, 14
    sw t6, -64(fp)
    li t0, 15
    sw t0, -68(fp)
    li t1, 16
    sw t1, -72(fp)
    lw t2, -12(fp)
    mv a0, t2
    li t3, 1
    mv a1, t3
    lw t4, -20(fp)
    mv a2, t4
    li t5, 2
    mv a3, t5
    lw t6, -28(fp)
    mv a4, t6
    li t0, 3
    mv a5, t0
    lw t1, -36(fp)
    mv a6, t1
    li t2, 4
    mv a7, t2
    jal ra, sum8
    sw a0, -76(fp)
    addi sp, sp, -32
    lw t3, -12(fp)
    mv a0, t3
    lw t4, -16(fp)
    mv a1, t4
    lw t5, -20(fp)
    mv a2, t5
    lw t6, -24(fp)
    mv a3, t6
    lw t0, -28(fp)
    mv a4, t0
    lw t1, -32(fp)
    mv a5, t1
    lw t2, -36(fp)
    mv a6, t2
    lw t3, -40(fp)
    mv a7, t3
    li t4, 1
    sw t4, 0(sp)
    li t5, 2
    sw t5, 4(sp)
    li t6, 3
    sw t6, 8(sp)
    li t0, 4
    sw t0, 12(sp)
    lw t1, -76(fp)
    lw t2, -60(fp)
    add t3, t1, t2
    sw t3, 16(sp)
    lw t4, -76(fp)
    lw t5, -64(fp)
    add t6, t4, t5
    sw t6, 20(sp)
    lw t0, -76(fp)
    lw t1, -68(fp)
    add t2, t0, t1
    sw t2, 24(sp)
    lw t3, -76(fp)
    lw t4, -72(fp)
    add t5, t3, t4
    sw t5, 28(sp)
    jal ra, sum16
    addi sp, sp, 32
    sw a0, -80(fp)
    li t6, 17
    sw t6, -84(fp)
    li t0, 18
    sw t0, -88(fp)
    li t1, 19
    sw t1, -92(fp)
    li t2, 20
    sw t2, -96(fp)
    li t3, 21
    sw t3, -100(fp)
    li t4, 22
    sw t4, -104(fp)
    li t5, 23
    sw t5, -108(fp)
    li t6, 24
    sw t6, -112(fp)
    li t0, 25
    sw t0, -116(fp)
    li t1, 26
    sw t1, -120(fp)
    li t2, 27
    sw t2, -124(fp)
    li t3, 28
    sw t3, -128(fp)
    li t4, 29
    sw t4, -132(fp)
    li t5, 30
    sw t5, -136(fp)
    li t6, 31
    sw t6, -140(fp)
    li t0, 32
    sw t0, -144(fp)
    addi sp, sp, -96
    lw t1, -12(fp)
    mv a0, t1
    lw t2, -16(fp)
    mv a1, t2
    lw t3, -20(fp)
    mv a2, t3
    lw t4, -24(fp)
    mv a3, t4
    lw t5, -28(fp)
    mv a4, t5
    lw t6, -32(fp)
    mv a5, t6
    lw t0, -36(fp)
    mv a6, t0
    lw t1, -40(fp)
    mv a7, t1
    lw t2, -44(fp)
    sw t2, 0(sp)
    lw t3, -48(fp)
    sw t3, 4(sp)
    lw t4, -52(fp)
    sw t4, 8(sp)
    lw t5, -56(fp)
    sw t5, 12(sp)
    lw t6, -60(fp)
    sw t6, 16(sp)
    lw t0, -64(fp)
    sw t0, 20(sp)
    lw t1, -68(fp)
    sw t1, 24(sp)
    lw t2, -72(fp)
    sw t2, 28(sp)
    lw t3, -84(fp)
    sw t3, 32(sp)
    lw t4, -88(fp)
    sw t4, 36(sp)
    lw t5, -92(fp)
    sw t5, 40(sp)
    lw t6, -96(fp)
    sw t6, 44(sp)
    lw t0, -100(fp)
    sw t0, 48(sp)
    lw t1, -104(fp)
    sw t1, 52(sp)
    lw t2, -108(fp)
    sw t2, 56(sp)
    lw t3, -112(fp)
    sw t3, 60(sp)
    lw t4, -116(fp)
    sw t4, 64(sp)
    lw t5, -120(fp)
    sw t5, 68(sp)
    lw t6, -124(fp)
    sw t6, 72(sp)
    lw t0, -128(fp)
    sw t0, 76(sp)
    lw t1, -132(fp)
    sw t1, 80(sp)
    lw t2, -136(fp)
    sw t2, 84(sp)
    lw t3, -140(fp)
    sw t3, 88(sp)
    lw t4, -144(fp)
    sw t4, 92(sp)
    jal ra, sum32
    addi sp, sp, 96
    sw a0, -148(fp)
    addi sp, sp, -224
    lw t5, -12(fp)
    mv a0, t5
    lw t6, -16(fp)
    mv a1, t6
    lw t0, -20(fp)
    mv a2, t0
    lw t1, -24(fp)
    mv a3, t1
    lw t2, -28(fp)
    mv a4, t2
    lw t3, -32(fp)
    mv a5, t3
    lw t4, -36(fp)
    mv a6, t4
    lw t5, -40(fp)
    mv a7, t5
    li t6, 9
    sw t6, 0(sp)
    li t0, 10
    sw t0, 4(sp)
    li t1, 11
    sw t1, 8(sp)
    li t2, 12
    sw t2, 12(sp)
    li t3, 13
    sw t3, 16(sp)
    li t4, 14
    sw t4, 20(sp)
    li t5, 15
    sw t5, 24(sp)
    li t6, 16
    sw t6, 28(sp)
    lw t0, -84(fp)
    sw t0, 32(sp)
    lw t1, -88(fp)
    sw t1, 36(sp)
    lw t2, -92(fp)
    sw t2, 40(sp)
    lw t3, -96(fp)
    sw t3, 44(sp)
    lw t4, -100(fp)
    sw t4, 48(sp)
    lw t5, -104(fp)
    sw t5, 52(sp)
    lw t6, -108(fp)
    sw t6, 56(sp)
    lw t0, -112(fp)
    sw t0, 60(sp)
    li t1, 25
    sw t1, 64(sp)
    li t2, 26
    sw t2, 68(sp)
    li t3, 27
    sw t3, 72(sp)
    li t4, 28
    sw t4, 76(sp)
    li t5, 29
    sw t5, 80(sp)
    li t6, 30
    sw t6, 84(sp)
    li t0, 31
    sw t0, 88(sp)
    li t1, 32
    sw t1, 92(sp)
    lw t2, -12(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, 96(sp)
    lw t5, -16(fp)
    li t6, 2
    add t0, t5, t6
    sw t0, 100(sp)
    lw t1, -20(fp)
    li t2, 3
    add t3, t1, t2
    sw t3, 104(sp)
    lw t4, -24(fp)
    li t5, 4
    add t6, t4, t5
    sw t6, 108(sp)
    lw t0, -28(fp)
    li t1, 5
    add t2, t0, t1
    sw t2, 112(sp)
    lw t3, -32(fp)
    li t4, 6
    add t5, t3, t4
    sw t5, 116(sp)
    lw t6, -36(fp)
    li t0, 7
    add t1, t6, t0
    sw t1, 120(sp)
    lw t2, -40(fp)
    li t3, 8
    add t4, t2, t3
    sw t4, 124(sp)
    lw t5, -44(fp)
    li t6, 9
    mul t0, t5, t6
    sw t0, 128(sp)
    lw t1, -48(fp)
    li t2, 10
    mul t3, t1, t2
    sw t3, 132(sp)
    lw t4, -52(fp)
    li t5, 11
    mul t6, t4, t5
    sw t6, 136(sp)
    lw t0, -56(fp)
    li t1, 12
    mul t2, t0, t1
    sw t2, 140(sp)
    lw t3, -60(fp)
    li t4, 13
    mul t5, t3, t4
    sw t5, 144(sp)
    lw t6, -64(fp)
    li t0, 14
    mul t1, t6, t0
    sw t1, 148(sp)
    lw t2, -68(fp)
    li t3, 15
    mul t4, t2, t3
    sw t4, 152(sp)
    lw t5, -72(fp)
    li t6, 16
    mul t0, t5, t6
    sw t0, 156(sp)
    lw t1, -12(fp)
    lw t2, -84(fp)
    add t3, t1, t2
    sw t3, 160(sp)
    lw t4, -16(fp)
    lw t5, -88(fp)
    add t6, t4, t5
    sw t6, 164(sp)
    lw t0, -20(fp)
    lw t1, -92(fp)
    add t2, t0, t1
    sw t2, 168(sp)
    lw t3, -24(fp)
    lw t4, -96(fp)
    add t5, t3, t4
    sw t5, 172(sp)
    lw t6, -28(fp)
    lw t0, -100(fp)
    add t1, t6, t0
    sw t1, 176(sp)
    lw t2, -32(fp)
    lw t3, -104(fp)
    add t4, t2, t3
    sw t4, 180(sp)
    lw t5, -36(fp)
    lw t6, -108(fp)
    add t0, t5, t6
    sw t0, 184(sp)
    lw t1, -40(fp)
    lw t2, -112(fp)
    add t3, t1, t2
    sw t3, 188(sp)
    lw t4, -12(fp)
    lw t5, -44(fp)
    mul t6, t4, t5
    lw t0, -148(fp)
    add t1, t6, t0
    sw t1, 192(sp)
    lw t2, -16(fp)
    lw t3, -48(fp)
    mul t4, t2, t3
    lw t5, -148(fp)
    add t6, t4, t5
    sw t6, 196(sp)
    lw t0, -20(fp)
    lw t1, -52(fp)
    mul t2, t0, t1
    lw t3, -148(fp)
    add t4, t2, t3
    sw t4, 200(sp)
    lw t5, -24(fp)
    lw t6, -56(fp)
    mul t0, t5, t6
    lw t1, -148(fp)
    add t2, t0, t1
    sw t2, 204(sp)
    lw t3, -28(fp)
    lw t4, -60(fp)
    mul t5, t3, t4
    lw t6, -148(fp)
    add t0, t5, t6
    sw t0, 208(sp)
    lw t1, -32(fp)
    lw t2, -64(fp)
    mul t3, t1, t2
    lw t4, -148(fp)
    add t5, t3, t4
    sw t5, 212(sp)
    lw t6, -36(fp)
    lw t0, -68(fp)
    mul t1, t6, t0
    lw t2, -148(fp)
    add t3, t1, t2
    sw t3, 216(sp)
    lw t4, -40(fp)
    lw t5, -72(fp)
    mul t6, t4, t5
    lw t0, -76(fp)
    lw t1, -80(fp)
    add t2, t0, t1
    lw t3, -148(fp)
    add t4, t2, t3
    add t5, t6, t4
    sw t5, 220(sp)
    jal ra, sum64
    addi sp, sp, 224
    sw a0, -152(fp)
    lw t6, -76(fp)
    lw t0, -80(fp)
    add t1, t6, t0
    lw t2, -148(fp)
    add t3, t1, t2
    lw t4, -152(fp)
    add t5, t3, t4
    sw t5, -156(fp)
    lw t6, -156(fp)
    li t0, 256
    rem t1, t6, t0
    mv a0, t1
    lw ra, 476(sp)
    lw t0, 472(sp)
    addi sp, sp, 480
    mv fp, t0
    ret