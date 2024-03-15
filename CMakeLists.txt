cmake_minimum_required(VERSION 3.26)
project(test_mixer)

add_subdirectory(MixerX)

set(CMAKE_CXX_STANDARD 17)

add_executable(test_mixer main.cpp)

#target_include_directories(test_mixer "MixerX/include")
target_link_libraries(test_mixer SDL2_mixer_ext_Static)
message(STATUS "ok")

#target_link_libraries(test_mixer )
