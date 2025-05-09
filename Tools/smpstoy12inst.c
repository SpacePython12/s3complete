#include <stdio.h>
#include <stdlib.h>

#define USAGE "Usage: <input> <output> [<count>]\n\tinput: input .bin file with instruments.\n\toutput: directory to save files to\n\tcount: max instruments to convert (normally all)\n"

int main(int argc, char ** argv) {
    if (argc < 2 || argc > 3) {
        printf(USAGE);
        exit(1);
    }

    if (argc == 3) {
        
    }

    return 0;
}