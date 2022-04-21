#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <fstream>
#define THEARG "#include <cstdio>%1$c#include <cstdlib>%1$c#include <iostream>%1$c#include <fstream>%1$c#define THEARG %2$c%3$s%2$c%1$c%1$cint main() {%1$c    FILE    *file;%1$c    std::ifstream ifile;%1$c    int     nb = %5$d;%1$c    char    file_name[12];%1$c    char    command[85];%1$c%1$c    if (nb <= 0)%1$c        return 0;%1$c    sprintf(file_name, %2$cSully_%4$cd.cpp%2$c, nb);%1$c    ifile.open(file_name);%1$c    if (ifile)%1$c        file_name[6] = --nb + 48;%1$c    if (!(file = fopen(file_name, %2$cw%2$c)))%1$c        return -1;%1$c    fprintf(file, THEARG, 10, 34, THEARG, 37, nb);%1$c    fclose(file);%1$c    sprintf(command, %2$cc++ Sully_%4$c1$d.cpp -o Sully_%4$c1$d; ./Sully_%4$c1$d%2$c, nb);%1$c    system(command);%1$c    return 0;%1$c}"

int main() {
    FILE    *file;
    std::ifstream ifile;
    int     nb = 5;
    char    file_name[12];
    char    command[85];

    if (nb <= 0)
        return 0;
    sprintf(file_name, "Sully_%d.cpp", nb);
    ifile.open(file_name);
    if (ifile)
        file_name[6] = --nb + 48;
    if (!(file = fopen(file_name, "w")))
        return -1;
    fprintf(file, THEARG, 10, 34, THEARG, 37, nb);
    fclose(file);
    sprintf(command, "c++ Sully_%1$d.cpp -o Sully_%1$d; ./Sully_%1$d", nb);
    system(command);
    return 0;
}