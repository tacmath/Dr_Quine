;c1

section .data
str:
    db ";c1%2$c%2$csection .data%2$cstr:%2$c    db %3$c%1$s%3$c, 0%2$c%2$csection .text%2$c    global start%2$c    global _main%2$c    extern _printf%2$c%2$cstart:%2$c    call _main%2$c    ret%2$c%2$c_main:%2$c    ;c2%2$c    push rbp%2$c    mov rbp, rsp%2$c    sub rsp, 16%2$c    lea rdi, [rel str]%2$c    lea rsi, [rel str]%2$c    mov rdx, 10%2$c    mov rcx, 34%2$c    call _printf%2$c    call _function%2$c    leave%2$c    ret%2$c%2$c_function:%2$c    ret", 0

section .text
    global start
    global _main
    extern _printf

start:
    call _main
    ret

_main:
    ;c2
    push rbp
    mov rbp, rsp
    sub rsp, 16
    lea rdi, [rel str]
    lea rsi, [rel str]
    mov rdx, 10
    mov rcx, 34
    call _printf
    call _function
    leave
    ret

_function:
    ret