
if(DEFINED BUILD_TERMINAL AND NOT BUILD_TERMINAL)
    return()
endif()

if(DEFINED TERMINAL_NAME)
    set(TERMINAL_BIN_NAME ${TERMINAL_NAME})
else()
    set(TERMINAL_BIN_NAME terminal)
endif()

project(${TERMINAL_BIN_NAME} C)

include_directories(${TERMINAL_BIN_NAME} ${CMAKE_CURRENT_LIST_DIR})

add_executable(${TERMINAL_BIN_NAME}
                ${CMAKE_CURRENT_LIST_DIR}/terminal.c
                ${CMAKE_CURRENT_LIST_DIR}/echo/echo.c
)

