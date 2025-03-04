
#include <stdio.h>
#include "terminal.h"

int help(int argc, char** argv);

const struct command commands[] = {
    { .name = "echo", .cmd = echo, .help = "Prints out the following words." },
    { .name = "help", .cmd = help, .help = "Prints out this help message." },
    { NULL },
};

int help(int argc, char** argv) {
    struct command* command = commands;

    while (NULL != command->cmd) {
        printf("  - % 9s: %s\n", command->name, command->help);
        command++;
    }

    return 0;
}

int main(int argc, char** argv) {
    if (argc < 2) {
        printf("  - Not enough arguments!\n");
        return -1;
    }

    struct command* command = commands;
    char* cmd_word = argv[1];

    while (NULL != command->cmd && 0 != strcmp(command->name, cmd_word)) {
        command++;
    }

    if (NULL == command->cmd) {
        printf("  - Command not found!\n");
        return -2;
    }

    return command->cmd(argc - 2, &argv[2]);
}

