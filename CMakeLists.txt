cmake_minimum_required(VERSION 3.26)

project(MixerX)

# find_package(SDL2 REQUIRED)
include(cmake/install_SDL_MixerX.cmake)
include(cmake/install_SDL2.cmake)

add_executable(MixerX main.cc)

set(DEP_PATH ${CMAKE_CURRENT_BINARY_DIR}/output/lib/)
target_link_libraries(MixerX ${DEP_PATH}/libSDL2_mixer_ext.a ${DEP_PATH}/libSDL2main.a)
target_include_directories(MixerX PUBLIC ${CMAKE_CURRENT_BINARY_DIR}/output/include)
