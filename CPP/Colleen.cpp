/*
cpp
*/

#define TEST "/*%1$ccpp%1$c*/%1$c%1$c#define TEST %2$c%3$s%2$c%1$c#include <cstdio>%1$c%1$c%1$cvoid print () {%1$c     printf(TEST, 10, 34, TEST);%1$c}%1$c%1$cint main(){ %1$c    print();/*cpp*/%1$c}"
#include <cstdio>


void print () {
     printf(TEST, 10, 34, TEST);
}

int main(){ 
    print();/*cpp*/
}