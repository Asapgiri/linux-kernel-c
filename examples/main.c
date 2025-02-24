#include <stdio.h>
#include "malloc.h"

int main() {
    char* mystr1 = my_malloc(10);
    printf("Slot of mystr1: [0x%08X]\n", mystr1);

    char* mystr2 = my_malloc(10);
    printf("Slot of mystr2: [0x%08X]\n", mystr2);

    int ret = my_free(mystr1);
    printf("Ret of free1: %d\n", ret);

    mystr1 = my_malloc(20);
    printf("Slot of mystr1: [0x%08X]\n", mystr1);

    ret = my_free(mystr2);
    printf("Ret of free2: %d\n", ret);

    mystr2 = my_malloc(15);
    printf("Slot of mystr2: [0x%08X]\n", mystr2);

    return 0;
}

