# BIG THANK YOU TO THE ORIGINAL AUTHOR
# https://gitlab.com/christophacham/cmake-kernel-module

# Find the kernel release
execute_process(
        COMMAND uname -r
        OUTPUT_VARIABLE KERNEL_RELEASE
        OUTPUT_STRIP_TRAILING_WHITESPACE
)

file(GLOB KERNELHEADERS_DIR_PRE /usr/src/ /usr/src/*)
file(GLOB ISYSTEM_DIR /lib/modules/ /lib/modules/*)

# Find the headers
find_path(KERNELHEADERS_DIR
        include/linux/user.h
        PATHS ${KERNELHEADERS_DIR_PRE}
        )

message(STATUS "Kernel release: ${KERNEL_RELEASE}")
message(STATUS "Kernel headers: ${KERNELHEADERS_DIR}")
message(STATUS "Isystem: ${ISYSTEM_DIR}")

if (KERNELHEADERS_DIR)
    set(KERNELHEADERS_INCLUDE_DIRS
            ${KERNELHEADERS_DIR}/include
            ${KERNELHEADERS_DIR}/arch/x86/include
            CACHE PATH "Kernel headers include dirs"
            )
    set(KERNELHEADERS_FOUND 1 CACHE STRING "Set to 1 if kernel headers were found")
else()
    message("headers not found!")
    set(KERNELHEADERS_FOUND 0 CACHE STRING "Set to 1 if kernel headers were found")
endif()

mark_as_advanced(KERNELHEADERS_FOUND)
