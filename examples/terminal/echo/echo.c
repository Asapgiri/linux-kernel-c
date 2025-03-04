#include "echo.h"

int echo(int argc, char** argv) {
    int i;

    for (i = 0; i < argc; i++) {
        printf("%s ", argv[i]);
    }
    printf("\n");

    return 0;
}
