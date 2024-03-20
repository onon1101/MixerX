cmake_minimum_required(VERSION 3.26)

project(MixerX)

# find_package(SDL2 REQUIRED)
# include(cmake/install_SDL_MixerX.cmake)
# include(cmake/install_SDL2.cmake)
include(cmake/install_SDL2_test.cmake)

#add_executable(MixerX main.cc)
 add_executable(MixerX app.cc)

set(DEP_PATH ${CMAKE_CURRENT_BINARY_DIR}/output/lib/)
#target_link_libraries(MixerX ${DEP_PATH}/libSDL2main.a ${DEP_PATH}/libSDL2.dylib ${DEP_PATH}/libSDL2_mixer_ext.a)
target_include_directories(MixerX PUBLIC ${CMAKE_CURRENT_BINARY_DIR}/output/include)
