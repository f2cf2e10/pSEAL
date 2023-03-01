cmake_minimum_required(VERSION 3.14.5)
include(FetchContent)

set(BUILD_SHARED_LIBS ON)
set(SEAL_USE_CXX17 ON)
set(SEAL_BUILD_DEPS ON)
set(SEAL_USE_MSGSL ON)
set(SEAL_USE_INTEL_HEXL OFF)
set(SEAL_USE_GAUSSIAN_NOISE	ON)
set(CMAKE_BUILD_TYPE Release) 

FetchContent_Declare(
  seal 
  GIT_REPOSITORY https://github.com/b3rt01ac3/SEAL/
  GIT_TAG        origin/v4.1.1a
)

FetchContent_GetProperties(pybind11) 

if(NOT seal_POPULATED)
  FetchContent_Populate(seal)
  message(STATUS "======> Catch source dir: ${seal_SOURCE_DIR}")
  message(STATUS "======> Catch binary dir: ${seal_BINARY_DIR}")
  add_subdirectory(${seal_SOURCE_DIR} ${seal_BINARY_DIR}) 
endif()

include_directories(${seal_SOURCE_DIR}/native/src)
include_directories(${seal_SOURCE_DIR}/thirdparty/msgsl-src/include/)
include_directories(${seal_SOURCE_DIR}/thirdparty/hexl-src/hexl/include/)
include_directories(${seal_BINARY_DIR}/native/src)