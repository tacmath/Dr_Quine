#include <cstdio>

#define THETHING "#include <cstdio>%1$c%1$c#define THETHING %2$c%3$s%2$c%1$c#define DEFINE 42%1$c#define HELLO int main() {FILE *file;if (!(file = fopen(%2$cGrace_kid.cpp%2$c, %2$cw%2$c))) return -1;fprintf(file, THETHING, 10, 34, THETHING);fclose(file);return 0;}%1$c%1$cHELLO%1$c%1$c/*%1$c   apparement c'est pas un main%1$c*/"
#define DEFINE 42
#define HELLO int main() {FILE *file;if (!(file = fopen("Grace_kid.cpp", "w"))) return -1;fprintf(file, THETHING, 10, 34, THETHING);fclose(file);return 0;}

HELLO

/*
   apparement c'est pas un main
*/