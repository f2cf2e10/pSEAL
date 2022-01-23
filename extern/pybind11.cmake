cmake_minimum_required(VERSION 3.14.5)
include(FetchContent)

FetchContent_Declare(
  pybind11 
  GIT_REPOSITORY https://github.com/pybind/pybind11
  GIT_TAG        9ec1128c7aac3d069a4ec2bd1dfc7f57c6526d1c
)

FetchContent_GetProperties(pybind11) 

if(NOT pybind11_POPULATED)
  FetchContent_Populate(pybind11)
  message(STATUS "======> Catch source dir: ${pybind11_SOURCE_DIR}")
  message(STATUS "======> Catch binary dir: ${pybind11_BINARY_DIR}")
  add_subdirectory(${pybind11_SOURCE_DIR} ${pybind11_BINARY_DIR}) 
endif()

include_directories(${pybind11_SOURCE_DIR}/include)
