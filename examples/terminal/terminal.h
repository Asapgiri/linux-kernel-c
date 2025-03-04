#ifndef __TERMINAL_H__
#define __TERMINAL_H__

#define NULL 0

#include "echo/echo.h"

struct command {
    char* name;
    int (*cmd)(int argc, char** argv);
    char* help;
};

#endif /* __TERMINAL_H__ */
