#include <stdio.h>

int main() {
    int a;

    printf("Hello World!\n");
    printf("Value of a:\n");
    printf("[0x%08X]: %d\n", &a, a);
    printf("Address of main: 0x%08X\n", &main);

    if (0) {
        printf("hello 0\n");
    }
    if (1) {
        printf("hello 1\n");
    }
    if (-1) {
        printf("hello -1\n");
    }

    return 0;
}
