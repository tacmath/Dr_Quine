#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    FILE    *file;
    int     nb = 5;
    char    file_name[10];
    char    command[85];
    char    *theArg = "#include <stdio.h>%1$c#include <string.h>%1$c#include <stdlib.h>%1$c#include <unistd.h>%1$c%1$cint main() {%1$c    FILE    *file;%1$c    int     nb = %5$d;%1$c    char    file_name[10];%1$c    char    command[85];%1$c    char    *theArg = %2$c%3$s%2$c;%1$c%1$c    if (nb <= 0)%1$c        return 0;%1$c    strcpy(file_name, %2$cSully_X.c%2$c);%1$c    file_name[6] = nb + 48;%1$c    if (!access(file_name, F_OK))%1$c        file_name[6] = --nb + 48;%1$c    if (!(file = fopen(file_name, %2$cw%2$c)))%1$c        return -1;%1$c    fprintf(file, theArg, 10, 34, theArg, 37, nb);%1$c    fclose(file);%1$c    sprintf(command, %2$cgcc -Wall -Wextra -Werror Sully_%4$c1$d.c -o Sully_%4$c1$d; ./Sully_%4$c1$d%2$c, nb);%1$c    system(command);%1$c    return 0;%1$c}";

    if (nb <= 0)
        return 0;
    strcpy(file_name, "Sully_X.c");
    file_name[6] = nb + 48;
    if (!access(file_name, F_OK))
        file_name[6] = --nb + 48;
    if (!(file = fopen(file_name, "w")))
        return -1;
    fprintf(file, theArg, 10, 34, theArg, 37, nb);
    fclose(file);
    sprintf(command, "gcc -Wall -Wextra -Werror Sully_%1$d.c -o Sully_%1$d; ./Sully_%1$d", nb);
    system(command);
    return 0;
}