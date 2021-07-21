cmake_minimum_required(VERSION 3.14...3.21)

project(L-BFGS-B LANGUAGES Fortran)

enable_testing()


add_library(lbfgsb)

add_subdirectory(src)

foreach(i RANGE 1 3)
  add_executable(lbfgsb${i}.bin examples/driver${i}.f)
  target_link_libraries(lbfgsb${i}.bin PRIVATE lbfgsb)
endforeach()

add_test(NAME Example1 COMMAND $<TARGET_FILE:lbfgsb1.bin>)
set_tests_properties(Example1 PROPERTIES
PASS_REGULAR_EXPRESSION "25   23   27     48     0     0   1.434D-04   7.799D-10")
