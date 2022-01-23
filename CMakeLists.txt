cmake_minimum_required(VERSION 3.14.5)

project(seal)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_CURRENT_BINARY_DIR})

include(extern/seal.cmake)
include(extern/pybind11.cmake)
include(src/pseal.cmake)