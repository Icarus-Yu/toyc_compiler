    .text
    .globl main
    # ToyC Compiler Generated Code
sum8:
    # Function: sum8
    # prologue
    addi sp, sp, -64
    sw ra, 60(sp)
    sw fp, 56(sp)
    addi fp, sp, 64
    sw s4, 52(sp)
    sw s3, 48(sp)
    sw s2, 44(sp)
    sw a0, -24(fp)
    sw a1, -28(fp)
    sw a2, -32(fp)
    sw a3, -36(fp)
    sw a4, -40(fp)
    sw a5, -44(fp)
    sw a6, -48(fp)
    sw a7, -52(fp)
    lw t0, -24(fp)
    lw t1, -28(fp)
    add t2, t0, t1
    lw t3, -32(fp)
    add t4, t2, t3
    lw t5, -36(fp)
    add t6, t4, t5
    lw s2, -40(fp)
    add s3, t6, s2
    lw s4, -44(fp)
    add t0, s3, s4
    lw t1, -48(fp)
    add t2, t0, t1
    lw t3, -52(fp)
    add t4, t2, t3
    mv a0, t4
    lw s4, 52(sp)
    lw s3, 48(sp)
    lw s2, 44(sp)
    lw ra, 60(sp)
    lw t0, 56(sp)
    addi sp, sp, 64
    mv fp, t0
    ret
sum16:
    # Function: sum16
    # prologue
    addi sp, sp, -96
    sw ra, 92(sp)
    sw fp, 88(sp)
    addi fp, sp, 96
    sw s4, 84(sp)
    sw s3, 80(sp)
    sw s2, 76(sp)
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
    lw t2, 8(fp)
    sw t2, -64(fp)
    lw t3, 12(fp)
    sw t3, -68(fp)
    lw t4, 16(fp)
    sw t4, -72(fp)
    lw t5, 20(fp)
    sw t5, -76(fp)
    lw t6, 24(fp)
    sw t6, -80(fp)
    lw s2, 28(fp)
    sw s2, -84(fp)
    lw s3, -24(fp)
    lw s4, -28(fp)
    add t0, s3, s4
    lw t1, -32(fp)
    add t2, t0, t1
    lw t3, -36(fp)
    add t4, t2, t3
    lw t5, -40(fp)
    add t6, t4, t5
    lw s2, -44(fp)
    add s3, t6, s2
    lw s4, -48(fp)
    add t0, s3, s4
    lw t1, -52(fp)
    add t2, t0, t1
    lw t3, -56(fp)
    add t4, t2, t3
    lw t5, -60(fp)
    add t6, t4, t5
    lw s2, -64(fp)
    add s3, t6, s2
    lw s4, -68(fp)
    add t0, s3, s4
    lw t1, -72(fp)
    add t2, t0, t1
    lw t3, -76(fp)
    add t4, t2, t3
    lw t5, -80(fp)
    add t6, t4, t5
    lw s2, -84(fp)
    add s3, t6, s2
    mv a0, s3
    lw s4, 84(sp)
    lw s3, 80(sp)
    lw s2, 76(sp)
    lw ra, 92(sp)
    lw t0, 88(sp)
    addi sp, sp, 96
    mv fp, t0
    ret
sum32:
    # Function: sum32
    # prologue
    addi sp, sp, -176
    sw ra, 172(sp)
    sw fp, 168(sp)
    addi fp, sp, 176
    sw s4, 164(sp)
    sw s3, 160(sp)
    sw s2, 156(sp)
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
    lw t2, 8(fp)
    sw t2, -64(fp)
    lw t3, 12(fp)
    sw t3, -68(fp)
    lw t4, 16(fp)
    sw t4, -72(fp)
    lw t5, 20(fp)
    sw t5, -76(fp)
    lw t6, 24(fp)
    sw t6, -80(fp)
    lw s2, 28(fp)
    sw s2, -84(fp)
    lw s3, 32(fp)
    sw s3, -88(fp)
    lw s4, 36(fp)
    sw s4, -92(fp)
    lw t0, 40(fp)
    sw t0, -96(fp)
    lw t1, 44(fp)
    sw t1, -100(fp)
    lw t2, 48(fp)
    sw t2, -104(fp)
    lw t3, 52(fp)
    sw t3, -108(fp)
    lw t4, 56(fp)
    sw t4, -112(fp)
    lw t5, 60(fp)
    sw t5, -116(fp)
    lw t6, 64(fp)
    sw t6, -120(fp)
    lw s2, 68(fp)
    sw s2, -124(fp)
    lw s3, 72(fp)
    sw s3, -128(fp)
    lw s4, 76(fp)
    sw s4, -132(fp)
    lw t0, 80(fp)
    sw t0, -136(fp)
    lw t1, 84(fp)
    sw t1, -140(fp)
    lw t2, 88(fp)
    sw t2, -144(fp)
    lw t3, 92(fp)
    sw t3, -148(fp)
    lw t4, -24(fp)
    lw t5, -28(fp)
    add t6, t4, t5
    lw s2, -32(fp)
    add s3, t6, s2
    lw s4, -36(fp)
    add t0, s3, s4
    lw t1, -40(fp)
    add t2, t0, t1
    lw t3, -44(fp)
    add t4, t2, t3
    lw t5, -48(fp)
    add t6, t4, t5
    lw s2, -52(fp)
    add s3, t6, s2
    sw s3, -152(fp)
    lw s4, -56(fp)
    lw t0, -60(fp)
    add t1, s4, t0
    lw t2, -64(fp)
    add t3, t1, t2
    lw t4, -68(fp)
    add t5, t3, t4
    lw t6, -72(fp)
    add s2, t5, t6
    lw s3, -76(fp)
    add s4, s2, s3
    lw t0, -80(fp)
    add t1, s4, t0
    lw t2, -84(fp)
    add t3, t1, t2
    sw t3, -156(fp)
    lw t4, -88(fp)
    lw t5, -92(fp)
    add t6, t4, t5
    lw s2, -96(fp)
    add s3, t6, s2
    lw s4, -100(fp)
    add t0, s3, s4
    lw t1, -104(fp)
    add t2, t0, t1
    lw t3, -108(fp)
    add t4, t2, t3
    lw t5, -112(fp)
    add t6, t4, t5
    lw s2, -116(fp)
    add s3, t6, s2
    sw s3, -160(fp)
    lw s4, -120(fp)
    lw t0, -124(fp)
    add t1, s4, t0
    lw t2, -128(fp)
    add t3, t1, t2
    lw t4, -132(fp)
    add t5, t3, t4
    lw t6, -136(fp)
    add s2, t5, t6
    lw s3, -140(fp)
    add s4, s2, s3
    lw t0, -144(fp)
    add t1, s4, t0
    lw t2, -148(fp)
    add t3, t1, t2
    sw t3, -164(fp)
    lw t4, -152(fp)
    lw t5, -156(fp)
    add t6, t4, t5
    lw s2, -160(fp)
    add s3, t6, s2
    lw s4, -164(fp)
    add t0, s3, s4
    mv a0, t0
    lw s4, 164(sp)
    lw s3, 160(sp)
    lw s2, 156(sp)
    lw ra, 172(sp)
    lw t0, 168(sp)
    addi sp, sp, 176
    mv fp, t0
    ret
sum64:
    # Function: sum64
    # prologue
    addi sp, sp, -320
    sw ra, 316(sp)
    sw fp, 312(sp)
    addi fp, sp, 320
    sw s4, 308(sp)
    sw s3, 304(sp)
    sw s2, 300(sp)
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
    lw t2, 8(fp)
    sw t2, -64(fp)
    lw t3, 12(fp)
    sw t3, -68(fp)
    lw t4, 16(fp)
    sw t4, -72(fp)
    lw t5, 20(fp)
    sw t5, -76(fp)
    lw t6, 24(fp)
    sw t6, -80(fp)
    lw s2, 28(fp)
    sw s2, -84(fp)
    lw s3, 32(fp)
    sw s3, -88(fp)
    lw s4, 36(fp)
    sw s4, -92(fp)
    lw t0, 40(fp)
    sw t0, -96(fp)
    lw t1, 44(fp)
    sw t1, -100(fp)
    lw t2, 48(fp)
    sw t2, -104(fp)
    lw t3, 52(fp)
    sw t3, -108(fp)
    lw t4, 56(fp)
    sw t4, -112(fp)
    lw t5, 60(fp)
    sw t5, -116(fp)
    lw t6, 64(fp)
    sw t6, -120(fp)
    lw s2, 68(fp)
    sw s2, -124(fp)
    lw s3, 72(fp)
    sw s3, -128(fp)
    lw s4, 76(fp)
    sw s4, -132(fp)
    lw t0, 80(fp)
    sw t0, -136(fp)
    lw t1, 84(fp)
    sw t1, -140(fp)
    lw t2, 88(fp)
    sw t2, -144(fp)
    lw t3, 92(fp)
    sw t3, -148(fp)
    lw t4, 96(fp)
    sw t4, -152(fp)
    lw t5, 100(fp)
    sw t5, -156(fp)
    lw t6, 104(fp)
    sw t6, -160(fp)
    lw s2, 108(fp)
    sw s2, -164(fp)
    lw s3, 112(fp)
    sw s3, -168(fp)
    lw s4, 116(fp)
    sw s4, -172(fp)
    lw t0, 120(fp)
    sw t0, -176(fp)
    lw t1, 124(fp)
    sw t1, -180(fp)
    lw t2, 128(fp)
    sw t2, -184(fp)
    lw t3, 132(fp)
    sw t3, -188(fp)
    lw t4, 136(fp)
    sw t4, -192(fp)
    lw t5, 140(fp)
    sw t5, -196(fp)
    lw t6, 144(fp)
    sw t6, -200(fp)
    lw s2, 148(fp)
    sw s2, -204(fp)
    lw s3, 152(fp)
    sw s3, -208(fp)
    lw s4, 156(fp)
    sw s4, -212(fp)
    lw t0, 160(fp)
    sw t0, -216(fp)
    lw t1, 164(fp)
    sw t1, -220(fp)
    lw t2, 168(fp)
    sw t2, -224(fp)
    lw t3, 172(fp)
    sw t3, -228(fp)
    lw t4, 176(fp)
    sw t4, -232(fp)
    lw t5, 180(fp)
    sw t5, -236(fp)
    lw t6, 184(fp)
    sw t6, -240(fp)
    lw s2, 188(fp)
    sw s2, -244(fp)
    lw s3, 192(fp)
    sw s3, -248(fp)
    lw s4, 196(fp)
    sw s4, -252(fp)
    lw t0, 200(fp)
    sw t0, -256(fp)
    lw t1, 204(fp)
    sw t1, -260(fp)
    lw t2, 208(fp)
    sw t2, -264(fp)
    lw t3, 212(fp)
    sw t3, -268(fp)
    lw t4, 216(fp)
    sw t4, -272(fp)
    lw t5, 220(fp)
    sw t5, -276(fp)
    lw t6, -24(fp)
    lw s2, -28(fp)
    add s3, t6, s2
    lw s4, -32(fp)
    add t0, s3, s4
    lw t1, -36(fp)
    add t2, t0, t1
    lw t3, -40(fp)
    add t4, t2, t3
    lw t5, -44(fp)
    add t6, t4, t5
    lw s2, -48(fp)
    add s3, t6, s2
    lw s4, -52(fp)
    add t0, s3, s4
    sw t0, -280(fp)
    lw t1, -56(fp)
    lw t2, -60(fp)
    add t3, t1, t2
    lw t4, -64(fp)
    add t5, t3, t4
    lw t6, -68(fp)
    add s2, t5, t6
    lw s3, -72(fp)
    add s4, s2, s3
    lw t0, -76(fp)
    add t1, s4, t0
    lw t2, -80(fp)
    add t3, t1, t2
    lw t4, -84(fp)
    add t5, t3, t4
    sw t5, -284(fp)
    lw t6, -88(fp)
    lw s2, -92(fp)
    add s3, t6, s2
    lw s4, -96(fp)
    add t0, s3, s4
    lw t1, -100(fp)
    add t2, t0, t1
    lw t3, -104(fp)
    add t4, t2, t3
    lw t5, -108(fp)
    add t6, t4, t5
    lw s2, -112(fp)
    add s3, t6, s2
    lw s4, -116(fp)
    add t0, s3, s4
    sw t0, -288(fp)
    lw t1, -120(fp)
    lw t2, -124(fp)
    add t3, t1, t2
    lw t4, -128(fp)
    add t5, t3, t4
    lw t6, -132(fp)
    add s2, t5, t6
    lw s3, -136(fp)
    add s4, s2, s3
    lw t0, -140(fp)
    add t1, s4, t0
    lw t2, -144(fp)
    add t3, t1, t2
    lw t4, -148(fp)
    add t5, t3, t4
    sw t5, -292(fp)
    lw t6, -152(fp)
    lw s2, -156(fp)
    add s3, t6, s2
    lw s4, -160(fp)
    add t0, s3, s4
    lw t1, -164(fp)
    add t2, t0, t1
    lw t3, -168(fp)
    add t4, t2, t3
    lw t5, -172(fp)
    add t6, t4, t5
    lw s2, -176(fp)
    add s3, t6, s2
    lw s4, -180(fp)
    add t0, s3, s4
    sw t0, -296(fp)
    lw t1, -184(fp)
    lw t2, -188(fp)
    add t3, t1, t2
    lw t4, -192(fp)
    add t5, t3, t4
    lw t6, -196(fp)
    add s2, t5, t6
    lw s3, -200(fp)
    add s4, s2, s3
    lw t0, -204(fp)
    add t1, s4, t0
    lw t2, -208(fp)
    add t3, t1, t2
    lw t4, -212(fp)
    add t5, t3, t4
    sw t5, -300(fp)
    lw t6, -216(fp)
    lw s2, -220(fp)
    add s3, t6, s2
    lw s4, -224(fp)
    add t0, s3, s4
    lw t1, -228(fp)
    add t2, t0, t1
    lw t3, -232(fp)
    add t4, t2, t3
    lw t5, -236(fp)
    add t6, t4, t5
    lw s2, -240(fp)
    add s3, t6, s2
    lw s4, -244(fp)
    add t0, s3, s4
    sw t0, -304(fp)
    lw t1, -248(fp)
    lw t2, -252(fp)
    add t3, t1, t2
    lw t4, -256(fp)
    add t5, t3, t4
    lw t6, -260(fp)
    add s2, t5, t6
    lw s3, -264(fp)
    add s4, s2, s3
    lw t0, -268(fp)
    add t1, s4, t0
    lw t2, -272(fp)
    add t3, t1, t2
    lw t4, -276(fp)
    add t5, t3, t4
    sw t5, -308(fp)
    lw t6, -280(fp)
    lw s2, -284(fp)
    add s3, t6, s2
    lw s4, -288(fp)
    add t0, s3, s4
    lw t1, -292(fp)
    add t2, t0, t1
    lw t3, -296(fp)
    add t4, t2, t3
    lw t5, -300(fp)
    add t6, t4, t5
    lw s2, -304(fp)
    add s3, t6, s2
    lw s4, -308(fp)
    add t0, s3, s4
    mv a0, t0
    lw s4, 308(sp)
    lw s3, 304(sp)
    lw s2, 300(sp)
    lw ra, 316(sp)
    lw t0, 312(sp)
    addi sp, sp, 320
    mv fp, t0
    ret
main:
    # Function: main
    # prologue
    addi sp, sp, -176
    sw ra, 172(sp)
    sw fp, 168(sp)
    addi fp, sp, 176
    sw s4, 164(sp)
    sw s3, 160(sp)
    sw s2, 156(sp)
    li t0, 1
    sw t0, -24(fp)
    li t1, 2
    sw t1, -28(fp)
    li t2, 3
    sw t2, -32(fp)
    li t3, 4
    sw t3, -36(fp)
    li t4, 5
    sw t4, -40(fp)
    li t5, 6
    sw t5, -44(fp)
    li t6, 7
    sw t6, -48(fp)
    li s2, 8
    sw s2, -52(fp)
    li s3, 9
    sw s3, -56(fp)
    li s4, 10
    sw s4, -60(fp)
    li t0, 11
    sw t0, -64(fp)
    li t1, 12
    sw t1, -68(fp)
    li t2, 13
    sw t2, -72(fp)
    li t3, 14
    sw t3, -76(fp)
    li t4, 15
    sw t4, -80(fp)
    li t5, 16
    sw t5, -84(fp)
    lw t6, -24(fp)
    mv a0, t6
    li s2, 1
    mv a1, s2
    lw s3, -32(fp)
    mv a2, s3
    li s4, 2
    mv a3, s4
    lw t0, -40(fp)
    mv a4, t0
    li t1, 3
    mv a5, t1
    lw t2, -48(fp)
    mv a6, t2
    li t3, 4
    mv a7, t3
    jal ra, sum8
    sw a0, -88(fp)
    addi sp, sp, -32
    lw t4, -24(fp)
    mv a0, t4
    lw t5, -28(fp)
    mv a1, t5
    lw t6, -32(fp)
    mv a2, t6
    lw s2, -36(fp)
    mv a3, s2
    lw s3, -40(fp)
    mv a4, s3
    lw s4, -44(fp)
    mv a5, s4
    lw t0, -48(fp)
    mv a6, t0
    lw t1, -52(fp)
    mv a7, t1
    li t2, 1
    sw t2, 0(sp)
    li t3, 2
    sw t3, 4(sp)
    li t4, 3
    sw t4, 8(sp)
    li t5, 4
    sw t5, 12(sp)
    lw t6, -88(fp)
    lw s2, -72(fp)
    add s3, t6, s2
    sw s3, 16(sp)
    lw s4, -88(fp)
    lw t0, -76(fp)
    add t1, s4, t0
    sw t1, 20(sp)
    lw t2, -88(fp)
    lw t3, -80(fp)
    add t4, t2, t3
    sw t4, 24(sp)
    lw t5, -88(fp)
    lw t6, -84(fp)
    add s2, t5, t6
    sw s2, 28(sp)
    jal ra, sum16
    addi sp, sp, 32
    sw a0, -92(fp)
    li s3, 17
    sw s3, -96(fp)
    li s4, 18
    sw s4, -100(fp)
    li t0, 19
    sw t0, -104(fp)
    li t1, 20
    sw t1, -108(fp)
    li t2, 21
    sw t2, -112(fp)
    li t3, 22
    sw t3, -116(fp)
    li t4, 23
    sw t4, -120(fp)
    li t5, 24
    sw t5, -124(fp)
    li t6, 25
    sw t6, -128(fp)
    li s2, 26
    sw s2, -132(fp)
    li s3, 27
    sw s3, -136(fp)
    li s4, 28
    sw s4, -140(fp)
    li t0, 29
    sw t0, -144(fp)
    li t1, 30
    sw t1, -148(fp)
    li t2, 31
    sw t2, -152(fp)
    li t3, 32
    sw t3, -156(fp)
    addi sp, sp, -96
    lw t4, -24(fp)
    mv a0, t4
    lw t5, -28(fp)
    mv a1, t5
    lw t6, -32(fp)
    mv a2, t6
    lw s2, -36(fp)
    mv a3, s2
    lw s3, -40(fp)
    mv a4, s3
    lw s4, -44(fp)
    mv a5, s4
    lw t0, -48(fp)
    mv a6, t0
    lw t1, -52(fp)
    mv a7, t1
    lw t2, -56(fp)
    sw t2, 0(sp)
    lw t3, -60(fp)
    sw t3, 4(sp)
    lw t4, -64(fp)
    sw t4, 8(sp)
    lw t5, -68(fp)
    sw t5, 12(sp)
    lw t6, -72(fp)
    sw t6, 16(sp)
    lw s2, -76(fp)
    sw s2, 20(sp)
    lw s3, -80(fp)
    sw s3, 24(sp)
    lw s4, -84(fp)
    sw s4, 28(sp)
    lw t0, -96(fp)
    sw t0, 32(sp)
    lw t1, -100(fp)
    sw t1, 36(sp)
    lw t2, -104(fp)
    sw t2, 40(sp)
    lw t3, -108(fp)
    sw t3, 44(sp)
    lw t4, -112(fp)
    sw t4, 48(sp)
    lw t5, -116(fp)
    sw t5, 52(sp)
    lw t6, -120(fp)
    sw t6, 56(sp)
    lw s2, -124(fp)
    sw s2, 60(sp)
    lw s3, -128(fp)
    sw s3, 64(sp)
    lw s4, -132(fp)
    sw s4, 68(sp)
    lw t0, -136(fp)
    sw t0, 72(sp)
    lw t1, -140(fp)
    sw t1, 76(sp)
    lw t2, -144(fp)
    sw t2, 80(sp)
    lw t3, -148(fp)
    sw t3, 84(sp)
    lw t4, -152(fp)
    sw t4, 88(sp)
    lw t5, -156(fp)
    sw t5, 92(sp)
    jal ra, sum32
    addi sp, sp, 96
    sw a0, -160(fp)
    addi sp, sp, -224
    lw t6, -24(fp)
    mv a0, t6
    lw s2, -28(fp)
    mv a1, s2
    lw s3, -32(fp)
    mv a2, s3
    lw s4, -36(fp)
    mv a3, s4
    lw t0, -40(fp)
    mv a4, t0
    lw t1, -44(fp)
    mv a5, t1
    lw t2, -48(fp)
    mv a6, t2
    lw t3, -52(fp)
    mv a7, t3
    li t4, 9
    sw t4, 0(sp)
    li t5, 10
    sw t5, 4(sp)
    li t6, 11
    sw t6, 8(sp)
    li s2, 12
    sw s2, 12(sp)
    li s3, 13
    sw s3, 16(sp)
    li s4, 14
    sw s4, 20(sp)
    li t0, 15
    sw t0, 24(sp)
    li t1, 16
    sw t1, 28(sp)
    lw t2, -96(fp)
    sw t2, 32(sp)
    lw t3, -100(fp)
    sw t3, 36(sp)
    lw t4, -104(fp)
    sw t4, 40(sp)
    lw t5, -108(fp)
    sw t5, 44(sp)
    lw t6, -112(fp)
    sw t6, 48(sp)
    lw s2, -116(fp)
    sw s2, 52(sp)
    lw s3, -120(fp)
    sw s3, 56(sp)
    lw s4, -124(fp)
    sw s4, 60(sp)
    li t0, 25
    sw t0, 64(sp)
    li t1, 26
    sw t1, 68(sp)
    li t2, 27
    sw t2, 72(sp)
    li t3, 28
    sw t3, 76(sp)
    li t4, 29
    sw t4, 80(sp)
    li t5, 30
    sw t5, 84(sp)
    li t6, 31
    sw t6, 88(sp)
    li s2, 32
    sw s2, 92(sp)
    lw s3, -24(fp)
    li s4, 1
    add t0, s3, s4
    sw t0, 96(sp)
    lw t1, -28(fp)
    li t2, 2
    add t3, t1, t2
    sw t3, 100(sp)
    lw t4, -32(fp)
    li t5, 3
    add t6, t4, t5
    sw t6, 104(sp)
    lw s2, -36(fp)
    li s3, 4
    add s4, s2, s3
    sw s4, 108(sp)
    lw t0, -40(fp)
    li t1, 5
    add t2, t0, t1
    sw t2, 112(sp)
    lw t3, -44(fp)
    li t4, 6
    add t5, t3, t4
    sw t5, 116(sp)
    lw t6, -48(fp)
    li s2, 7
    add s3, t6, s2
    sw s3, 120(sp)
    lw s4, -52(fp)
    li t0, 8
    add t1, s4, t0
    sw t1, 124(sp)
    lw t2, -56(fp)
    li t3, 9
    mul t4, t2, t3
    sw t4, 128(sp)
    lw t5, -60(fp)
    li t6, 10
    mul s2, t5, t6
    sw s2, 132(sp)
    lw s3, -64(fp)
    li s4, 11
    mul t0, s3, s4
    sw t0, 136(sp)
    lw t1, -68(fp)
    li t2, 12
    mul t3, t1, t2
    sw t3, 140(sp)
    lw t4, -72(fp)
    li t5, 13
    mul t6, t4, t5
    sw t6, 144(sp)
    lw s2, -76(fp)
    li s3, 14
    mul s4, s2, s3
    sw s4, 148(sp)
    lw t0, -80(fp)
    li t1, 15
    mul t2, t0, t1
    sw t2, 152(sp)
    lw t3, -84(fp)
    li t4, 16
    mul t5, t3, t4
    sw t5, 156(sp)
    lw t6, -24(fp)
    lw s2, -96(fp)
    add s3, t6, s2
    sw s3, 160(sp)
    lw s4, -28(fp)
    lw t0, -100(fp)
    add t1, s4, t0
    sw t1, 164(sp)
    lw t2, -32(fp)
    lw t3, -104(fp)
    add t4, t2, t3
    sw t4, 168(sp)
    lw t5, -36(fp)
    lw t6, -108(fp)
    add s2, t5, t6
    sw s2, 172(sp)
    lw s3, -40(fp)
    lw s4, -112(fp)
    add t0, s3, s4
    sw t0, 176(sp)
    lw t1, -44(fp)
    lw t2, -116(fp)
    add t3, t1, t2
    sw t3, 180(sp)
    lw t4, -48(fp)
    lw t5, -120(fp)
    add t6, t4, t5
    sw t6, 184(sp)
    lw s2, -52(fp)
    lw s3, -124(fp)
    add s4, s2, s3
    sw s4, 188(sp)
    lw t0, -24(fp)
    lw t1, -56(fp)
    mul t2, t0, t1
    lw t3, -160(fp)
    add t4, t2, t3
    sw t4, 192(sp)
    lw t5, -28(fp)
    lw t6, -60(fp)
    mul s2, t5, t6
    lw s3, -160(fp)
    add s4, s2, s3
    sw s4, 196(sp)
    lw t0, -32(fp)
    lw t1, -64(fp)
    mul t2, t0, t1
    lw t3, -160(fp)
    add t4, t2, t3
    sw t4, 200(sp)
    lw t5, -36(fp)
    lw t6, -68(fp)
    mul s2, t5, t6
    lw s3, -160(fp)
    add s4, s2, s3
    sw s4, 204(sp)
    lw t0, -40(fp)
    lw t1, -72(fp)
    mul t2, t0, t1
    lw t3, -160(fp)
    add t4, t2, t3
    sw t4, 208(sp)
    lw t5, -44(fp)
    lw t6, -76(fp)
    mul s2, t5, t6
    lw s3, -160(fp)
    add s4, s2, s3
    sw s4, 212(sp)
    lw t0, -48(fp)
    lw t1, -80(fp)
    mul t2, t0, t1
    lw t3, -160(fp)
    add t4, t2, t3
    sw t4, 216(sp)
    lw t5, -52(fp)
    lw t6, -84(fp)
    mul s2, t5, t6
    lw s3, -88(fp)
    lw s4, -92(fp)
    add t0, s3, s4
    lw t1, -160(fp)
    add t2, t0, t1
    add t3, s2, t2
    sw t3, 220(sp)
    jal ra, sum64
    addi sp, sp, 224
    sw a0, -164(fp)
    lw t4, -88(fp)
    lw t5, -92(fp)
    add t6, t4, t5
    lw s2, -160(fp)
    add s3, t6, s2
    lw s4, -164(fp)
    add t0, s3, s4
    sw t0, -168(fp)
    lw t1, -168(fp)
    li t2, 256
    rem t3, t1, t2
    mv a0, t3
    lw s4, 164(sp)
    lw s3, 160(sp)
    lw s2, 156(sp)
    lw ra, 172(sp)
    lw t0, 168(sp)
    addi sp, sp, 176
    mv fp, t0
    ret