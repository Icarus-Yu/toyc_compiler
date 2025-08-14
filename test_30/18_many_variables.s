    .text
    .globl main
    # ToyC Compiler Generated Code
abs:
    # Function: abs
    # prologue
    addi sp, sp, -16
    sw ra, 12(sp)
    sw fp, 8(sp)
    addi fp, sp, 16
    sw a0, -12(fp)
    lw t0, -12(fp)
    li t1, 0
    slt t2, t0, t1
    beq t2, zero, else0
    lw t3, -12(fp)
    sub t4, zero, t3
    mv a0, t4
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif1
else0:
    lw t5, -12(fp)
    mv a0, t5
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
endif1:
compute:
    # Function: compute
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
    lw t2, -20(fp)
    mul t3, t1, t2
    add t4, t0, t3
    lw t5, -24(fp)
    lw t6, -28(fp)
    mv a0, t6
    jal ra, abs
    li s2, 1
    add s3, a0, s2
    lw s4, -24(fp)
    div s5, s4, s3
    sub s6, t4, s5
    lw t0, -32(fp)
    lw t1, -36(fp)
    mv a0, t1
    jal ra, abs
    li t2, 1
    add t3, a0, t2
    lw t4, -32(fp)
    rem t5, t4, t3
    lw t6, -40(fp)
    mul s2, t5, t6
    add s3, s6, s2
    mv a0, s3
    lw ra, 44(sp)
    lw t0, 40(sp)
    addi sp, sp, 48
    mv fp, t0
    ret
main:
    # Function: main
    # prologue
    addi sp, sp, -608
    sw ra, 604(sp)
    sw fp, 600(sp)
    addi fp, sp, 608
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
    li s2, 8
    sw s2, -40(fp)
    li s3, 9
    sw s3, -44(fp)
    li s4, 10
    sw s4, -48(fp)
    li s5, 11
    sw s5, -52(fp)
    li s6, 12
    sw s6, -56(fp)
    li t0, 13
    sw t0, -60(fp)
    li t1, 14
    sw t1, -64(fp)
    li t2, 15
    sw t2, -68(fp)
    li t3, 16
    sw t3, -72(fp)
    li t4, 17
    sw t4, -76(fp)
    li t5, 18
    sw t5, -80(fp)
    li t6, 19
    sw t6, -84(fp)
    li s2, 20
    sw s2, -88(fp)
    li s3, 21
    sw s3, -92(fp)
    li s4, 22
    sw s4, -96(fp)
    li s5, 23
    sw s5, -100(fp)
    li s6, 24
    sw s6, -104(fp)
    li t0, 25
    sw t0, -108(fp)
    li t1, 26
    sw t1, -112(fp)
    li t2, 27
    sw t2, -116(fp)
    li t3, 28
    sw t3, -120(fp)
    li t4, 29
    sw t4, -124(fp)
    li t5, 30
    sw t5, -128(fp)
    li t6, 31
    sw t6, -132(fp)
    li s2, 32
    sw s2, -136(fp)
    lw s3, -12(fp)
    lw s4, -16(fp)
    add s5, s3, s4
    lw s6, -20(fp)
    add t0, s5, s6
    lw t1, -24(fp)
    add t2, t0, t1
    lw t3, -28(fp)
    add t4, t2, t3
    lw t5, -32(fp)
    add t6, t4, t5
    lw s2, -36(fp)
    add s3, t6, s2
    lw s4, -40(fp)
    add s5, s3, s4
    sw s5, -140(fp)
    lw s6, -44(fp)
    lw t0, -48(fp)
    add t1, s6, t0
    lw t2, -52(fp)
    add t3, t1, t2
    lw t4, -56(fp)
    add t5, t3, t4
    lw t6, -60(fp)
    add s2, t5, t6
    lw s3, -64(fp)
    add s4, s2, s3
    lw s5, -68(fp)
    add s6, s4, s5
    lw t0, -72(fp)
    add t1, s6, t0
    sw t1, -144(fp)
    lw t2, -76(fp)
    lw t3, -80(fp)
    add t4, t2, t3
    lw t5, -84(fp)
    add t6, t4, t5
    lw s2, -88(fp)
    add s3, t6, s2
    lw s4, -92(fp)
    add s5, s3, s4
    lw s6, -96(fp)
    add t0, s5, s6
    lw t1, -100(fp)
    add t2, t0, t1
    lw t3, -104(fp)
    add t4, t2, t3
    sw t4, -148(fp)
    lw t5, -108(fp)
    lw t6, -112(fp)
    add s2, t5, t6
    lw s3, -116(fp)
    add s4, s2, s3
    lw s5, -120(fp)
    add s6, s4, s5
    lw t0, -124(fp)
    add t1, s6, t0
    lw t2, -128(fp)
    add t3, t1, t2
    lw t4, -132(fp)
    add t5, t3, t4
    lw t6, -136(fp)
    add s2, t5, t6
    sw s2, -152(fp)
    lw s3, -140(fp)
    lw s4, -144(fp)
    add s5, s3, s4
    lw s6, -148(fp)
    add t0, s5, s6
    lw t1, -152(fp)
    add t2, t0, t1
    sw t2, -156(fp)
    lw t3, -12(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -160(fp)
    lw t6, -16(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -164(fp)
    lw s4, -20(fp)
    li s5, 2
    mul s6, s4, s5
    sw s6, -168(fp)
    lw t0, -24(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -172(fp)
    lw t3, -28(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -176(fp)
    lw t6, -32(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -180(fp)
    lw s4, -36(fp)
    li s5, 2
    mul s6, s4, s5
    sw s6, -184(fp)
    lw t0, -40(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -188(fp)
    lw t3, -44(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -192(fp)
    lw t6, -48(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -196(fp)
    lw s4, -52(fp)
    li s5, 2
    mul s6, s4, s5
    sw s6, -200(fp)
    lw t0, -56(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -204(fp)
    lw t3, -60(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -208(fp)
    lw t6, -64(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -212(fp)
    lw s4, -68(fp)
    li s5, 2
    mul s6, s4, s5
    sw s6, -216(fp)
    lw t0, -72(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -220(fp)
    lw t3, -76(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -224(fp)
    lw t6, -80(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -228(fp)
    lw s4, -84(fp)
    li s5, 2
    mul s6, s4, s5
    sw s6, -232(fp)
    lw t0, -88(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -236(fp)
    lw t3, -92(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -240(fp)
    lw t6, -96(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -244(fp)
    lw s4, -100(fp)
    li s5, 2
    mul s6, s4, s5
    sw s6, -248(fp)
    lw t0, -104(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -252(fp)
    lw t3, -108(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -256(fp)
    lw t6, -112(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -260(fp)
    lw s4, -116(fp)
    li s5, 2
    mul s6, s4, s5
    sw s6, -264(fp)
    lw t0, -120(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -268(fp)
    lw t3, -124(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -272(fp)
    lw t6, -128(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -276(fp)
    lw s4, -132(fp)
    li s5, 2
    mul s6, s4, s5
    sw s6, -280(fp)
    lw t0, -136(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -284(fp)
    lw t3, -160(fp)
    lw t4, -164(fp)
    add t5, t3, t4
    lw t6, -168(fp)
    add s2, t5, t6
    lw s3, -172(fp)
    add s4, s2, s3
    lw s5, -176(fp)
    add s6, s4, s5
    lw t0, -180(fp)
    add t1, s6, t0
    lw t2, -184(fp)
    add t3, t1, t2
    lw t4, -188(fp)
    add t5, t3, t4
    sw t5, -288(fp)
    lw t6, -192(fp)
    lw s2, -196(fp)
    add s3, t6, s2
    lw s4, -200(fp)
    add s5, s3, s4
    lw s6, -204(fp)
    add t0, s5, s6
    lw t1, -208(fp)
    add t2, t0, t1
    lw t3, -212(fp)
    add t4, t2, t3
    lw t5, -216(fp)
    add t6, t4, t5
    lw s2, -220(fp)
    add s3, t6, s2
    sw s3, -292(fp)
    lw s4, -224(fp)
    lw s5, -228(fp)
    add s6, s4, s5
    lw t0, -232(fp)
    add t1, s6, t0
    lw t2, -236(fp)
    add t3, t1, t2
    lw t4, -240(fp)
    add t5, t3, t4
    lw t6, -244(fp)
    add s2, t5, t6
    lw s3, -248(fp)
    add s4, s2, s3
    lw s5, -252(fp)
    add s6, s4, s5
    sw s6, -296(fp)
    lw t0, -256(fp)
    lw t1, -260(fp)
    add t2, t0, t1
    lw t3, -264(fp)
    add t4, t2, t3
    lw t5, -268(fp)
    add t6, t4, t5
    lw s2, -272(fp)
    add s3, t6, s2
    lw s4, -276(fp)
    add s5, s3, s4
    lw s6, -280(fp)
    add t0, s5, s6
    lw t1, -284(fp)
    add t2, t0, t1
    sw t2, -300(fp)
    lw t3, -288(fp)
    lw t4, -292(fp)
    add t5, t3, t4
    lw t6, -296(fp)
    add s2, t5, t6
    lw s3, -300(fp)
    add s4, s2, s3
    sw s4, -304(fp)
    lw s5, -160(fp)
    lw s6, -12(fp)
    add t0, s5, s6
    sw t0, -308(fp)
    lw t1, -164(fp)
    lw t2, -16(fp)
    add t3, t1, t2
    sw t3, -312(fp)
    lw t4, -168(fp)
    lw t5, -20(fp)
    add t6, t4, t5
    sw t6, -316(fp)
    lw s2, -172(fp)
    lw s3, -24(fp)
    add s4, s2, s3
    sw s4, -320(fp)
    lw s5, -176(fp)
    lw s6, -28(fp)
    add t0, s5, s6
    sw t0, -324(fp)
    lw t1, -180(fp)
    lw t2, -32(fp)
    add t3, t1, t2
    sw t3, -328(fp)
    lw t4, -184(fp)
    lw t5, -36(fp)
    add t6, t4, t5
    sw t6, -332(fp)
    lw s2, -188(fp)
    lw s3, -40(fp)
    add s4, s2, s3
    sw s4, -336(fp)
    lw s5, -192(fp)
    lw s6, -44(fp)
    add t0, s5, s6
    sw t0, -340(fp)
    lw t1, -196(fp)
    lw t2, -48(fp)
    add t3, t1, t2
    sw t3, -344(fp)
    lw t4, -200(fp)
    lw t5, -52(fp)
    add t6, t4, t5
    sw t6, -348(fp)
    lw s2, -204(fp)
    lw s3, -56(fp)
    add s4, s2, s3
    sw s4, -352(fp)
    lw s5, -208(fp)
    lw s6, -60(fp)
    add t0, s5, s6
    sw t0, -356(fp)
    lw t1, -212(fp)
    lw t2, -64(fp)
    add t3, t1, t2
    sw t3, -360(fp)
    lw t4, -216(fp)
    lw t5, -68(fp)
    add t6, t4, t5
    sw t6, -364(fp)
    lw s2, -220(fp)
    lw s3, -72(fp)
    add s4, s2, s3
    sw s4, -368(fp)
    lw s5, -224(fp)
    lw s6, -76(fp)
    add t0, s5, s6
    sw t0, -372(fp)
    lw t1, -228(fp)
    lw t2, -80(fp)
    add t3, t1, t2
    sw t3, -376(fp)
    lw t4, -232(fp)
    lw t5, -84(fp)
    add t6, t4, t5
    sw t6, -380(fp)
    lw s2, -236(fp)
    lw s3, -88(fp)
    add s4, s2, s3
    sw s4, -384(fp)
    lw s5, -240(fp)
    lw s6, -92(fp)
    add t0, s5, s6
    sw t0, -388(fp)
    lw t1, -244(fp)
    lw t2, -96(fp)
    add t3, t1, t2
    sw t3, -392(fp)
    lw t4, -248(fp)
    lw t5, -100(fp)
    add t6, t4, t5
    sw t6, -396(fp)
    lw s2, -252(fp)
    lw s3, -104(fp)
    add s4, s2, s3
    sw s4, -400(fp)
    lw s5, -256(fp)
    lw s6, -108(fp)
    add t0, s5, s6
    sw t0, -404(fp)
    lw t1, -260(fp)
    lw t2, -112(fp)
    add t3, t1, t2
    sw t3, -408(fp)
    lw t4, -264(fp)
    lw t5, -116(fp)
    add t6, t4, t5
    sw t6, -412(fp)
    lw s2, -268(fp)
    lw s3, -120(fp)
    add s4, s2, s3
    sw s4, -416(fp)
    lw s5, -272(fp)
    lw s6, -124(fp)
    add t0, s5, s6
    sw t0, -420(fp)
    lw t1, -276(fp)
    lw t2, -128(fp)
    add t3, t1, t2
    sw t3, -424(fp)
    lw t4, -280(fp)
    lw t5, -132(fp)
    add t6, t4, t5
    sw t6, -428(fp)
    lw s2, -284(fp)
    lw s3, -136(fp)
    add s4, s2, s3
    sw s4, -432(fp)
    lw s5, -308(fp)
    lw s6, -312(fp)
    add t0, s5, s6
    lw t1, -316(fp)
    add t2, t0, t1
    lw t3, -320(fp)
    add t4, t2, t3
    lw t5, -324(fp)
    add t6, t4, t5
    lw s2, -328(fp)
    add s3, t6, s2
    lw s4, -332(fp)
    add s5, s3, s4
    lw s6, -336(fp)
    add t0, s5, s6
    sw t0, -436(fp)
    lw t1, -340(fp)
    lw t2, -344(fp)
    add t3, t1, t2
    lw t4, -348(fp)
    add t5, t3, t4
    lw t6, -352(fp)
    add s2, t5, t6
    lw s3, -356(fp)
    add s4, s2, s3
    lw s5, -360(fp)
    add s6, s4, s5
    lw t0, -364(fp)
    add t1, s6, t0
    lw t2, -368(fp)
    add t3, t1, t2
    sw t3, -440(fp)
    lw t4, -372(fp)
    lw t5, -376(fp)
    add t6, t4, t5
    lw s2, -380(fp)
    add s3, t6, s2
    lw s4, -384(fp)
    add s5, s3, s4
    lw s6, -388(fp)
    add t0, s5, s6
    lw t1, -392(fp)
    add t2, t0, t1
    lw t3, -396(fp)
    add t4, t2, t3
    lw t5, -400(fp)
    add t6, t4, t5
    sw t6, -444(fp)
    lw s2, -404(fp)
    lw s3, -408(fp)
    add s4, s2, s3
    lw s5, -412(fp)
    add s6, s4, s5
    lw t0, -416(fp)
    add t1, s6, t0
    lw t2, -420(fp)
    add t3, t1, t2
    lw t4, -424(fp)
    add t5, t3, t4
    lw t6, -428(fp)
    add s2, t5, t6
    lw s3, -432(fp)
    add s4, s2, s3
    sw s4, -448(fp)
    lw s5, -436(fp)
    lw s6, -440(fp)
    add t0, s5, s6
    lw t1, -444(fp)
    add t2, t0, t1
    lw t3, -448(fp)
    add t4, t2, t3
    sw t4, -452(fp)
    lw t5, -308(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -456(fp)
    lw s3, -312(fp)
    li s4, 1
    add s5, s3, s4
    sw s5, -460(fp)
    lw s6, -316(fp)
    li t0, 1
    add t1, s6, t0
    sw t1, -464(fp)
    lw t2, -320(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -468(fp)
    lw t5, -324(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -472(fp)
    lw s3, -328(fp)
    li s4, 1
    add s5, s3, s4
    sw s5, -476(fp)
    lw s6, -332(fp)
    li t0, 1
    add t1, s6, t0
    sw t1, -480(fp)
    lw t2, -336(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -484(fp)
    lw t5, -340(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -488(fp)
    lw s3, -344(fp)
    li s4, 1
    add s5, s3, s4
    sw s5, -492(fp)
    lw s6, -348(fp)
    li t0, 1
    add t1, s6, t0
    sw t1, -496(fp)
    lw t2, -352(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -500(fp)
    lw t5, -356(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -504(fp)
    lw s3, -360(fp)
    li s4, 1
    add s5, s3, s4
    sw s5, -508(fp)
    lw s6, -364(fp)
    li t0, 1
    add t1, s6, t0
    sw t1, -512(fp)
    lw t2, -368(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -516(fp)
    lw t5, -372(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -520(fp)
    lw s3, -376(fp)
    li s4, 1
    add s5, s3, s4
    sw s5, -524(fp)
    lw s6, -380(fp)
    li t0, 1
    add t1, s6, t0
    sw t1, -528(fp)
    lw t2, -384(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -532(fp)
    lw t5, -388(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -536(fp)
    lw s3, -392(fp)
    li s4, 1
    add s5, s3, s4
    sw s5, -540(fp)
    lw s6, -396(fp)
    li t0, 1
    add t1, s6, t0
    sw t1, -544(fp)
    lw t2, -400(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -548(fp)
    lw t5, -404(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -552(fp)
    lw s3, -408(fp)
    li s4, 1
    add s5, s3, s4
    sw s5, -556(fp)
    lw s6, -412(fp)
    li t0, 1
    add t1, s6, t0
    sw t1, -560(fp)
    lw t2, -416(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -564(fp)
    lw t5, -420(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -568(fp)
    lw s3, -424(fp)
    li s4, 1
    add s5, s3, s4
    sw s5, -572(fp)
    lw s6, -428(fp)
    li t0, 1
    add t1, s6, t0
    sw t1, -576(fp)
    lw t2, -432(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -580(fp)
    lw t5, -456(fp)
    lw t6, -460(fp)
    add s2, t5, t6
    lw s3, -464(fp)
    add s4, s2, s3
    lw s5, -468(fp)
    add s6, s4, s5
    lw t0, -472(fp)
    add t1, s6, t0
    lw t2, -476(fp)
    add t3, t1, t2
    lw t4, -480(fp)
    add t5, t3, t4
    lw t6, -484(fp)
    add s2, t5, t6
    sw s2, -584(fp)
    lw s3, -488(fp)
    lw s4, -492(fp)
    add s5, s3, s4
    lw s6, -496(fp)
    add t0, s5, s6
    lw t1, -500(fp)
    add t2, t0, t1
    lw t3, -504(fp)
    add t4, t2, t3
    lw t5, -508(fp)
    add t6, t4, t5
    lw s2, -512(fp)
    add s3, t6, s2
    lw s4, -516(fp)
    add s5, s3, s4
    sw s5, -588(fp)
    lw s6, -520(fp)
    lw t0, -524(fp)
    add t1, s6, t0
    lw t2, -528(fp)
    add t3, t1, t2
    lw t4, -532(fp)
    add t5, t3, t4
    lw t6, -536(fp)
    add s2, t5, t6
    lw s3, -540(fp)
    add s4, s2, s3
    lw s5, -544(fp)
    add s6, s4, s5
    lw t0, -548(fp)
    add t1, s6, t0
    sw t1, -592(fp)
    lw t2, -552(fp)
    lw t3, -556(fp)
    add t4, t2, t3
    lw t5, -560(fp)
    add t6, t4, t5
    lw s2, -564(fp)
    add s3, t6, s2
    lw s4, -568(fp)
    add s5, s3, s4
    lw s6, -572(fp)
    add t0, s5, s6
    lw t1, -576(fp)
    add t2, t0, t1
    lw t3, -580(fp)
    add t4, t2, t3
    sw t4, -596(fp)
    lw t5, -584(fp)
    lw t6, -588(fp)
    add s2, t5, t6
    lw s3, -592(fp)
    add s4, s2, s3
    lw s5, -596(fp)
    add s6, s4, s5
    sw s6, -600(fp)
    lw t0, -156(fp)
    mv a0, t0
    lw t1, -304(fp)
    mv a1, t1
    lw t2, -452(fp)
    mv a2, t2
    lw t3, -600(fp)
    mv a3, t3
    lw t4, -140(fp)
    mv a4, t4
    lw t5, -288(fp)
    mv a5, t5
    lw t6, -436(fp)
    mv a6, t6
    lw s2, -584(fp)
    mv a7, s2
    jal ra, compute
    sw a0, -604(fp)
    lw s3, -604(fp)
    mv a0, s3
    lw ra, 604(sp)
    lw t0, 600(sp)
    addi sp, sp, 608
    mv fp, t0
    ret