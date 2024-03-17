cmake_minimum_required(VERSION 3.27)
project(SDL)

set(CMAKE_CXX_STANDARD 17)

include(cmake/test.cmake)

add_executable(SDL main.cpp)

target_link_libraries(SDL PGE_SDLMixerX PGE_SDLMixerX_static)
#include_directories("${CMAKE_BINARY_DIR}/external/SDLMixerX/src/SDLMixerX_Local-build/include/")
message(STATUS "SDLMixerX_SOURCE_DIR: ${SDLMixerX_SOURCE_DIR}")
