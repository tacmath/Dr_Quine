;Un commentaire

%define DECLARATION_MAIN global _main
%define DEFINE "define"

section .data
str:
    db ";Un commentaire%2$c%2$c%4$cdefine DECLARATION_MAIN global _main%2$c%4$cdefine DEFINE %3$cdefine%3$c%2$c%2$csection .data%2$cstr:%2$c    db %3$c%1$s%3$c, 0%2$c%2$cfileName:%2$c    db %3$cGrace_kid.s%3$c, 0%2$c%2$cmode:%2$c    db %3$cw%3$c, 0%2$c%2$csection .text%2$c    global start%2$c    DECLARATION_MAIN%2$c    extern _fprintf%2$c    extern _fopen%2$c    extern _fclose%2$c%2$c%4$cmacro CODE 0%2$c%2$cstart:%2$c    call _main%2$c    ret%2$c%2$c_main:%2$c    push rbp%2$c    mov rbp, rsp%2$c    sub rsp, 16%2$c    lea rdi, [rel fileName]%2$c    lea rsi, [rel mode]%2$c    call _fopen%2$c    mov r12, rax%2$c    cmp r12, 0%2$c    jz _quit%2$c    mov rdi, r12%2$c    lea rsi, [rel str]%2$c    lea rdx, [rel str]%2$c    mov rcx, 10%2$c    mov r8, 34%2$c    mov r9, 37%2$c    call _fprintf%2$c    mov rdi, r12%2$c    call _fclose%2$c    leave%2$c    ret%2$c%2$c_quit:%2$c    leave%2$c    ret%2$c%2$c%4$cendmacro%2$c%2$cCODE", 0

fileName:
    db "Grace_kid.s", 0

mode:
    db "w", 0

section .text
    global start
    DECLARATION_MAIN
    extern _fprintf
    extern _fopen
    extern _fclose

%macro CODE 0

start:
    call _main
    ret

_main:
    push rbp
    mov rbp, rsp
    sub rsp, 16
    lea rdi, [rel fileName]
    lea rsi, [rel mode]
    call _fopen
    mov r12, rax
    cmp r12, 0
    jz _quit
    mov rdi, r12
    lea rsi, [rel str]
    lea rdx, [rel str]
    mov rcx, 10
    mov r8, 34
    mov r9, 37
    call _fprintf
    mov rdi, r12
    call _fclose
    leave
    ret

_quit:
    leave
    ret

%endmacro

CODE