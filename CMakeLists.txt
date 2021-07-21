cmake_minimum_required(VERSION 3.14...3.21)

project(L-BFGS-B LANGUAGES Fortran)

add_library(lbfgsb)

add_subdirectory(src)

foreach(i RANGE 1 3)
  add_executable(lbfgsb${i}.bin examples/driver${i}.f)
  target_link_libraries(lbfgsb${i}.bin PRIVATE lbfgsb)
endforeach()
