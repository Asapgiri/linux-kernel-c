cmake_minimum_required(VERSION 3.22)
set(CMAKE_C_COMPILER gcc)

project(hello C)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY
    ${CMAKE_BINARY_DIR}/bin)

include_directories(include)

add_executable(hello hello_world.c)

