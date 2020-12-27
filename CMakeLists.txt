cmake_minimum_required(VERSION 3.17)
project(comp_sys_prog_pers C)

set(CMAKE_C_STANDARD 11)

add_executable(byte_rep ch_2/byte_rep.c)
add_executable(pp_2_5 ch_2/pp_2_5.c)
add_executable(pp_2_7 ch_2/pp_2_7.c)
add_executable(pp_2_10 ch_2/pp_2_10.c)
add_executable(pp_2_11_bug ch_2/utils.h ch_2/utils.c ch_2/pp_2_11_bug.c)
add_executable(pp_2_11_fix ch_2/utils.h ch_2/utils.c ch_2/pp_2_11_fix.c)
