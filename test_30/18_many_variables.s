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
    li t0, 1
    add t1, a0, t0
    lw t2, -24(fp)
    div t3, t2, t1
    sub t4, t4, t3
    lw t5, -32(fp)
    lw t6, -36(fp)
    mv a0, t6
    jal ra, abs
    li t0, 1
    add t1, a0, t0
    lw t2, -32(fp)
    rem t3, t2, t1
    lw t4, -40(fp)
    mul t5, t3, t4
    add t6, t4, t5
    mv a0, t6
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
    li t2, 17
    sw t2, -76(fp)
    li t3, 18
    sw t3, -80(fp)
    li t4, 19
    sw t4, -84(fp)
    li t5, 20
    sw t5, -88(fp)
    li t6, 21
    sw t6, -92(fp)
    li t0, 22
    sw t0, -96(fp)
    li t1, 23
    sw t1, -100(fp)
    li t2, 24
    sw t2, -104(fp)
    li t3, 25
    sw t3, -108(fp)
    li t4, 26
    sw t4, -112(fp)
    li t5, 27
    sw t5, -116(fp)
    li t6, 28
    sw t6, -120(fp)
    li t0, 29
    sw t0, -124(fp)
    li t1, 30
    sw t1, -128(fp)
    li t2, 31
    sw t2, -132(fp)
    li t3, 32
    sw t3, -136(fp)
    lw t4, -12(fp)
    lw t5, -16(fp)
    add t6, t4, t5
    lw t0, -20(fp)
    add t1, t6, t0
    lw t2, -24(fp)
    add t3, t1, t2
    lw t4, -28(fp)
    add t5, t3, t4
    lw t6, -32(fp)
    add t0, t5, t6
    lw t1, -36(fp)
    add t2, t0, t1
    lw t3, -40(fp)
    add t4, t2, t3
    sw t4, -140(fp)
    lw t5, -44(fp)
    lw t6, -48(fp)
    add t0, t5, t6
    lw t1, -52(fp)
    add t2, t0, t1
    lw t3, -56(fp)
    add t4, t2, t3
    lw t5, -60(fp)
    add t6, t4, t5
    lw t0, -64(fp)
    add t1, t6, t0
    lw t2, -68(fp)
    add t3, t1, t2
    lw t4, -72(fp)
    add t5, t3, t4
    sw t5, -144(fp)
    lw t6, -76(fp)
    lw t0, -80(fp)
    add t1, t6, t0
    lw t2, -84(fp)
    add t3, t1, t2
    lw t4, -88(fp)
    add t5, t3, t4
    lw t6, -92(fp)
    add t0, t5, t6
    lw t1, -96(fp)
    add t2, t0, t1
    lw t3, -100(fp)
    add t4, t2, t3
    lw t5, -104(fp)
    add t6, t4, t5
    sw t6, -148(fp)
    lw t0, -108(fp)
    lw t1, -112(fp)
    add t2, t0, t1
    lw t3, -116(fp)
    add t4, t2, t3
    lw t5, -120(fp)
    add t6, t4, t5
    lw t0, -124(fp)
    add t1, t6, t0
    lw t2, -128(fp)
    add t3, t1, t2
    lw t4, -132(fp)
    add t5, t3, t4
    lw t6, -136(fp)
    add t0, t5, t6
    sw t0, -152(fp)
    lw t1, -140(fp)
    lw t2, -144(fp)
    add t3, t1, t2
    lw t4, -148(fp)
    add t5, t3, t4
    lw t6, -152(fp)
    add t0, t5, t6
    sw t0, -156(fp)
    lw t1, -12(fp)
    li t2, 2
    mul t3, t1, t2
    sw t3, -160(fp)
    lw t4, -16(fp)
    li t5, 2
    mul t6, t4, t5
    sw t6, -164(fp)
    lw t0, -20(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -168(fp)
    lw t3, -24(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -172(fp)
    lw t6, -28(fp)
    li t0, 2
    mul t1, t6, t0
    sw t1, -176(fp)
    lw t2, -32(fp)
    li t3, 2
    mul t4, t2, t3
    sw t4, -180(fp)
    lw t5, -36(fp)
    li t6, 2
    mul t0, t5, t6
    sw t0, -184(fp)
    lw t1, -40(fp)
    li t2, 2
    mul t3, t1, t2
    sw t3, -188(fp)
    lw t4, -44(fp)
    li t5, 2
    mul t6, t4, t5
    sw t6, -192(fp)
    lw t0, -48(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -196(fp)
    lw t3, -52(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -200(fp)
    lw t6, -56(fp)
    li t0, 2
    mul t1, t6, t0
    sw t1, -204(fp)
    lw t2, -60(fp)
    li t3, 2
    mul t4, t2, t3
    sw t4, -208(fp)
    lw t5, -64(fp)
    li t6, 2
    mul t0, t5, t6
    sw t0, -212(fp)
    lw t1, -68(fp)
    li t2, 2
    mul t3, t1, t2
    sw t3, -216(fp)
    lw t4, -72(fp)
    li t5, 2
    mul t6, t4, t5
    sw t6, -220(fp)
    lw t0, -76(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -224(fp)
    lw t3, -80(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -228(fp)
    lw t6, -84(fp)
    li t0, 2
    mul t1, t6, t0
    sw t1, -232(fp)
    lw t2, -88(fp)
    li t3, 2
    mul t4, t2, t3
    sw t4, -236(fp)
    lw t5, -92(fp)
    li t6, 2
    mul t0, t5, t6
    sw t0, -240(fp)
    lw t1, -96(fp)
    li t2, 2
    mul t3, t1, t2
    sw t3, -244(fp)
    lw t4, -100(fp)
    li t5, 2
    mul t6, t4, t5
    sw t6, -248(fp)
    lw t0, -104(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -252(fp)
    lw t3, -108(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -256(fp)
    lw t6, -112(fp)
    li t0, 2
    mul t1, t6, t0
    sw t1, -260(fp)
    lw t2, -116(fp)
    li t3, 2
    mul t4, t2, t3
    sw t4, -264(fp)
    lw t5, -120(fp)
    li t6, 2
    mul t0, t5, t6
    sw t0, -268(fp)
    lw t1, -124(fp)
    li t2, 2
    mul t3, t1, t2
    sw t3, -272(fp)
    lw t4, -128(fp)
    li t5, 2
    mul t6, t4, t5
    sw t6, -276(fp)
    lw t0, -132(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -280(fp)
    lw t3, -136(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -284(fp)
    lw t6, -160(fp)
    lw t0, -164(fp)
    add t1, t6, t0
    lw t2, -168(fp)
    add t3, t1, t2
    lw t4, -172(fp)
    add t5, t3, t4
    lw t6, -176(fp)
    add t0, t5, t6
    lw t1, -180(fp)
    add t2, t0, t1
    lw t3, -184(fp)
    add t4, t2, t3
    lw t5, -188(fp)
    add t6, t4, t5
    sw t6, -288(fp)
    lw t0, -192(fp)
    lw t1, -196(fp)
    add t2, t0, t1
    lw t3, -200(fp)
    add t4, t2, t3
    lw t5, -204(fp)
    add t6, t4, t5
    lw t0, -208(fp)
    add t1, t6, t0
    lw t2, -212(fp)
    add t3, t1, t2
    lw t4, -216(fp)
    add t5, t3, t4
    lw t6, -220(fp)
    add t0, t5, t6
    sw t0, -292(fp)
    lw t1, -224(fp)
    lw t2, -228(fp)
    add t3, t1, t2
    lw t4, -232(fp)
    add t5, t3, t4
    lw t6, -236(fp)
    add t0, t5, t6
    lw t1, -240(fp)
    add t2, t0, t1
    lw t3, -244(fp)
    add t4, t2, t3
    lw t5, -248(fp)
    add t6, t4, t5
    lw t0, -252(fp)
    add t1, t6, t0
    sw t1, -296(fp)
    lw t2, -256(fp)
    lw t3, -260(fp)
    add t4, t2, t3
    lw t5, -264(fp)
    add t6, t4, t5
    lw t0, -268(fp)
    add t1, t6, t0
    lw t2, -272(fp)
    add t3, t1, t2
    lw t4, -276(fp)
    add t5, t3, t4
    lw t6, -280(fp)
    add t0, t5, t6
    lw t1, -284(fp)
    add t2, t0, t1
    sw t2, -300(fp)
    lw t3, -288(fp)
    lw t4, -292(fp)
    add t5, t3, t4
    lw t6, -296(fp)
    add t0, t5, t6
    lw t1, -300(fp)
    add t2, t0, t1
    sw t2, -304(fp)
    lw t3, -160(fp)
    lw t4, -12(fp)
    add t5, t3, t4
    sw t5, -308(fp)
    lw t6, -164(fp)
    lw t0, -16(fp)
    add t1, t6, t0
    sw t1, -312(fp)
    lw t2, -168(fp)
    lw t3, -20(fp)
    add t4, t2, t3
    sw t4, -316(fp)
    lw t5, -172(fp)
    lw t6, -24(fp)
    add t0, t5, t6
    sw t0, -320(fp)
    lw t1, -176(fp)
    lw t2, -28(fp)
    add t3, t1, t2
    sw t3, -324(fp)
    lw t4, -180(fp)
    lw t5, -32(fp)
    add t6, t4, t5
    sw t6, -328(fp)
    lw t0, -184(fp)
    lw t1, -36(fp)
    add t2, t0, t1
    sw t2, -332(fp)
    lw t3, -188(fp)
    lw t4, -40(fp)
    add t5, t3, t4
    sw t5, -336(fp)
    lw t6, -192(fp)
    lw t0, -44(fp)
    add t1, t6, t0
    sw t1, -340(fp)
    lw t2, -196(fp)
    lw t3, -48(fp)
    add t4, t2, t3
    sw t4, -344(fp)
    lw t5, -200(fp)
    lw t6, -52(fp)
    add t0, t5, t6
    sw t0, -348(fp)
    lw t1, -204(fp)
    lw t2, -56(fp)
    add t3, t1, t2
    sw t3, -352(fp)
    lw t4, -208(fp)
    lw t5, -60(fp)
    add t6, t4, t5
    sw t6, -356(fp)
    lw t0, -212(fp)
    lw t1, -64(fp)
    add t2, t0, t1
    sw t2, -360(fp)
    lw t3, -216(fp)
    lw t4, -68(fp)
    add t5, t3, t4
    sw t5, -364(fp)
    lw t6, -220(fp)
    lw t0, -72(fp)
    add t1, t6, t0
    sw t1, -368(fp)
    lw t2, -224(fp)
    lw t3, -76(fp)
    add t4, t2, t3
    sw t4, -372(fp)
    lw t5, -228(fp)
    lw t6, -80(fp)
    add t0, t5, t6
    sw t0, -376(fp)
    lw t1, -232(fp)
    lw t2, -84(fp)
    add t3, t1, t2
    sw t3, -380(fp)
    lw t4, -236(fp)
    lw t5, -88(fp)
    add t6, t4, t5
    sw t6, -384(fp)
    lw t0, -240(fp)
    lw t1, -92(fp)
    add t2, t0, t1
    sw t2, -388(fp)
    lw t3, -244(fp)
    lw t4, -96(fp)
    add t5, t3, t4
    sw t5, -392(fp)
    lw t6, -248(fp)
    lw t0, -100(fp)
    add t1, t6, t0
    sw t1, -396(fp)
    lw t2, -252(fp)
    lw t3, -104(fp)
    add t4, t2, t3
    sw t4, -400(fp)
    lw t5, -256(fp)
    lw t6, -108(fp)
    add t0, t5, t6
    sw t0, -404(fp)
    lw t1, -260(fp)
    lw t2, -112(fp)
    add t3, t1, t2
    sw t3, -408(fp)
    lw t4, -264(fp)
    lw t5, -116(fp)
    add t6, t4, t5
    sw t6, -412(fp)
    lw t0, -268(fp)
    lw t1, -120(fp)
    add t2, t0, t1
    sw t2, -416(fp)
    lw t3, -272(fp)
    lw t4, -124(fp)
    add t5, t3, t4
    sw t5, -420(fp)
    lw t6, -276(fp)
    lw t0, -128(fp)
    add t1, t6, t0
    sw t1, -424(fp)
    lw t2, -280(fp)
    lw t3, -132(fp)
    add t4, t2, t3
    sw t4, -428(fp)
    lw t5, -284(fp)
    lw t6, -136(fp)
    add t0, t5, t6
    sw t0, -432(fp)
    lw t1, -308(fp)
    lw t2, -312(fp)
    add t3, t1, t2
    lw t4, -316(fp)
    add t5, t3, t4
    lw t6, -320(fp)
    add t0, t5, t6
    lw t1, -324(fp)
    add t2, t0, t1
    lw t3, -328(fp)
    add t4, t2, t3
    lw t5, -332(fp)
    add t6, t4, t5
    lw t0, -336(fp)
    add t1, t6, t0
    sw t1, -436(fp)
    lw t2, -340(fp)
    lw t3, -344(fp)
    add t4, t2, t3
    lw t5, -348(fp)
    add t6, t4, t5
    lw t0, -352(fp)
    add t1, t6, t0
    lw t2, -356(fp)
    add t3, t1, t2
    lw t4, -360(fp)
    add t5, t3, t4
    lw t6, -364(fp)
    add t0, t5, t6
    lw t1, -368(fp)
    add t2, t0, t1
    sw t2, -440(fp)
    lw t3, -372(fp)
    lw t4, -376(fp)
    add t5, t3, t4
    lw t6, -380(fp)
    add t0, t5, t6
    lw t1, -384(fp)
    add t2, t0, t1
    lw t3, -388(fp)
    add t4, t2, t3
    lw t5, -392(fp)
    add t6, t4, t5
    lw t0, -396(fp)
    add t1, t6, t0
    lw t2, -400(fp)
    add t3, t1, t2
    sw t3, -444(fp)
    lw t4, -404(fp)
    lw t5, -408(fp)
    add t6, t4, t5
    lw t0, -412(fp)
    add t1, t6, t0
    lw t2, -416(fp)
    add t3, t1, t2
    lw t4, -420(fp)
    add t5, t3, t4
    lw t6, -424(fp)
    add t0, t5, t6
    lw t1, -428(fp)
    add t2, t0, t1
    lw t3, -432(fp)
    add t4, t2, t3
    sw t4, -448(fp)
    lw t5, -436(fp)
    lw t6, -440(fp)
    add t0, t5, t6
    lw t1, -444(fp)
    add t2, t0, t1
    lw t3, -448(fp)
    add t4, t2, t3
    sw t4, -452(fp)
    lw t5, -308(fp)
    li t6, 1
    add t0, t5, t6
    sw t0, -456(fp)
    lw t1, -312(fp)
    li t2, 1
    add t3, t1, t2
    sw t3, -460(fp)
    lw t4, -316(fp)
    li t5, 1
    add t6, t4, t5
    sw t6, -464(fp)
    lw t0, -320(fp)
    li t1, 1
    add t2, t0, t1
    sw t2, -468(fp)
    lw t3, -324(fp)
    li t4, 1
    add t5, t3, t4
    sw t5, -472(fp)
    lw t6, -328(fp)
    li t0, 1
    add t1, t6, t0
    sw t1, -476(fp)
    lw t2, -332(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -480(fp)
    lw t5, -336(fp)
    li t6, 1
    add t0, t5, t6
    sw t0, -484(fp)
    lw t1, -340(fp)
    li t2, 1
    add t3, t1, t2
    sw t3, -488(fp)
    lw t4, -344(fp)
    li t5, 1
    add t6, t4, t5
    sw t6, -492(fp)
    lw t0, -348(fp)
    li t1, 1
    add t2, t0, t1
    sw t2, -496(fp)
    lw t3, -352(fp)
    li t4, 1
    add t5, t3, t4
    sw t5, -500(fp)
    lw t6, -356(fp)
    li t0, 1
    add t1, t6, t0
    sw t1, -504(fp)
    lw t2, -360(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -508(fp)
    lw t5, -364(fp)
    li t6, 1
    add t0, t5, t6
    sw t0, -512(fp)
    lw t1, -368(fp)
    li t2, 1
    add t3, t1, t2
    sw t3, -516(fp)
    lw t4, -372(fp)
    li t5, 1
    add t6, t4, t5
    sw t6, -520(fp)
    lw t0, -376(fp)
    li t1, 1
    add t2, t0, t1
    sw t2, -524(fp)
    lw t3, -380(fp)
    li t4, 1
    add t5, t3, t4
    sw t5, -528(fp)
    lw t6, -384(fp)
    li t0, 1
    add t1, t6, t0
    sw t1, -532(fp)
    lw t2, -388(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -536(fp)
    lw t5, -392(fp)
    li t6, 1
    add t0, t5, t6
    sw t0, -540(fp)
    lw t1, -396(fp)
    li t2, 1
    add t3, t1, t2
    sw t3, -544(fp)
    lw t4, -400(fp)
    li t5, 1
    add t6, t4, t5
    sw t6, -548(fp)
    lw t0, -404(fp)
    li t1, 1
    add t2, t0, t1
    sw t2, -552(fp)
    lw t3, -408(fp)
    li t4, 1
    add t5, t3, t4
    sw t5, -556(fp)
    lw t6, -412(fp)
    li t0, 1
    add t1, t6, t0
    sw t1, -560(fp)
    lw t2, -416(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -564(fp)
    lw t5, -420(fp)
    li t6, 1
    add t0, t5, t6
    sw t0, -568(fp)
    lw t1, -424(fp)
    li t2, 1
    add t3, t1, t2
    sw t3, -572(fp)
    lw t4, -428(fp)
    li t5, 1
    add t6, t4, t5
    sw t6, -576(fp)
    lw t0, -432(fp)
    li t1, 1
    add t2, t0, t1
    sw t2, -580(fp)
    lw t3, -456(fp)
    lw t4, -460(fp)
    add t5, t3, t4
    lw t6, -464(fp)
    add t0, t5, t6
    lw t1, -468(fp)
    add t2, t0, t1
    lw t3, -472(fp)
    add t4, t2, t3
    lw t5, -476(fp)
    add t6, t4, t5
    lw t0, -480(fp)
    add t1, t6, t0
    lw t2, -484(fp)
    add t3, t1, t2
    sw t3, -584(fp)
    lw t4, -488(fp)
    lw t5, -492(fp)
    add t6, t4, t5
    lw t0, -496(fp)
    add t1, t6, t0
    lw t2, -500(fp)
    add t3, t1, t2
    lw t4, -504(fp)
    add t5, t3, t4
    lw t6, -508(fp)
    add t0, t5, t6
    lw t1, -512(fp)
    add t2, t0, t1
    lw t3, -516(fp)
    add t4, t2, t3
    sw t4, -588(fp)
    lw t5, -520(fp)
    lw t6, -524(fp)
    add t0, t5, t6
    lw t1, -528(fp)
    add t2, t0, t1
    lw t3, -532(fp)
    add t4, t2, t3
    lw t5, -536(fp)
    add t6, t4, t5
    lw t0, -540(fp)
    add t1, t6, t0
    lw t2, -544(fp)
    add t3, t1, t2
    lw t4, -548(fp)
    add t5, t3, t4
    sw t5, -592(fp)
    lw t6, -552(fp)
    lw t0, -556(fp)
    add t1, t6, t0
    lw t2, -560(fp)
    add t3, t1, t2
    lw t4, -564(fp)
    add t5, t3, t4
    lw t6, -568(fp)
    add t0, t5, t6
    lw t1, -572(fp)
    add t2, t0, t1
    lw t3, -576(fp)
    add t4, t2, t3
    lw t5, -580(fp)
    add t6, t4, t5
    sw t6, -596(fp)
    lw t0, -584(fp)
    lw t1, -588(fp)
    add t2, t0, t1
    lw t3, -592(fp)
    add t4, t2, t3
    lw t5, -596(fp)
    add t6, t4, t5
    sw t6, -600(fp)
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
    lw t0, -584(fp)
    mv a7, t0
    jal ra, compute
    sw a0, -604(fp)
    lw t1, -604(fp)
    mv a0, t1
    lw ra, 604(sp)
    lw t0, 600(sp)
    addi sp, sp, 608
    mv fp, t0
    ret