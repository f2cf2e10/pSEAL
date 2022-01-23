cmake_minimum_required(VERSION 3.14.5)
set(SRC_BASEDIR src)

pybind11_add_module(seal SHARED ${SRC_BASEDIR}/wrapper.cpp)

link_directories(${seal_BINARY_DIR}/lib/seal)
target_link_libraries(seal PUBLIC seal_shared)
