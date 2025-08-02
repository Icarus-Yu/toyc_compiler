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
    beq t2, zero, else2
    lw t3, -12(fp)
    sub t4, zero, t3
    mv a0, t4
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
    j endif3
else2:
    lw t5, -12(fp)
    mv a0, t5
    lw ra, 12(sp)
    lw t0, 8(sp)
    addi sp, sp, 16
    mv fp, t0
    ret
endif3:
compute:
    # Function: compute
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
    lw t2, -32(fp)
    mul t3, t1, t2
    add t4, t0, t3
    mv t5, t4
    lw t6, -36(fp)
    lw s2, -40(fp)
    mv a0, s2
    jal ra, abs
    li s3, 1
    add s4, a0, s3
    lw t0, -36(fp)
    div t1, t0, s4
    sub t2, t5, t1
    mv t3, t2
    lw t4, -44(fp)
    lw t5, -48(fp)
    mv a0, t5
    jal ra, abs
    li t6, 1
    add s2, a0, t6
    lw s3, -44(fp)
    rem s4, s3, s2
    lw t0, -52(fp)
    mul t1, s4, t0
    add t2, t3, t1
    mv a0, t2
    lw s4, 52(sp)
    lw s3, 48(sp)
    lw s2, 44(sp)
    lw ra, 60(sp)
    lw t0, 56(sp)
    addi sp, sp, 64
    mv fp, t0
    ret
main:
    # Function: main
    # prologue
    addi sp, sp, -624
    sw ra, 620(sp)
    sw fp, 616(sp)
    addi fp, sp, 624
    sw s4, 612(sp)
    sw s3, 608(sp)
    sw s2, 604(sp)
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
    li t6, 17
    sw t6, -88(fp)
    li s2, 18
    sw s2, -92(fp)
    li s3, 19
    sw s3, -96(fp)
    li s4, 20
    sw s4, -100(fp)
    li t0, 21
    sw t0, -104(fp)
    li t1, 22
    sw t1, -108(fp)
    li t2, 23
    sw t2, -112(fp)
    li t3, 24
    sw t3, -116(fp)
    li t4, 25
    sw t4, -120(fp)
    li t5, 26
    sw t5, -124(fp)
    li t6, 27
    sw t6, -128(fp)
    li s2, 28
    sw s2, -132(fp)
    li s3, 29
    sw s3, -136(fp)
    li s4, 30
    sw s4, -140(fp)
    li t0, 31
    sw t0, -144(fp)
    li t1, 32
    sw t1, -148(fp)
    lw t2, -24(fp)
    lw t3, -28(fp)
    add t4, t2, t3
    lw t5, -32(fp)
    add t6, t4, t5
    lw s2, -36(fp)
    add s3, t6, s2
    lw s4, -40(fp)
    add t0, s3, s4
    lw t1, -44(fp)
    add t2, t0, t1
    lw t3, -48(fp)
    add t4, t2, t3
    lw t5, -52(fp)
    add t6, t4, t5
    sw t6, -152(fp)
    lw s2, -56(fp)
    lw s3, -60(fp)
    add s4, s2, s3
    lw t0, -64(fp)
    add t1, s4, t0
    lw t2, -68(fp)
    add t3, t1, t2
    lw t4, -72(fp)
    add t5, t3, t4
    lw t6, -76(fp)
    add s2, t5, t6
    lw s3, -80(fp)
    add s4, s2, s3
    lw t0, -84(fp)
    add t1, s4, t0
    sw t1, -156(fp)
    lw t2, -88(fp)
    lw t3, -92(fp)
    add t4, t2, t3
    lw t5, -96(fp)
    add t6, t4, t5
    lw s2, -100(fp)
    add s3, t6, s2
    lw s4, -104(fp)
    add t0, s3, s4
    lw t1, -108(fp)
    add t2, t0, t1
    lw t3, -112(fp)
    add t4, t2, t3
    lw t5, -116(fp)
    add t6, t4, t5
    sw t6, -160(fp)
    lw s2, -120(fp)
    lw s3, -124(fp)
    add s4, s2, s3
    lw t0, -128(fp)
    add t1, s4, t0
    lw t2, -132(fp)
    add t3, t1, t2
    lw t4, -136(fp)
    add t5, t3, t4
    lw t6, -140(fp)
    add s2, t5, t6
    lw s3, -144(fp)
    add s4, s2, s3
    lw t0, -148(fp)
    add t1, s4, t0
    sw t1, -164(fp)
    lw t2, -152(fp)
    lw t3, -156(fp)
    add t4, t2, t3
    lw t5, -160(fp)
    add t6, t4, t5
    lw s2, -164(fp)
    add s3, t6, s2
    sw s3, -168(fp)
    lw s4, -24(fp)
    li t0, 2
    mul t1, s4, t0
    sw t1, -172(fp)
    lw t2, -28(fp)
    li t3, 2
    mul t4, t2, t3
    sw t4, -176(fp)
    lw t5, -32(fp)
    li t6, 2
    mul s2, t5, t6
    sw s2, -180(fp)
    lw s3, -36(fp)
    li s4, 2
    mul t0, s3, s4
    sw t0, -184(fp)
    lw t1, -40(fp)
    li t2, 2
    mul t3, t1, t2
    sw t3, -188(fp)
    lw t4, -44(fp)
    li t5, 2
    mul t6, t4, t5
    sw t6, -192(fp)
    lw s2, -48(fp)
    li s3, 2
    mul s4, s2, s3
    sw s4, -196(fp)
    lw t0, -52(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -200(fp)
    lw t3, -56(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -204(fp)
    lw t6, -60(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -208(fp)
    lw s4, -64(fp)
    li t0, 2
    mul t1, s4, t0
    sw t1, -212(fp)
    lw t2, -68(fp)
    li t3, 2
    mul t4, t2, t3
    sw t4, -216(fp)
    lw t5, -72(fp)
    li t6, 2
    mul s2, t5, t6
    sw s2, -220(fp)
    lw s3, -76(fp)
    li s4, 2
    mul t0, s3, s4
    sw t0, -224(fp)
    lw t1, -80(fp)
    li t2, 2
    mul t3, t1, t2
    sw t3, -228(fp)
    lw t4, -84(fp)
    li t5, 2
    mul t6, t4, t5
    sw t6, -232(fp)
    lw s2, -88(fp)
    li s3, 2
    mul s4, s2, s3
    sw s4, -236(fp)
    lw t0, -92(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -240(fp)
    lw t3, -96(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -244(fp)
    lw t6, -100(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -248(fp)
    lw s4, -104(fp)
    li t0, 2
    mul t1, s4, t0
    sw t1, -252(fp)
    lw t2, -108(fp)
    li t3, 2
    mul t4, t2, t3
    sw t4, -256(fp)
    lw t5, -112(fp)
    li t6, 2
    mul s2, t5, t6
    sw s2, -260(fp)
    lw s3, -116(fp)
    li s4, 2
    mul t0, s3, s4
    sw t0, -264(fp)
    lw t1, -120(fp)
    li t2, 2
    mul t3, t1, t2
    sw t3, -268(fp)
    lw t4, -124(fp)
    li t5, 2
    mul t6, t4, t5
    sw t6, -272(fp)
    lw s2, -128(fp)
    li s3, 2
    mul s4, s2, s3
    sw s4, -276(fp)
    lw t0, -132(fp)
    li t1, 2
    mul t2, t0, t1
    sw t2, -280(fp)
    lw t3, -136(fp)
    li t4, 2
    mul t5, t3, t4
    sw t5, -284(fp)
    lw t6, -140(fp)
    li s2, 2
    mul s3, t6, s2
    sw s3, -288(fp)
    lw s4, -144(fp)
    li t0, 2
    mul t1, s4, t0
    sw t1, -292(fp)
    lw t2, -148(fp)
    li t3, 2
    mul t4, t2, t3
    sw t4, -296(fp)
    lw t5, -172(fp)
    lw t6, -176(fp)
    add s2, t5, t6
    lw s3, -180(fp)
    add s4, s2, s3
    lw t0, -184(fp)
    add t1, s4, t0
    lw t2, -188(fp)
    add t3, t1, t2
    lw t4, -192(fp)
    add t5, t3, t4
    lw t6, -196(fp)
    add s2, t5, t6
    lw s3, -200(fp)
    add s4, s2, s3
    sw s4, -300(fp)
    lw t0, -204(fp)
    lw t1, -208(fp)
    add t2, t0, t1
    lw t3, -212(fp)
    add t4, t2, t3
    lw t5, -216(fp)
    add t6, t4, t5
    lw s2, -220(fp)
    add s3, t6, s2
    lw s4, -224(fp)
    add t0, s3, s4
    lw t1, -228(fp)
    add t2, t0, t1
    lw t3, -232(fp)
    add t4, t2, t3
    sw t4, -304(fp)
    lw t5, -236(fp)
    lw t6, -240(fp)
    add s2, t5, t6
    lw s3, -244(fp)
    add s4, s2, s3
    lw t0, -248(fp)
    add t1, s4, t0
    lw t2, -252(fp)
    add t3, t1, t2
    lw t4, -256(fp)
    add t5, t3, t4
    lw t6, -260(fp)
    add s2, t5, t6
    lw s3, -264(fp)
    add s4, s2, s3
    sw s4, -308(fp)
    lw t0, -268(fp)
    lw t1, -272(fp)
    add t2, t0, t1
    lw t3, -276(fp)
    add t4, t2, t3
    lw t5, -280(fp)
    add t6, t4, t5
    lw s2, -284(fp)
    add s3, t6, s2
    lw s4, -288(fp)
    add t0, s3, s4
    lw t1, -292(fp)
    add t2, t0, t1
    lw t3, -296(fp)
    add t4, t2, t3
    sw t4, -312(fp)
    lw t5, -300(fp)
    lw t6, -304(fp)
    add s2, t5, t6
    lw s3, -308(fp)
    add s4, s2, s3
    lw t0, -312(fp)
    add t1, s4, t0
    sw t1, -316(fp)
    lw t2, -172(fp)
    lw t3, -24(fp)
    add t4, t2, t3
    sw t4, -320(fp)
    lw t5, -176(fp)
    lw t6, -28(fp)
    add s2, t5, t6
    sw s2, -324(fp)
    lw s3, -180(fp)
    lw s4, -32(fp)
    add t0, s3, s4
    sw t0, -328(fp)
    lw t1, -184(fp)
    lw t2, -36(fp)
    add t3, t1, t2
    sw t3, -332(fp)
    lw t4, -188(fp)
    lw t5, -40(fp)
    add t6, t4, t5
    sw t6, -336(fp)
    lw s2, -192(fp)
    lw s3, -44(fp)
    add s4, s2, s3
    sw s4, -340(fp)
    lw t0, -196(fp)
    lw t1, -48(fp)
    add t2, t0, t1
    sw t2, -344(fp)
    lw t3, -200(fp)
    lw t4, -52(fp)
    add t5, t3, t4
    sw t5, -348(fp)
    lw t6, -204(fp)
    lw s2, -56(fp)
    add s3, t6, s2
    sw s3, -352(fp)
    lw s4, -208(fp)
    lw t0, -60(fp)
    add t1, s4, t0
    sw t1, -356(fp)
    lw t2, -212(fp)
    lw t3, -64(fp)
    add t4, t2, t3
    sw t4, -360(fp)
    lw t5, -216(fp)
    lw t6, -68(fp)
    add s2, t5, t6
    sw s2, -364(fp)
    lw s3, -220(fp)
    lw s4, -72(fp)
    add t0, s3, s4
    sw t0, -368(fp)
    lw t1, -224(fp)
    lw t2, -76(fp)
    add t3, t1, t2
    sw t3, -372(fp)
    lw t4, -228(fp)
    lw t5, -80(fp)
    add t6, t4, t5
    sw t6, -376(fp)
    lw s2, -232(fp)
    lw s3, -84(fp)
    add s4, s2, s3
    sw s4, -380(fp)
    lw t0, -236(fp)
    lw t1, -88(fp)
    add t2, t0, t1
    sw t2, -384(fp)
    lw t3, -240(fp)
    lw t4, -92(fp)
    add t5, t3, t4
    sw t5, -388(fp)
    lw t6, -244(fp)
    lw s2, -96(fp)
    add s3, t6, s2
    sw s3, -392(fp)
    lw s4, -248(fp)
    lw t0, -100(fp)
    add t1, s4, t0
    sw t1, -396(fp)
    lw t2, -252(fp)
    lw t3, -104(fp)
    add t4, t2, t3
    sw t4, -400(fp)
    lw t5, -256(fp)
    lw t6, -108(fp)
    add s2, t5, t6
    sw s2, -404(fp)
    lw s3, -260(fp)
    lw s4, -112(fp)
    add t0, s3, s4
    sw t0, -408(fp)
    lw t1, -264(fp)
    lw t2, -116(fp)
    add t3, t1, t2
    sw t3, -412(fp)
    lw t4, -268(fp)
    lw t5, -120(fp)
    add t6, t4, t5
    sw t6, -416(fp)
    lw s2, -272(fp)
    lw s3, -124(fp)
    add s4, s2, s3
    sw s4, -420(fp)
    lw t0, -276(fp)
    lw t1, -128(fp)
    add t2, t0, t1
    sw t2, -424(fp)
    lw t3, -280(fp)
    lw t4, -132(fp)
    add t5, t3, t4
    sw t5, -428(fp)
    lw t6, -284(fp)
    lw s2, -136(fp)
    add s3, t6, s2
    sw s3, -432(fp)
    lw s4, -288(fp)
    lw t0, -140(fp)
    add t1, s4, t0
    sw t1, -436(fp)
    lw t2, -292(fp)
    lw t3, -144(fp)
    add t4, t2, t3
    sw t4, -440(fp)
    lw t5, -296(fp)
    lw t6, -148(fp)
    add s2, t5, t6
    sw s2, -444(fp)
    lw s3, -320(fp)
    lw s4, -324(fp)
    add t0, s3, s4
    lw t1, -328(fp)
    add t2, t0, t1
    lw t3, -332(fp)
    add t4, t2, t3
    lw t5, -336(fp)
    add t6, t4, t5
    lw s2, -340(fp)
    add s3, t6, s2
    lw s4, -344(fp)
    add t0, s3, s4
    lw t1, -348(fp)
    add t2, t0, t1
    sw t2, -448(fp)
    lw t3, -352(fp)
    lw t4, -356(fp)
    add t5, t3, t4
    lw t6, -360(fp)
    add s2, t5, t6
    lw s3, -364(fp)
    add s4, s2, s3
    lw t0, -368(fp)
    add t1, s4, t0
    lw t2, -372(fp)
    add t3, t1, t2
    lw t4, -376(fp)
    add t5, t3, t4
    lw t6, -380(fp)
    add s2, t5, t6
    sw s2, -452(fp)
    lw s3, -384(fp)
    lw s4, -388(fp)
    add t0, s3, s4
    lw t1, -392(fp)
    add t2, t0, t1
    lw t3, -396(fp)
    add t4, t2, t3
    lw t5, -400(fp)
    add t6, t4, t5
    lw s2, -404(fp)
    add s3, t6, s2
    lw s4, -408(fp)
    add t0, s3, s4
    lw t1, -412(fp)
    add t2, t0, t1
    sw t2, -456(fp)
    lw t3, -416(fp)
    lw t4, -420(fp)
    add t5, t3, t4
    lw t6, -424(fp)
    add s2, t5, t6
    lw s3, -428(fp)
    add s4, s2, s3
    lw t0, -432(fp)
    add t1, s4, t0
    lw t2, -436(fp)
    add t3, t1, t2
    lw t4, -440(fp)
    add t5, t3, t4
    lw t6, -444(fp)
    add s2, t5, t6
    sw s2, -460(fp)
    lw s3, -448(fp)
    lw s4, -452(fp)
    add t0, s3, s4
    lw t1, -456(fp)
    add t2, t0, t1
    lw t3, -460(fp)
    add t4, t2, t3
    sw t4, -464(fp)
    lw t5, -320(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -468(fp)
    lw s3, -324(fp)
    li s4, 1
    add t0, s3, s4
    sw t0, -472(fp)
    lw t1, -328(fp)
    li t2, 1
    add t3, t1, t2
    sw t3, -476(fp)
    lw t4, -332(fp)
    li t5, 1
    add t6, t4, t5
    sw t6, -480(fp)
    lw s2, -336(fp)
    li s3, 1
    add s4, s2, s3
    sw s4, -484(fp)
    lw t0, -340(fp)
    li t1, 1
    add t2, t0, t1
    sw t2, -488(fp)
    lw t3, -344(fp)
    li t4, 1
    add t5, t3, t4
    sw t5, -492(fp)
    lw t6, -348(fp)
    li s2, 1
    add s3, t6, s2
    sw s3, -496(fp)
    lw s4, -352(fp)
    li t0, 1
    add t1, s4, t0
    sw t1, -500(fp)
    lw t2, -356(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -504(fp)
    lw t5, -360(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -508(fp)
    lw s3, -364(fp)
    li s4, 1
    add t0, s3, s4
    sw t0, -512(fp)
    lw t1, -368(fp)
    li t2, 1
    add t3, t1, t2
    sw t3, -516(fp)
    lw t4, -372(fp)
    li t5, 1
    add t6, t4, t5
    sw t6, -520(fp)
    lw s2, -376(fp)
    li s3, 1
    add s4, s2, s3
    sw s4, -524(fp)
    lw t0, -380(fp)
    li t1, 1
    add t2, t0, t1
    sw t2, -528(fp)
    lw t3, -384(fp)
    li t4, 1
    add t5, t3, t4
    sw t5, -532(fp)
    lw t6, -388(fp)
    li s2, 1
    add s3, t6, s2
    sw s3, -536(fp)
    lw s4, -392(fp)
    li t0, 1
    add t1, s4, t0
    sw t1, -540(fp)
    lw t2, -396(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -544(fp)
    lw t5, -400(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -548(fp)
    lw s3, -404(fp)
    li s4, 1
    add t0, s3, s4
    sw t0, -552(fp)
    lw t1, -408(fp)
    li t2, 1
    add t3, t1, t2
    sw t3, -556(fp)
    lw t4, -412(fp)
    li t5, 1
    add t6, t4, t5
    sw t6, -560(fp)
    lw s2, -416(fp)
    li s3, 1
    add s4, s2, s3
    sw s4, -564(fp)
    lw t0, -420(fp)
    li t1, 1
    add t2, t0, t1
    sw t2, -568(fp)
    lw t3, -424(fp)
    li t4, 1
    add t5, t3, t4
    sw t5, -572(fp)
    lw t6, -428(fp)
    li s2, 1
    add s3, t6, s2
    sw s3, -576(fp)
    lw s4, -432(fp)
    li t0, 1
    add t1, s4, t0
    sw t1, -580(fp)
    lw t2, -436(fp)
    li t3, 1
    add t4, t2, t3
    sw t4, -584(fp)
    lw t5, -440(fp)
    li t6, 1
    add s2, t5, t6
    sw s2, -588(fp)
    lw s3, -444(fp)
    li s4, 1
    add t0, s3, s4
    sw t0, -592(fp)
    lw t1, -468(fp)
    lw t2, -472(fp)
    add t3, t1, t2
    lw t4, -476(fp)
    add t5, t3, t4
    lw t6, -480(fp)
    add s2, t5, t6
    lw s3, -484(fp)
    add s4, s2, s3
    lw t0, -488(fp)
    add t1, s4, t0
    lw t2, -492(fp)
    add t3, t1, t2
    lw t4, -496(fp)
    add t5, t3, t4
    sw t5, -596(fp)
    lw t6, -500(fp)
    lw s2, -504(fp)
    add s3, t6, s2
    lw s4, -508(fp)
    add t0, s3, s4
    lw t1, -512(fp)
    add t2, t0, t1
    lw t3, -516(fp)
    add t4, t2, t3
    lw t5, -520(fp)
    add t6, t4, t5
    lw s2, -524(fp)
    add s3, t6, s2
    lw s4, -528(fp)
    add t0, s3, s4
    sw t0, -600(fp)
    lw t1, -532(fp)
    lw t2, -536(fp)
    add t3, t1, t2
    lw t4, -540(fp)
    add t5, t3, t4
    lw t6, -544(fp)
    add s2, t5, t6
    lw s3, -548(fp)
    add s4, s2, s3
    lw t0, -552(fp)
    add t1, s4, t0
    lw t2, -556(fp)
    add t3, t1, t2
    lw t4, -560(fp)
    add t5, t3, t4
    sw t5, -604(fp)
    lw t6, -564(fp)
    lw s2, -568(fp)
    add s3, t6, s2
    lw s4, -572(fp)
    add t0, s3, s4
    lw t1, -576(fp)
    add t2, t0, t1
    lw t3, -580(fp)
    add t4, t2, t3
    lw t5, -584(fp)
    add t6, t4, t5
    lw s2, -588(fp)
    add s3, t6, s2
    lw s4, -592(fp)
    add t0, s3, s4
    sw t0, -608(fp)
    lw t1, -596(fp)
    lw t2, -600(fp)
    add t3, t1, t2
    lw t4, -604(fp)
    add t5, t3, t4
    lw t6, -608(fp)
    add s2, t5, t6
    sw s2, -612(fp)
    lw s3, -168(fp)
    mv a0, s3
    lw s4, -316(fp)
    mv a1, s4
    lw t0, -464(fp)
    mv a2, t0
    lw t1, -612(fp)
    mv a3, t1
    lw t2, -152(fp)
    mv a4, t2
    lw t3, -300(fp)
    mv a5, t3
    lw t4, -448(fp)
    mv a6, t4
    lw t5, -596(fp)
    mv a7, t5
    jal ra, compute
    sw a0, -616(fp)
    lw t6, -616(fp)
    mv a0, t6
    lw s4, 612(sp)
    lw s3, 608(sp)
    lw s2, 604(sp)
    lw ra, 620(sp)
    lw t0, 616(sp)
    addi sp, sp, 624
    mv fp, t0
    ret