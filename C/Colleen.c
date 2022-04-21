/*
c
*/

#include <stdio.h>

void print () {
    char*a="/*%cc%c*/%c%c#include <stdio.h>%c%cvoid print () {%c    char*a=%c%s%c;%c    printf(a, 10, 10, 10, 10, 10, 10, 10, 34, a, 34, 10, 10, 10, 10, 10, 10);%c}%c%cint main(){ %c    print();/*c*/%c}";
    printf(a, 10, 10, 10, 10, 10, 10, 10, 34, a, 34, 10, 10, 10, 10, 10, 10);
}

int main(){ 
    print();/*c*/
}