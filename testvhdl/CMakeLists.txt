cmake_minimum_required(VERSION 3.10)
project(test)

find_program(GHDL_EXECUTABLE ghdl)

if(NOT GHDL_EXECUTABLE)
    message(FATAL_ERROR "GHDL program is missing")
endif()

file(GLOB_RECURSE SRC "src/*.vhd")
file(GLOB_RECURSE TBS "tests/*.vhd")

set(GHDL_FLAGS "--std=08")

set(analyze_commands)

foreach(VHD IN LISTS SRC)
    list(APPEND analyze_commands ${GHDL_EXECUTABLE} -a ${GHDL_FLAGS} ${VHD})
endforeach()

add_custom_target(
    analyze
    COMMAND ${analyze_commands}
    COMMENT "Analyzing VHDL files with GHDL"
)
