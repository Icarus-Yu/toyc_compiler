// RISC-V bare-metal runtime
void _start() {
    extern int main();
    int result = main();
    
    // Exit with result as status code
    asm volatile (
        "li a7, 93\n"          // SYS_exit
        "mv a0, %0\n"          // result as exit code
        "ecall\n"              // system call
        :
        : "r" (result)
        : "a0", "a7"
    );
    
    // Should never reach here
    while(1);
}
