cmake_minimum_required(VERSION 3.14.5)
set(SRC_BASEDIR src)

pybind11_add_module(pseal SHARED ${SRC_BASEDIR}/wrapper.cpp)

#add_library(pseal SHARED wrapper.cpp)
link_directories(${seal_BINARY_DIR}/lib/seal)
target_link_libraries(pseal PUBLIC seal_shared)
#include_directories(${seal_SOURCE_DIR}/native/src)
