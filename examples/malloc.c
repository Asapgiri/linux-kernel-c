#include "malloc.h"
#include <stdio.h>

static char malloc_area[MALLOC_BUF_SIZE] = { 0 };



void* my_malloc(unsigned long long size) {
    char* p = (char*)malloc_area;
    char* q;
    struct allocator* alloc = (struct allocator*)p;

    printf("malloc area: 0x%08X\n", malloc_area);

    while (p < malloc_area + MALLOC_BUF_SIZE) {
        // seek
        if (BEEF == alloc->beef) {
            p += sizeof(struct allocator) + alloc->size;
            alloc = (struct allocator*)p;
        }
        else {
            q = p;
            while (BEEF != ((struct allocator*)q)->beef
                && q - p < sizeof(struct allocator) + size
                && q < malloc_area + MALLOC_BUF_SIZE) {
                q++;
            }
            alloc = (struct allocator*)q;
            if (BEEF != alloc->beef) {
                alloc = (struct allocator*)p;
                break;
            }
            p = q;
        }
    }

    // check area size
    if (p + sizeof(struct allocator) + size < malloc_area + MALLOC_BUF_SIZE) {
        alloc->beef = BEEF;
        alloc->size = size;
        return p + sizeof(struct allocator);
    }

    return NULL;
}

int my_free(void* obj) {
    struct allocator* alloc;

    if (obj < malloc_area || obj > malloc_area + MALLOC_BUF_SIZE) {
        return -1;
    }

    alloc = obj - sizeof(struct allocator);
    if (BEEF != alloc->beef) {
        return -2;
    }

    alloc->beef = 0;

    return 0;
}
