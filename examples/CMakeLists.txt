cmake_minimum_required(VERSION 3.22)
set(CMAKE_C_COMPILER gcc)

project(malloc-example.bin C)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY
    ${CMAKE_BINARY_DIR}/bin)

add_executable(malloc-example.bin
    main.c
    malloc.c)

add_subdirectory(terminal)
add_subdirectory(module)
