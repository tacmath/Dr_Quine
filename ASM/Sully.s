%define F_OK 0

section .data
str:
    db "%4$cdefine F_OK 0%2$c%2$csection .data%2$cstr:%2$c    db %3$c%1$s%3$c, 0%2$c%2$cfileFormat:%2$c    db %3$cSully_%4$cd.s%3$c, 0%2$c%2$ccommandFormat:%2$c    db %3$cnasm -f macho64 Sully_%4$c1$d.s -o Sully_%4$c1$d.o; gcc Sully_%4$c1$d.o -o Sully_%4$c1$d; ./Sully_%4$c1$d; rm Sully_%4$c1$d.o%3$c, 0%2$c%2$cmode:%2$c    db %3$cw%3$c, 0%2$c%2$csection .text%2$c    global start%2$c    global _main%2$c    extern _fprintf%2$c    extern _fopen%2$c    extern _fclose%2$c    extern _sprintf%2$c    extern _system%2$c    extern _access%2$c%2$cstart:%2$c    call _main%2$c    ret%2$c%2$c_main:%2$c    push rbp%2$c    mov rbp, rsp%2$c    sub rsp, 128%2$c    mov r12, %5$d%2$c    cmp r12, 1%2$c    jl _quit%2$c    mov rdi, rsp%2$c    lea rsi, [rel fileFormat]%2$c    mov rdx, r12%2$c    call _sprintf%2$c    mov rdi, rsp%2$c    mov rsi, F_OK%2$c    call _access%2$c    cmp rax, 0%2$c    jne  openfile%2$c    dec r12%2$c    mov rdi, rsp%2$c    lea rsi, [rel fileFormat]%2$c    mov rdx, r12%2$c    call _sprintf%2$c    openfile:%2$c    mov rdi, rsp%2$c    lea rsi, [rel mode]%2$c    call _fopen%2$c    cmp rax, 0%2$c    jz _quit%2$c    mov r13, rax%2$c    mov rdi, r13%2$c    lea rsi, [rel str]%2$c    lea rdx, [rel str] %2$c    mov rcx, 10%2$c    mov r8, 34%2$c    mov r9, 37%2$c    mov [rsp], r12%2$c    call _fprintf%2$c    mov rdi, r13%2$c    call _fclose%2$c    mov rdi, rsp%2$c    lea rsi, [rel commandFormat]%2$c    mov rdx, r12%2$c    call _sprintf%2$c    mov rdi, rsp%2$c    call _system%2$c    leave%2$c    ret%2$c%2$c_quit:%2$c    leave%2$c    ret", 0

fileFormat:
    db "Sully_%d.s", 0

commandFormat:
    db "nasm -f macho64 Sully_%1$d.s -o Sully_%1$d.o; gcc Sully_%1$d.o -o Sully_%1$d; ./Sully_%1$d; rm Sully_%1$d.o", 0

mode:
    db "w", 0

section .text
    global start
    global _main
    extern _fprintf
    extern _fopen
    extern _fclose
    extern _sprintf
    extern _system
    extern _access

start:
    call _main
    ret

_main:
    push rbp
    mov rbp, rsp
    sub rsp, 128
    mov r12, 5
    cmp r12, 1
    jl _quit
    mov rdi, rsp
    lea rsi, [rel fileFormat]
    mov rdx, r12
    call _sprintf
    mov rdi, rsp
    mov rsi, F_OK
    call _access
    cmp rax, 0
    jne  openfile
    dec r12
    mov rdi, rsp
    lea rsi, [rel fileFormat]
    mov rdx, r12
    call _sprintf
    openfile:
    mov rdi, rsp
    lea rsi, [rel mode]
    call _fopen
    cmp rax, 0
    jz _quit
    mov r13, rax
    mov rdi, r13
    lea rsi, [rel str]
    lea rdx, [rel str] 
    mov rcx, 10
    mov r8, 34
    mov r9, 37
    mov [rsp], r12
    call _fprintf
    mov rdi, r13
    call _fclose
    mov rdi, rsp
    lea rsi, [rel commandFormat]
    mov rdx, r12
    call _sprintf
    mov rdi, rsp
    call _system
    leave
    ret

_quit:
    leave
    ret