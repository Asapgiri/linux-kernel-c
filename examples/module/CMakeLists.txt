cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

if(DEFINED BUILD_MODULE AND NOT BUILD_MODULE)
    return()
endif()

if(DEFINED MODULE_NAME)
    set(MODULE_BIN_NAME ${MODULE_NAME}.ko)
else()
    set(MODULE_BIN_NAME module_hello.ko)
endif()

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Find kernel headers
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")
find_package(KernelHeaders REQUIRED)

if (${KERNELHEADERS_FOUND} STREQUAL "0")
    message(FATAL_ERROR "Kernel headers not found! ${KERNELHEADERS_FOUND}")
endif()

message("Found kernel headers: ${KERNELHEADERS_INCLUDE_DIRS}")


# find MODULE_LICENSE("GPL"), MODULE_AUTHOR() etc.
# thanks to "merseyviking" from stack overflow
add_definitions(
    -D__KERNEL__
    -DMODULE
    -isystem ${ISYSTEM_DIR}/build/include
)


project(${MODULE_BIN_NAME} C)

include_directories(${MODULE_BIN_NAME}
    ${CMAKE_CURRENT_LIST_DIR}
    ${KERNELHEADERS_INCLUDE_DIRS}
)

add_executable(${MODULE_BIN_NAME}
                ${CMAKE_CURRENT_LIST_DIR}/module_hello.c
)

