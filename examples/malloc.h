
#ifndef __MALLOC_H__
#define __MALLOC_H__

#include <stdint.h>

#define MALLOC_BUF_SIZE 0x1000U
#define BEEF            0xBEEFBEEF
#define NULL            0x0U

struct allocator {
    uint32_t beef;
    uint32_t size;
};

void*   my_malloc(unsigned long long size);
int     my_free(void* obj);

#endif /* __MALLOC_H__ */
